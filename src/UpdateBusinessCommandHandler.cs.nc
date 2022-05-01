using AllbertBackend.Application.Contracts.Geocoding;
using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Exceptions;
using AllbertBackend.Domain.Entities;
using AutoMapper;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.UpdateBusiness
{
    public class UpdateBusinessCommandHandler : IRequestHandler<UpdateBusinessCommand, UpdateBusinessCommandResponse>
    {
        private readonly IBusinessRepository _repository;
        private readonly IMapper _mapper;
        private readonly IGeocodeService _geocodeService;
        public UpdateBusinessCommandHandler(IBusinessRepository repository, IMapper mapper, IGeocodeService geocodeService)
        {
            _repository = repository;
            _mapper = mapper;
            _geocodeService = geocodeService;
        }
        public async Task<UpdateBusinessCommandResponse> Handle(UpdateBusinessCommand request, CancellationToken cancellationToken)
        {
            var response = new UpdateBusinessCommandResponse();
            var validator = new UpdateBusinessCommandValidator(_repository);
            var validationResult = await validator.ValidateAsync(request, cancellationToken);
            validationResult.Resolve(ref response);
            if(!response.Success)
            {
                return response;
            }
            try
            {
                var geoData = await _geocodeService.GetCoordinatesByAddressAsync(request.BusinessInfo.Country, request.BusinessInfo.City,
                    request.BusinessInfo.Zip, request.BusinessInfo.StreetName + " " + request.BusinessInfo.StreetType, request.BusinessInfo.StreetNumber);
                request.BusinessInfo.LocationLat = geoData.Results[0]["geometry"]["location"]["lat"];
                request.BusinessInfo.LocationLong = geoData.Results[0]["geometry"]["location"]["lng"];
            }
            catch (GeocodingException e)
            {
                response.Success = false;
                response.ErrorMessage = e.Message;
                return response;
            }
            var result = await _repository.UpdateInfoAsync(request.BusinessInfo);
            response.BusinessInfo = _mapper.Map<BusinessInfoVm>(result);
            return response;
        }
    }
}
