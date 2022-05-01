using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.CreateBusiness
{
    public class CreateBusinessCommandValidator : AbstractValidator<CreateBusinessCommand>
    {
        private readonly IBusinessRepository _repository;
        public CreateBusinessCommandValidator(IBusinessRepository repository)
        {
            _repository = repository;
            RuleFor(p => p).MustAsync(DoesBusinessExist).WithMessage("A business with the specified FirebaseUID or GUID already exists.");
            RuleFor(p => p.FirebaseUid).MinimumLength(5).WithMessage("Firebase Uid length must be at least 12 characters.");
        }
        private async Task<bool> DoesBusinessExist(CreateBusinessCommand e, CancellationToken token)
        {
            var result = !await _repository.DoesBusinessExistByFirebaseUidAsync(e.FirebaseUid);
            result = !await _repository.DoesExistAsync(e.BusinessInfo.BusinessId);
            return result;
        }
    }
}
