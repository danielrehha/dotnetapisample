using System;
using AllbertBackend.Domain.Algorithms;
using AllbertBackend.Domain.Common;
using Xunit;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.Domain.UnitTests.Algorithms
{
    public class GeoCalculatorTests
    {
        [Fact]
        public void ShouldReturnCorrectDistanceInMeters()
        {
            //arrange
            var point1 = new GeoLocation(47.4986105, 19.1128258);
            var point2 = new GeoLocation(47.4790912, 19.0882065);
            double correctDistanceInMeters = 2740;

            //act
            var result = GeoCalculator.CalculateDistance(point1, point2);

            //assert
            Assert.Equal(Math.Ceiling(correctDistanceInMeters / 1000), Math.Ceiling(result / 1000));
        }
    }
}
