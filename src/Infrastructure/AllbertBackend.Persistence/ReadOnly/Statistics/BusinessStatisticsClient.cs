using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.ReadOnly.Statistics;
using AllbertBackend.Application.Features.Statistics.Business.AppointmentCountStatistics;
using AllbertBackend.Infrastructure.Persistence;
using AutoMapper;
using Microsoft.EntityFrameworkCore;

namespace AllbertBackend.Persistence.Repositories.Statistics
{
    public class BusinessStatisticsClient : IBusinessStatisticsClient
    {
        private readonly AllbertBackendDBContext _context;
        private readonly IMapper _mapper;

        public BusinessStatisticsClient(AllbertBackendDBContext dbContext, IMapper mapper)
        {
            _context = dbContext;

            _mapper = mapper;
        }

        public async Task<List<AppointmentCountStatisticsDto>> GetAppointmentCountStatisticsAsync(
            AppointmentCountStatisticsQueryParameters requestParameters)
        {
            var result = (await _context.Employees
                    .Where(e => e.BusinessId == requestParameters.BusinessId)
                    .Include(e => e.EmployeeInfo)
                    .Include(e => e.Appointments.Where(e => e.StartDate <= requestParameters.Until && e.StartDate >= requestParameters.From))
                    .ToListAsync())
                .GroupBy(e => e.Id)
                .SelectMany(e => e)
                .Select(e => new AppointmentCountStatisticsDto()
                {
                    EmployeeId = e.Id,
                    LastName = e.EmployeeInfo.LastName,
                    FirstName = e.EmployeeInfo.FirstName,
                    Statistics = e.Appointments
                        .OrderBy(e => e.StartDate)
                        .GroupBy(a =>
                            new  {a.StartDate.Year,  a.StartDate.Month, a.StartDate.Day })
                        .ToDictionary(a => new DateTime(a.Key.Year,a.Key.Month,a.Key.Day), a => a.Count())
                        .Select(e => new AppointmentCountDto() {Date = e.Key,AppointmentCount = e.Value}).ToList()
                })
                .ToList();

            if (requestParameters.EmployeeIds != null && requestParameters.EmployeeIds.Any())
            {
                result = result.Where(e => requestParameters.EmployeeIds.Contains(e.EmployeeId)).ToList();
            }

            return result;
        }
    }
}