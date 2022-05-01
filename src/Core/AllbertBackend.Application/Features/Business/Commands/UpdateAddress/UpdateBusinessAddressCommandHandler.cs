using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Geocoding;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Exceptions;
using AllbertBackend.Application.ViewModels.Business;
using AutoMapper;
using MediatR;

namespace AllbertBackend.Application.Features.Business.Commands.UpdateAddress
{
    public class UpdateBusinessAddressCommandHandler : IRequestHandler<UpdateBusinessAddressCommand, UpdateBusinessAddressCommandResponse>
    {
        private readonly IBusinessRepository _repository;
        private readonly IMapper _mapper;
        private readonly IGeocodeService _geocodeService;

        public UpdateBusinessAddressCommandHandler(IMapper mapper, IBusinessRepository repository, IGeocodeService geocodeService)
        {
            _mapper = mapper;
            _repository = repository;
            _geocodeService = geocodeService;
        }

        public async Task<UpdateBusinessAddressCommandResponse> Handle(UpdateBusinessAddressCommand request, CancellationToken cancellationToken)
        {
            var response = new UpdateBusinessAddressCommandResponse();
            
            try
            {
                var geoData = await _geocodeService.GetCoordinatesByAddressAsync(request.Address.CountryName, request.Address.CityName,
                    request.Address.ZipCode, request.Address.StreetName + " " + request.Address.StreetType, request.Address.StreetNumber);
                request.Address.LocationLat = geoData.Results[0]["geometry"]["location"]["lat"];
                request.Address.LocationLong = geoData.Results[0]["geometry"]["location"]["lng"];
            }
            catch (GeocodingException e)
            {
                response.Success = false;
                response.ErrorMessage = e.Message;
                return response;
            }

            try
            {
                var result = await _repository.UpdateBusinessAddressAsync(request.BusinessId, request.Address);
                response.Address = _mapper.Map<BusinessAddressVm>(result);
            }
            catch (Exception e)
            {
                response.HadErrors = true;
                response.Success = false;
                response.ErrorMessage = e.Message;
            }

            return response;
        }
    }
}