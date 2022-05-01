using AllbertBackend.Application.Features;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessCustomerList;
using AllbertBackend.Application.Features.Business.Queries.GetEmployeeScheduleList;
using AllbertBackend.Application.Features.Business.Queries.GetSchedule.ViewModels;
using AllbertBackend.Application.Features.Business.ViewModels;
using AllbertBackend.Application.Features.Customer.ViewModels;
using AllbertBackend.Application.Features.Employee.Queries.EmployeeSchedule;
using AllbertBackend.Application.Features.Employee.ViewModels;
using AllbertBackend.Application.Helpers;
using AllbertBackend.Application.ViewModels;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Entities.Shared;
using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AllbertBackend.Application.Features.Business.Commands.UpdateSettings;
namespace AllbertBackend.Application.Profiles
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<Business, BusinessVm>().ReverseMap();
            CreateMap<BusinessSettings, BusinessSettingsVm>().ReverseMap();
            CreateMap<Business, CustomerBusinessVm>().ReverseMap();
            CreateMap<BusinessInfo, BusinessInfoVm>().ReverseMap();
            CreateMap<Subscription, SubscriptionVm>().ReverseMap();
            CreateMap<SubscriptionInfo, SubscriptionInfoVm>().ReverseMap();
            CreateMap<BusinessAvatarImage, BusinessAvatarImageVm>().ReverseMap();
            CreateMap<BusinessPortfolioImage, BusinessPortfolioImageVm>().ReverseMap();
            CreateMap<BusinessAvatarImage, ApplicationImageVm>().ReverseMap();
            CreateMap<BusinessPortfolioImage, ApplicationImageVm>().ReverseMap();
            CreateMap<Service, ServiceVm>().ReverseMap();
            CreateMap<WorkDay, WorkDayVm>().ReverseMap();
            CreateMap<WorkPause, WorkPauseVm>().ReverseMap();
            CreateMap<Employee, EmployeeVm>().ReverseMap();
            CreateMap<Employee, EmployeeWithScheduleVm>().ReverseMap();
            CreateMap<Employee, CustomerEmployeeVm>().ReverseMap();
            CreateMap<Employee, CalendarEmployeeVm>().ReverseMap();
            CreateMap<EmployeeInfo, EmployeeInfoVm>().ReverseMap();
            CreateMap<EmployeeInfo, CustomerEmployeeInfoVm>().ReverseMap();
            CreateMap<EmployeeService, EmployeeServiceVm>().ReverseMap();
            CreateMap<EmployeeAvatarImage, ApplicationImageVm>().ReverseMap();
            CreateMap<EmployeePortfolioImage, ApplicationImageVm>().ReverseMap();
            CreateMap<LocationData, LocationDataVm>().ReverseMap();
            CreateMap<EmployeeScheduleSettings, EmployeeScheduleSettingsVm>().ReverseMap();
            CreateMap<Rating, RatingVm>().ReverseMap();
            CreateMap<Customer, CustomerVm>().ReverseMap();
            CreateMap<Customer, CustomerDetailsVm>().ReverseMap();
            CreateMap<Customer, BusinessCustomerListVm>().ReverseMap();
            CreateMap<CustomerListView, CustomerListViewVm>().ReverseMap();
            CreateMap<CustomerInfo, CustomerInfoVm>().ReverseMap();
            CreateMap<CustomerAvatarImage, ApplicationImageVm>().ReverseMap();
            CreateMap<CustomerBusinessFavorite, CustomerFavoriteVm>().ReverseMap();
            CreateMap<CustomerBusinessFavoriteVm, CustomerFavoriteVm>().ReverseMap();
            CreateMap<CustomerBusinessFavorite, CustomerBusinessFavoriteVm>().ReverseMap();
            CreateMap<CustomerEmployeeFavorite, CustomerFavoriteVm>().ReverseMap();
            CreateMap<CustomerEmployeeFavoriteVm, CustomerFavoriteVm>().ReverseMap();
            CreateMap<CustomerEmployeeFavorite, CustomerEmployeeFavoriteVm>().ReverseMap();
            CreateMap<AvailableTimeslot, AvailableTimeslotVm>().ReverseMap();
            CreateMap<Appointment, AppointmentVm>().ReverseMap();
            CreateMap<PagedList<Appointment>, PagedList<AppointmentVm>>().ReverseMap();
            CreateMap<List<Appointment>, PagedList<Appointment>>().ReverseMap();
            CreateMap<PagedList<Customer>, PagedList<BusinessCustomerListVm>>().ReverseMap();
            CreateMap<PagedList<CustomerListView>, PagedList<CustomerListViewVm>>().ReverseMap();
            CreateMap<Appointment, CustomerAppointmentVm>().ReverseMap();
            CreateMap<EmployeeSchedule, EmployeeScheduleVm>().ReverseMap();
        }
    }
}
