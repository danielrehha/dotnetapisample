using System;
using System.Collections.Generic;
using System.IO;
using AllbertBackend.IntegrationTests.DataManager;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Entities.Shared;
using AllbertBackend.IntegrationTests.Core;
using GoogleApi.Entities.Maps.Common;

namespace AllbertBackend.IntegrationTests.TestData.SqlQueries
{
    public static class SqlCommandManager
    {
        public static string ClearSchema()
        {
            return
                "DO $$ DECLARE r RECORD; BEGIN FOR r IN(SELECT tablename FROM pg_tables WHERE schemaname = current_schema()) LOOP EXECUTE 'DROP TABLE IF EXISTS ' || quote_ident(r.tablename) || ' CASCADE'; END LOOP; END $$; ";
        }

        public static string InsertSubscriptionCommand()
        {
            var command =
                @$"INSERT INTO ""Subscriptions"" ( ""Id"", ""Name"", ""MaxEmployees"", ""MaxDates"", ""MaxServices"", ""Cost"", ""CostCurrency"") VALUES ( 0, 'Team 1', 5, 20, 10, 9999, 'HUF' );";
            return command;
        }

        public static string InsertSubscriptionInfoCommand()
        {
            var businessId = TestContext.BusinessId ?? Guid.Parse(TestDataManager.BusinessId);
            var subscriptionInfo = new SubscriptionInfo()
            {
                BusinessId = businessId,
                SubscriptionId = 0,
                StartedOn = DateTime.UtcNow,
                EndsOn = DateTime.UtcNow.AddDays(30),
                IsTrial = false,
            };

            var command = SqlCommandBuilder.Insert(subscriptionInfo, "SubscriptionInfos");

            return command;
        }

        public static string InsertBusinessCommand(string firebaseId = null)
        {
            var businessId = TestContext.BusinessId ?? Guid.Parse(TestDataManager.BusinessId);
            var firebaseUid = firebaseId ?? TestDataManager.BusinessFirebaseUid;

            var business = new Business()
            {
                Id = businessId,
                FirebaseUid = firebaseUid,
                CreatedOn = DateTime.UtcNow,
                Enabled = true,
                Deleted = false,
            };

            var command = SqlCommandBuilder.Insert(business, "Businesses");

            return command;
        }

        public static string InsertBusinessDetailsCommand()
        {
            var details = TestDataManager.BusinessDetailsCreate;

            details.BusinessId = TestContext.BusinessId ?? details.BusinessId;

            var command = SqlCommandBuilder.Insert(details, "BusinessDetails");

            return command;
        }

        public static string InsertBusinessAddressCommand()
        {
            var address = TestDataManager.BusinessAddressCreate;
            
            address.BusinessId = TestContext.BusinessId ?? address.BusinessId;

            var command = SqlCommandBuilder.Insert(address, "BusinessAddresses");

            return command;
        }

        public static string InsertBusinessContactCommand()
        {
            var contact = TestDataManager.BusinessContactCreate;
            
            contact.BusinessId = TestContext.BusinessId ?? contact.BusinessId;

            var command = SqlCommandBuilder.Insert(contact, "BusinessContacts");

            return command;
        }

        public static string InsertEmployeeCommand(Guid id, bool deleted = false)
        {
            var businessId = TestContext.BusinessId ?? Guid.Parse(TestDataManager.BusinessId);

            var employee = new Employee() {Id = id, BusinessId = businessId,};
            employee.Deleted = deleted;

            var command = SqlCommandBuilder.Insert(employee, "Employees");

            return command;
        }

        public static string InsertEmployeeCommand(Employee employee)
        {
            var command = SqlCommandBuilder.Insert(employee, "Employees");

            return command;
        }

        public static string InsertEmployeeInfoCommand(Guid id)
        {
            var employeeInfo = TestDataManager.FirstEmployeeInfoCreate;
            employeeInfo.EmployeeId = id;

            var command = SqlCommandBuilder.Insert(employeeInfo, "EmployeeInfos");

            return command;
        }
        
        public static string InsertEmployeeInfoCommand(EmployeeInfo info)
        {
            var command = SqlCommandBuilder.Insert(info, "EmployeeInfos");

            return command;
        }

        public static string InsertEmployeeSettingsCommand(Guid id, int bookingFrequency = 30)
        {
            var settings = new EmployeeSettings()
            {
                EmployeeId = id,
                AllowedBookingFrequencyInMinutes = bookingFrequency,
                AllowedAppointmentDeletionDeadlineInHours = 1,
            };

            var command = SqlCommandBuilder.Insert(settings, "EmployeeSettings");

            return command;
        }
        
        public static string InsertEmployeeSettingsCommand(EmployeeSettings settings)
        {
            var command = SqlCommandBuilder.Insert(settings, "EmployeeSettings");

            return command;
        }

        public static string InsertServiceCommand(bool deleted = false)
        {
            var service = TestDataManager.FirstServiceCreate;
            service.Deleted = deleted;
            service.BusinessId = TestContext.BusinessId ?? service.BusinessId;

            var command = SqlCommandBuilder.Insert(service, "Services");

            return command;
        }

        public static string InsertServiceCommand(Service service)
        {
            var command = SqlCommandBuilder.Insert(service, "Services");

            return command;
        }

        public static string InsertCustomerCommand(Guid customerId)
        {
            var firebaseUid = TestDataManager.CustomerFirebaseUid;

            var customer = new Customer()
            {
                Id = customerId,
                FirebaseUid = firebaseUid,
            };

            var command = SqlCommandBuilder.Insert(customer, "Customers");

            return command;
        }
        
        public static string InsertCustomerCommand(Customer customer)
        {
            var command = SqlCommandBuilder.Insert(customer, "Customers");

            return command;
        }
        
        public static string InsertEmployeeServiceCommand(EmployeeService customer)
        {
            var command = SqlCommandBuilder.Insert(customer, "EmployeeServices");

            return command;
        }
        
        public static string InsertCustomerInfoCommand(CustomerInfo customerInfo)
        {
            var command = SqlCommandBuilder.Insert(customerInfo, "CustomerInfos");

            return command;
        }

        public static string InsertCustomerInfoCommand(Guid customerId)
        {
            var customerInfo = TestDataManager.CustomerInfoCreate;

            customerInfo.CustomerId = customerId;

            var command = SqlCommandBuilder.Insert(customerInfo, "CustomerInfos");

            return command;
        }

        public static string InsertAppointmentCommand(Guid id, Guid employeeId, Guid customerId, int appointmentStatus)
        {
            var appointment = TestDataManager.FirstEmployeeActiveAppointment;

            var startDate = appointmentStatus == 0 ? DateTime.Now.AddDays(1) : DateTime.Now;

            appointment.Status = appointmentStatus;
            appointment.Id = id;
            appointment.EmployeeId = employeeId;
            appointment.CustomerId = customerId;
            appointment.StartDate = startDate;
            appointment.EndDate = startDate.AddMinutes(30);

            var command = SqlCommandBuilder.Insert(appointment, "Appointments");

            return command;
        }

        public static string InsertAppointmentCommand(Appointment appointment)
        {
            var command = SqlCommandBuilder.Insert(appointment, "Appointments");

            return command;
        }
        
        public static string InsertCustomerReviewCommand(CustomerReview review)
        {
            var command = SqlCommandBuilder.Insert(review, "CustomerReviews");

            return command;
        }

        public static string InsertBusinessAvatarCommand(string fileUrl)
        {
            var businessId = TestContext.BusinessId ?? Guid.Parse(TestDataManager.BusinessId);

            var avatar = new BusinessAvatarImage()
            {
                Id = Guid.NewGuid(),
                BusinessId = businessId,
                PathUrl = fileUrl,
            };

            var command = SqlCommandBuilder.Insert(avatar, "BusinessAvatarImages");

            return command;
        }

        public static string InsertBusinessPortfolioCommand(string fileUrl, out Guid fileId)
        {
            var businessId = TestContext.BusinessId ?? Guid.Parse(TestDataManager.BusinessId);

            var avatar = new BusinessPortfolioImage()
            {
                Id = Guid.NewGuid(),
                BusinessId = businessId,
                PathUrl = fileUrl,
            };

            fileId = avatar.Id;

            var command = SqlCommandBuilder.Insert(avatar, "BusinessPortfolioImages");

            return command;
        }

        public static string InsertEmployeeAvatarCommand(Guid employeeId, string fileUrl)
        {
            var avatar = new EmployeeAvatarImage()
            {
                Id = Guid.NewGuid(),
                EmployeeId = employeeId,
                PathUrl = fileUrl,
            };

            var command = SqlCommandBuilder.Insert(avatar, "EmployeeAvatarImages");

            return command;
        }

        public static string InsertEmployeePortfolioCommand(Guid employeeId, string fileUrl, out Guid fileId)
        {
            var avatar = new EmployeePortfolioImage()
            {
                Id = Guid.NewGuid(),
                EmployeeId = employeeId,
                PathUrl = fileUrl,
            };

            fileId = avatar.Id;

            var command = SqlCommandBuilder.Insert(avatar, "EmployeePortfolioImages");

            return command;
        }

        public static string InsertCustomerReview(CustomerReview review)
        {
            var command = SqlCommandBuilder.Insert(review, "CustomerReviews");

            return command;
        }

        public static string InsertWorkDayCommand(WorkDay workDay)
        {
            var command = SqlCommandBuilder.Insert(workDay, "WorkDays");
            return command;
        }

        public static string InsertWorkPauseCommand(WorkPause workPause)
        {
            var command = SqlCommandBuilder.Insert(workPause, "WorkPauses");
            return command;
        }
    }
}