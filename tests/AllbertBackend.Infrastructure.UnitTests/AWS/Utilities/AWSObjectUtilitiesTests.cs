using AllbertBackend.Infrastructure.AWS.Utilities;
using Xunit;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.Infrastructure.UnitTests.AWS.Utilities
{
    public class AWSObjectUtilitiesTests
    {
        [Fact]
        public void Should_GetObjectKeyFromUrl()
        {
            var url = "https://allbert-test-bucket.s3.eu-central-1.amazonaws.com/images/avatarimages/9d22fad6-b3a8-4b10-9cbf-b3fa85db79ec.jpg";
            var expected = "images/avatarimages/9d22fad6-b3a8-4b10-9cbf-b3fa85db79ec.jpg";

            var objectKey = AWSObjectUtilities.ExtractObjectKeyFromUrl(url);

            Assert.Equal(expected, objectKey);
        }
    }
}
