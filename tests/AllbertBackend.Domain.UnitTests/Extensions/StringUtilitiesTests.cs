using AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.Domain.Extensions;
using Xunit;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.Domain.UnitTests.Extensions
{
    public class StringUtilitiesTests
    {
        [Fact]
        public void RemoveAccentsShouldRemoveAccents()
        {
            //arrange
            string input = "héllo";
            string expected = "hello";

            //act
            var result = StringUtilities.RemoveAccents(input);

            //assert
            Assert.Equal(expected, result);
        }
    }
}
