using AllbertBackend.IntegrationTests.Core;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Entities.Shared;

namespace AllbertBackend.IntegrationTests.DataManager
{
    public static class TestDataManager
    {
        public static IConfiguration Configuration { get; set; }

        //Business data
        public static string BusinessId => Configuration.GetSection("business").GetValue<string>("id");

        public static string BusinessFirebaseUid =>
            Configuration.GetSection("business").GetValue<string>("firebaseUid");

        public static Business Business => Configuration.GetSection("business").GetSection("base").Get<Business>();

        public static BusinessDetails BusinessDetailsCreate => Configuration.GetSection("business")
            .GetSection("details_create").Get<BusinessDetails>();

        public static BusinessDetails BusinessDetailsEdit =>
            Configuration.GetSection("business").GetSection("details_edit").Get<BusinessDetails>();

        public static BusinessAddress BusinessAddressCreate => Configuration.GetSection("business")
            .GetSection("address_create").Get<BusinessAddress>();

        public static BusinessAddress BusinessAddressEdit =>
            Configuration.GetSection("business").GetSection("address_edit").Get<BusinessAddress>();

        public static BusinessContact BusinessContactCreate => Configuration.GetSection("business")
            .GetSection("contact_create").Get<BusinessContact>();

        public static BusinessContact BusinessContactEdit =>
            Configuration.GetSection("business").GetSection("contact_edit").Get<BusinessContact>();

        public static SubscriptionInfo SubscriptionInfo => Configuration.GetSection("business")
            .GetSection("subscription_info").Get<SubscriptionInfo>();

        //Employee data
        public static string FirstEmployeeId =>
            Configuration.GetSection("employees").GetSection("employee_1").GetValue<string>("id");

        public static string FirstEmployeeIncorrectId => Configuration.GetSection("employees").GetSection("employee_1")
            .GetValue<string>("incorrectId");

        public static Employee Employee => Configuration.GetSection("employees").GetSection("employee_1")
            .GetSection("base").Get<Employee>();

        public static EmployeeInfo FirstEmployeeInfoCreate => Configuration.GetSection("employees")
            .GetSection("employee_1").GetSection("info_create").Get<EmployeeInfo>();

        public static EmployeeInfo FirstEmployeeInfoEdit => Configuration.GetSection("employees")
            .GetSection("employee_1").GetSection("info_edit").Get<EmployeeInfo>();

        public static EmployeeInfo FirstEmployeeInfoWithOneService => Configuration.GetSection("employees")
            .GetSection("employee_1").GetSection("info_edit_with_one_service").Get<EmployeeInfo>();

        public static EmployeeInfo FirstEmployeeInfoWithTwoService => Configuration.GetSection("employees")
            .GetSection("employee_1").GetSection("info_edit_with_two_service").Get<EmployeeInfo>();

        //Service data
        public static string FirstServiceId => Configuration.GetSection("services").GetValue<string>("service_1_id");

        public static string FirstServiceIncorrectId =>
            Configuration.GetSection("services").GetValue<string>("service_1_incorrect_id");

        public static Service FirstServiceCreate =>
            Configuration.GetSection("services").GetSection("service_1").Get<Service>();

        public static Service FirstServiceEdit =>
            Configuration.GetSection("services").GetSection("service_1_edit").Get<Service>();

        public static Service FirstServiceIncorrectBusinessId => Configuration.GetSection("services")
            .GetSection("service_1_with_incorrect_business_id").Get<Service>();

        public static string SecondServiceId => Configuration.GetSection("services").GetValue<string>("service_2_id");

        public static string SecondServiceIncorrectId =>
            Configuration.GetSection("services").GetValue<string>("service_2_incorrect_id");

        public static Service SecondServiceCreate =>
            Configuration.GetSection("services").GetSection("service_2").Get<Service>();

        public static Service SecondServiceEdit =>
            Configuration.GetSection("services").GetSection("service_2_edit").Get<Service>();

        public static Service SecondServiceIncorrectBusinessId => Configuration.GetSection("services")
            .GetSection("service_2_with_incorrect_business_id").Get<Service>();

        //Appointment
        public static Appointment FirstEmployeeActiveAppointment => Configuration.GetSection("employees")
            .GetSection("employee_1").GetSection("active_appointment").Get<Appointment>();

        //Customer
        public static string CustomerFirebaseUid =>
            Configuration.GetSection("customer").GetValue<string>("firebaseUid");

        public static string CustomerId => Configuration.GetSection("customer").GetValue<string>("id");

        public static string CustomerIncorrectId =>
            Configuration.GetSection("customer").GetValue<string>("incorrectId");

        public static Customer Customer => Configuration.GetSection("customer").GetSection("base").Get<Customer>();

        public static CustomerInfo CustomerInfoCreate =>
            Configuration.GetSection("customer").GetSection("info_create").Get<CustomerInfo>();

        public static CustomerInfo CustomerInfoEdit =>
            Configuration.GetSection("customer").GetSection("info_edit").Get<CustomerInfo>();

        //Employee work days
        public static WorkDay FirstWorkDayNoPause => Configuration.GetSection("employees").GetSection("employee_1")
            .GetSection("schedule").GetSection("workday_1_no_pause").Get<WorkDay>();

        public static WorkDay FirstWorkDayWithPause => Configuration.GetSection("employees").GetSection("employee_1")
            .GetSection("schedule").GetSection("workday_1_with_pause").Get<WorkDay>();

        public static WorkDay SecondWorkDayNoPause => Configuration.GetSection("employees").GetSection("employee_1")
            .GetSection("schedule").GetSection("workday_2_no_pause").Get<WorkDay>();

        public static WorkDay SecondWorkDayWithPause => Configuration.GetSection("employees").GetSection("employee_1")
            .GetSection("schedule").GetSection("workday_2_with_pause").Get<WorkDay>();

        //AWS
        public static string AWSBucketName =>
            Configuration.GetSection("AWS").GetSection("Buckets").GetValue<string>("PublicBucket");
    }
}