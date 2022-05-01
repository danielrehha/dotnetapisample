using AllbertBackend.Application.Contracts.AWS;
using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Domain.Enums;
using AutoMapper;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Global.Commands.DeleteImage
{
    public class DeleteImageCommandHandler : IRequestHandler<DeleteImageCommand, DeleteImageCommandResponse>
    {
        private readonly IBusinessRepository _businessRepository;
        private readonly IEmployeeRepository _employeeRepository;
        private readonly ICustomerRepository _customerRepository;
        private readonly IAWSService _awsService;
        private readonly IMapper _mapper;
        public DeleteImageCommandHandler(IBusinessRepository businessRepository, IEmployeeRepository employeeRepository, ICustomerRepository customerRepository, IAWSService awsService, IMapper mapper)
        {
            _businessRepository = businessRepository;
            _employeeRepository = employeeRepository;
            _customerRepository = customerRepository;
            _awsService = awsService;
            _mapper = mapper;
        }
        public async Task<DeleteImageCommandResponse> Handle(DeleteImageCommand request, CancellationToken cancellationToken)
        {
            var response = new DeleteImageCommandResponse();
            string fileUrl = "";
            if (request.EntityType == EntityType.Business)
            {
                if (request.ImageType == ImageType.Avatar)
                {
                    fileUrl = await _businessRepository.DeleteAvatarImageAsync(request.EntityId);
                }
                else
                {
                    fileUrl = await _businessRepository.DeletePortfolioImageAsync(request.FileId);
                }
            }
            if (request.EntityType == EntityType.Employee)
            {
                if (request.ImageType == ImageType.Avatar)
                {
                    fileUrl = await _employeeRepository.DeleteAvatarImageAsync(request.EntityId);
                }
                else
                {
                    fileUrl = await _employeeRepository.DeletePortfolioImageAsync(request.FileId);
                }
            }
            if (request.EntityType == EntityType.Customer)
            {
                if (request.ImageType == ImageType.Avatar)
                {
                }
                else
                {
                }
            }
            if (fileUrl == null || fileUrl.Length < 1)
            {
                response.HadErrors = true;
                response.Success = false;
                response.ErrorMessage = "Couldn't retrieve file URL";
                return response;
            }
            try
            {
                await _awsService.DeletePublicImageAsync(fileUrl);
            }
            catch (Exception e)
            {
                response.HadErrors = true;
                response.ErrorMessage = e.Message;
            }
            return response;
        }
    }
}
