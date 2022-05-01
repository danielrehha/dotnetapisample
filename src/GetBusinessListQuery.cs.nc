using AllbertBackend.Application.Features.Business.ViewModels;
using MediatR;
using System.Collections.Generic;
namespace AllbertBackend.Application.Features.Business.Queries
{
    public class GetBusinessListQuery : IRequest<IReadOnlyList<BusinessVm>>
    {
    }
}
