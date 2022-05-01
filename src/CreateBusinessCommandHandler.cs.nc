using AllbertBackend.Application.Contracts.Geocoding;
using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Exceptions;
using AllbertBackend.Application.Features.Business.ViewModels;
using AllbertBackend.Domain.Entities;
using AutoMapper;
using MediatR;
using System;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.CreateBusiness
{
    public class CreateBusinessCommandHandler : IRequestHandler<CreateBusinessCommand, CreateBusinessCommandResponse>
    {
        private readonly IBusinessRepository _repository;
        private readonly IMapper _mapper;
        private readonly IGeocodeService _geocodeService;
        public CreateBusinessCommandHandler(IBusinessRepository repository, IMapper mapper, IGeocodeService geocodeService)
        {
            _repository = repository;
            _mapper = mapper;
            _geocodeService = geocodeService;
        }
        public async Task<CreateBusinessCommandResponse> Handle(CreateBusinessCommand request, CancellationToken cancellationToken)
        {
            var response = new CreateBusinessCommandResponse();
            var validator = new CreateBusinessCommandValidator(_repository);
            var validationResult = validator.Validate(request);
            validationResult.Resolve(ref response);
            if (!response.Success)
            {
                return response;
            }
            try
            {
                var geoData = await _geocodeService.GetCoordinatesByAddressAsync(request.BusinessInfo.Country, request.BusinessInfo.City,
                    request.BusinessInfo.Zip, request.BusinessInfo.StreetName + " " + request.BusinessInfo.StreetType, request.BusinessInfo.StreetNumber);
                request.BusinessInfo.LocationLat = geoData.Results[0]["geometry"]["location"]["lat"];
                request.BusinessInfo.LocationLong = geoData.Results[0]["geometry"]["location"]["lng"];
            } catch (GeocodingException e)
            {
                response.Success = false;
                response.ErrorMessage = e.Message;
                return response;
            }
            var result = await _repository.CreateBusinessAsync(request.FirebaseUid, request.BusinessInfo);
            response.Business = _mapper.Map<BusinessVm>(result);
            return response;
        }
    }
}
