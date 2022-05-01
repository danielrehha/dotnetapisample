using AllbertBackend.Domain.Common;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.Application.Exceptions
{
    public class ItemNotFoundException : BaseException
    {
        public string Name { get; }
        public override string Message { get; }
        public ItemNotFoundException(string name) : base(name)
        {
            Name = name;
            Message = $"The specified {Name} could not be found";
        }
    }
}
