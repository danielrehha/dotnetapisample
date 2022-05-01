using AutoMapper;
using MediatR;
using System;
using System.IO;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Contracts.Persistence.Customer;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using AllbertBackend.Application.ViewModels;
using AllbertBackend.Contracts.AWS;
using AllbertBackend.Domain.Common;
using AllbertBackend.Domain.Enums;

namespace AllbertBackend.Application.Features.Global.Commands.UploadImageCommand
{
    public class UploadImageCommandHandler : IRequestHandler<UploadImageCommand, UploadImageCommandResponse>
    {
        private readonly IBusinessRepository _businessRepository;
        private readonly IEmployeeRepository _employeeRepository;
        private readonly ICustomerRepository _customerRepository;
        private readonly IAWSS3Service _iawss3Service;
        private readonly IMapper _mapper;

        public UploadImageCommandHandler(IBusinessRepository businessRepository, IEmployeeRepository employeeRepository, ICustomerRepository customerRepository, IAWSS3Service iawss3Service, IMapper mapper)
        {
            _businessRepository = businessRepository;
            _employeeRepository = employeeRepository;
            _customerRepository = customerRepository;
            _iawss3Service = iawss3Service;
            _mapper = mapper;
        }

        public async Task<UploadImageCommandResponse> Handle(UploadImageCommand request, CancellationToken cancellationToken)
        {
            var response = new UploadImageCommandResponse();

            var folder = StaticNamingContext.AWSPortfolioImagesFolderPrefix;
            var fileId = Guid.NewGuid();
            
            if (request.ImageType == ImageType.Avatar)
            {
                folder = StaticNamingContext.AWSAvatarImagesFolderPrefix;
            }

            string fileUrl;

            try
            {
                fileUrl = await _iawss3Service.UploadPublicImageAsync(request.File, folder, $"{fileId}{Path.GetExtension(request.File.FileName)}");
            }
            catch (Exception e)
            {
                response.Success = false;
                response.HadErrors = true;
                response.ErrorMessage = e.Message;
                return response;
            }

            if (fileUrl == null)
            {
                response.Success = false;
                response.HadErrors = true;
                response.ErrorMessage = "Unknown error while getting file URL.";
                return response;
            }

            dynamic result = null;

            if(request.EntityType == EntityType.Business)
            {
                if(request.ImageType == ImageType.Avatar)
                {
                    result = await _businessRepository.UploadAvatarImageAsync(request.EntityId, fileId, fileUrl);
                } else
                {
                    result = await _businessRepository.UploadPortfolioImageAsync(request.EntityId, fileId, fileUrl);
                }
            }
            if(request.EntityType == EntityType.Employee)
            {
                if (request.ImageType == ImageType.Avatar)
                {
                    result = await _employeeRepository.UploadAvatarImageAsync(request.EntityId, fileId, fileUrl);
                }
                else
                {
                    result = await _employeeRepository.UploadPortfolioImageAsync(request.EntityId, fileId, fileUrl);
                }
            }
            if(request.EntityType == EntityType.Customer)
            {

            }

            if(result == null)
            {
                response.Success = false;
                response.HadErrors = true;
                response.ErrorMessage = "Entity return null from repository.";
                return response;
            }

            response.Image = _mapper.Map<ApplicationImageVm>(result);

            return response;
        }
    }
}
