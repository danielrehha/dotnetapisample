using AutoMapper;
using MediatR;
using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Contracts.Persistence.Customer;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using AllbertBackend.Contracts.AWS;
using AllbertBackend.Domain.Enums;
using Amazon.S3;

namespace AllbertBackend.Application.Features.Global.Commands.DeleteImageCommand
{
    public class DeleteImageCommandHandler : IRequestHandler<DeleteImageCommand, DeleteImageCommandResponse>
    {
        private readonly IBusinessRepository _businessRepository;
        private readonly IEmployeeRepository _employeeRepository;
        private readonly ICustomerRepository _customerRepository;
        private readonly IAWSS3Service _iawss3Service;
        private readonly IAWSS3Manager _iawss3Manager;
        private readonly IMapper _mapper;

        public DeleteImageCommandHandler(IBusinessRepository businessRepository, IEmployeeRepository employeeRepository,
            ICustomerRepository customerRepository, IAWSS3Service iawss3Service, IMapper mapper,
            IAWSS3Manager iawss3Manager)
        {
            _businessRepository = businessRepository;
            _employeeRepository = employeeRepository;
            _customerRepository = customerRepository;
            _iawss3Service = iawss3Service;
            _mapper = mapper;
            _iawss3Manager = iawss3Manager;
        }

        public async Task<DeleteImageCommandResponse> Handle(DeleteImageCommand request,
            CancellationToken cancellationToken)
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
                using (var client = _iawss3Manager.GetOptions().CreateServiceClient<IAmazonS3>())
                {
                    await _iawss3Service.DeletePublicImageAsync(fileUrl,client, _iawss3Manager);
                }
            }
            catch (AmazonS3Exception e)
            {
                response.HadErrors = true;
                response.ErrorMessage = e.Message;
                Console.WriteLine("Error encountered on server. Message:'{0}' when deleting an object", e.Message);
            }
            catch (Exception e)
            {
                response.HadErrors = true;
                response.ErrorMessage = e.Message;
                Console.WriteLine("Unknown error encountered on server. Message:'{0}' when deleting an object", e.Message);
            }

            return response;
        }
    }
}