using MediatR;
using System.Collections.Generic;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessListQuery
{
    public class GetBusinessListQuery : IRequest<IReadOnlyList<BusinessVm>>
    {
    }
}
