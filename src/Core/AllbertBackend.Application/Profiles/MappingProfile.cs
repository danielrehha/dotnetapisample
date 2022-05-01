using AutoMapper;
using System.Collections.Generic;
using AllbertBackend.Application.Features.Statistics.Business.AppointmentCountStatistics;
using AllbertBackend.Application.Helpers;
using AllbertBackend.Application.ViewModels;
using AllbertBackend.Application.ViewModels.Business;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Entities.Shared;

namespace AllbertBackend.Application.Profiles
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<Business, BusinessVm>().ReverseMap();
            CreateMap<BusinessDetails, BusinessDetailsVm>().ReverseMap();
            CreateMap<BusinessAddress, BusinessAddressVm>().ReverseMap();
            CreateMap<BusinessContact, BusinessContactVm>().ReverseMap();
            CreateMap<BusinessSettings, BusinessSettingsVm>().ReverseMap();
            CreateMap<Business, CustomerBusinessVm>().ReverseMap();
            CreateMap<Subscription, SubscriptionVm>().ReverseMap();
            CreateMap<SubscriptionInfo, SubscriptionInfoVm>().ReverseMap();
            CreateMap<BusinessAvatarImage, BusinessAvatarImageVm>().ReverseMap();
            CreateMap<BusinessPortfolioImage, BusinessPortfolioImageVm>().ReverseMap();
            CreateMap<BusinessAvatarImage, ApplicationImageVm>().ReverseMap();
            CreateMap<BusinessPortfolioImage, ApplicationImageVm>().ReverseMap();
            CreateMap<Service, ServiceVm>().ReverseMap();
            CreateMap<WorkDay, WorkDayVm>().ReverseMap();
            CreateMap<WorkPause, WorkPauseVm>().ReverseMap();
            CreateMap<EmployeeWorkBlock, EmployeeWorkBlockVm>().ReverseMap();

            CreateMap<Employee, EmployeeVm>().ReverseMap();
            CreateMap<Employee, EmployeeWithScheduleVm>().ReverseMap();
            CreateMap<Employee, CustomerEmployeeVm>().ReverseMap();
            CreateMap<Employee, CalendarEmployeeVm>().ReverseMap();
            CreateMap<Employee, StatisticsEmployeeVm>().ReverseMap();
            CreateMap<EmployeeInfo, EmployeeInfoVm>().ReverseMap();
            CreateMap<EmployeeInfo, CustomerEmployeeInfoVm>().ReverseMap();
            CreateMap<EmployeeService, EmployeeServiceVm>().ReverseMap();
            CreateMap<EmployeeAvatarImage, ApplicationImageVm>().ReverseMap();
            CreateMap<EmployeePortfolioImage, ApplicationImageVm>().ReverseMap();
            CreateMap<LocationData, LocationDataVm>().ReverseMap();
            CreateMap<EmployeeSettings, EmployeeSettingsVm>().ReverseMap();

            CreateMap<CustomerReview, CustomerReviewVm>().ReverseMap();
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

            CreateMap<Appointment, AppointmentVm>().ReverseMap();
            CreateMap<Appointment, StatisticsAppointmentVm>().ReverseMap();
            CreateMap<PagedList<Appointment>, PagedList<AppointmentVm>>().ReverseMap();
            CreateMap<List<Appointment>, PagedList<Appointment>>().ReverseMap();
            CreateMap<List<CustomerReview>, PagedList<CustomerReview>>();
            CreateMap<PagedList<CustomerReview>, PagedList<CustomerReviewVm>>();
            CreateMap<PagedList<Customer>, PagedList<BusinessCustomerListVm>>().ReverseMap();
            CreateMap<PagedList<CustomerListView>, PagedList<CustomerListViewVm>>().ReverseMap();
            CreateMap<Appointment, CustomerAppointmentVm>().ReverseMap();

            CreateMap<EmployeeSchedule, EmployeeScheduleVm>().ReverseMap();
        }
    }
}
