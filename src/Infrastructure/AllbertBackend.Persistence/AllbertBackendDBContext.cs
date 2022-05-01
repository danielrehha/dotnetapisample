using System.Linq;
using Microsoft.EntityFrameworkCore;
using AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.Application.Contracts.
    SessionManagement;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Entities.Shared;
using GoogleApi.Entities.Translate.Detect.Response;

namespace AllbertBackend.Infrastructure.Persistence
{
    public class AllbertBackendDBContext : DbContext
    {
        public AllbertBackendDBContext(DbContextOptions<AllbertBackendDBContext> options) : base(options)
        {
            Database.EnsureCreated();
        }

        public AllbertBackendDBContext()
        {
        }

        public DbSet<Business> Businesses { get; set; }
        public DbSet<BusinessDetails> BusinessDetails { get; set; }
        public DbSet<BusinessAddress> BusinessAddresses { get; set; }
        public DbSet<BusinessContact> BusinessContacts { get; set; }
        public DbSet<BusinessSettings> BusinessSettings { get; set; }
        public DbSet<BusinessPortfolioImage> BusinessPortfolioImages { get; set; }
        public DbSet<BusinessAvatarImage> BusinessAvatarImages { get; set; }
        public DbSet<Subscription> Subscriptions { get; set; }
        public DbSet<SubscriptionInfo> SubscriptionInfos { get; set; }
        public DbSet<Service> Services { get; set; }
        public DbSet<EmployeeService> EmployeeServices { get; set; }

        public DbSet<WorkDay> WorkDays { get; set; }
        public DbSet<WorkPause> WorkPauses { get; set; }
        public DbSet<EmployeeSettings> EmployeeSettings { get; set; }

        public DbSet<Employee> Employees { get; set; }
        public DbSet<EmployeeInfo> EmployeeInfos { get; set; }
        public DbSet<EmployeePortfolioImage> EmployeePortfolioImages { get; set; }
        public DbSet<EmployeeAvatarImage> EmployeeAvatarImages { get; set; }
        public DbSet<Appointment> Appointments { get; set; }
        public DbSet<CustomerReview> CustomerReviews { get; set; }

        public DbSet<Customer> Customers { get; set; }
        public DbSet<CustomerInfo> CustomerInfos { get; set; }
        public DbSet<CustomerAvatarImage> CustomerAvatarImages { get; set; }
        public DbSet<CustomerBusinessFavorite> CustomerBusinessFavorites { get; set; }
        public DbSet<CustomerEmployeeFavorite> CustomerEmployeeFavorites { get; set; }
        public DbSet<BusinessCustomerBan> BusinessCustomerBanList { get; set; }
        public DbSet<ApplicationSession> Sessions { get; set; }
        public DbSet<ApplicationEvent> ApplicationEvents { get; set; }
        public DbSet<EmployeeWorkBlock> EmployeeWorkBlocks { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ApplicationSession>().HasKey(s => s.SessionId);
            modelBuilder.Entity<ApplicationEvent>().HasKey(n => n.Id);

            modelBuilder.Entity<Business>().HasKey(b => b.Id);

            modelBuilder.Entity<Business>().HasOne(b => b.Details).WithOne()
                .HasForeignKey<BusinessDetails>(i => i.BusinessId);
            modelBuilder.Entity<BusinessDetails>().HasKey(i => i.BusinessId);

            modelBuilder.Entity<Business>().HasOne(b => b.Address).WithOne()
                .HasForeignKey<BusinessAddress>(i => i.BusinessId);
            modelBuilder.Entity<BusinessAddress>().HasKey(i => i.BusinessId);

            modelBuilder.Entity<Business>().HasOne(b => b.Contact).WithOne()
                .HasForeignKey<BusinessContact>(i => i.BusinessId);
            modelBuilder.Entity<BusinessContact>().HasKey(i => i.BusinessId);

            modelBuilder.Entity<Business>().HasOne(b => b.BusinessSettings).WithOne()
                .HasForeignKey<BusinessSettings>(b => b.BusinessId);
            modelBuilder.Entity<BusinessSettings>().HasKey(s => s.BusinessId);

            modelBuilder.Entity<Business>().HasMany(b => b.Events).WithOne().HasForeignKey(n => n.BusinessId);

            modelBuilder.Entity<Business>().HasOne(b => b.Avatar).WithOne()
                .HasForeignKey<BusinessAvatarImage>(a => a.BusinessId);
            modelBuilder.Entity<Business>().HasMany(b => b.Employees).WithOne(e => e.Business)
                .HasForeignKey(e => e.BusinessId);
            modelBuilder.Entity<Business>().HasMany(b => b.PortfolioImages).WithOne().HasForeignKey(i => i.BusinessId);
            modelBuilder.Entity<Business>().HasMany(b => b.CustomerBanList).WithOne().HasForeignKey(b => b.BusinessId);
            modelBuilder.Entity<Business>().HasMany(b => b.Services).WithOne().HasForeignKey(s => s.BusinessId)
                .IsRequired();
            modelBuilder.Entity<Business>().HasOne(b => b.SubscriptionInfo).WithOne(s => s.Business)
                .HasForeignKey<SubscriptionInfo>(s => s.BusinessId);

            modelBuilder.Entity<BusinessCustomerBan>().HasOne<Business>().WithMany(b => b.CustomerBanList)
                .HasForeignKey(b => b.BusinessId);
            modelBuilder.Entity<BusinessCustomerBan>().HasOne<Customer>().WithMany(b => b.BanList)
                .HasForeignKey(b => b.CustomerId);
            modelBuilder.Entity<BusinessCustomerBan>().HasKey((ban) => new {ban.BusinessId, ban.CustomerId,});

            modelBuilder.Entity<SubscriptionInfo>().HasKey(si => si.BusinessId);
            modelBuilder.Entity<Subscription>().HasMany(s => s.SubscriptionsInfos).WithOne(s => s.Subscription)
                .HasForeignKey(s => s.SubscriptionId);

            modelBuilder.Entity<Subscription>().HasKey(s => s.Id);
            modelBuilder.Entity<Subscription>().Property(s => s.Id).ValueGeneratedOnAdd();

            modelBuilder.Entity<Employee>().HasKey(e => e.Id);
            modelBuilder.Entity<Employee>().HasOne(e => e.EmployeeInfo).WithOne().HasForeignKey<EmployeeInfo>(
                i => i.EmployeeId
            );
            modelBuilder.Entity<EmployeeInfo>().HasKey(ei => ei.EmployeeId);
            modelBuilder.Entity<AllbertBackend.Domain.Entities.Employee>().HasOne(e => e.Settings).WithOne()
                .HasForeignKey<EmployeeSettings>(es => es.EmployeeId);
            modelBuilder.Entity<EmployeeSettings>().HasKey(es => es.EmployeeId);

            modelBuilder.Entity<Employee>().HasMany(e => e.WorkBlockList).WithOne().HasForeignKey(e => e.EmployeeId);
            modelBuilder.Entity<EmployeeWorkBlock>().HasKey(e => e.Id);

            modelBuilder.Entity<Employee>().HasMany(e => e.Appointments).WithOne(a => a.Employee)
                .HasForeignKey(a => a.EmployeeId);
            modelBuilder.Entity<Employee>().HasOne(e => e.Avatar).WithOne()
                .HasForeignKey<EmployeeAvatarImage>(a => a.EmployeeId);
            modelBuilder.Entity<Employee>().HasMany(e => e.PortfolioImages).WithOne().HasForeignKey(i => i.EmployeeId);
            modelBuilder.Entity<Employee>().HasMany(e => e.CustomerReviews).WithOne(r => r.Employee)
                .HasForeignKey(r => r.EmployeeId);

            modelBuilder.Entity<Employee>().HasMany(e => e.WorkDayList).WithOne().HasForeignKey(w => w.EmployeeId);
            modelBuilder.Entity<WorkDay>().HasMany(w => w.PauseList).WithOne().HasForeignKey(p => p.WorkDayId);

            modelBuilder.Entity<EmployeeService>().HasKey(es => new {es.EmployeeId, es.ServiceId});
            modelBuilder.Entity<EmployeeService>().HasOne(es => es.EmployeeInfo).WithMany(e => e.Services)
                .HasForeignKey(es => es.EmployeeId);
            modelBuilder.Entity<EmployeeService>().HasOne(es => es.Service).WithMany().HasForeignKey(s => s.ServiceId);

            modelBuilder.Entity<Customer>().HasKey(c => c.Id);
            modelBuilder.Entity<Customer>().HasOne(c => c.CustomerInfo).WithOne()
                .HasForeignKey<CustomerInfo>(i => i.CustomerId);
            modelBuilder.Entity<Customer>().HasOne(c => c.Avatar).WithOne()
                .HasForeignKey<CustomerAvatarImage>(a => a.CustomerId);
            modelBuilder.Entity<Customer>().HasMany(c => c.Reviews).WithOne(r => r.Customer)
                .HasForeignKey(r => r.CustomerId);
            modelBuilder.Entity<Customer>().HasMany(c => c.BanList).WithOne().HasForeignKey(b => b.CustomerId);
            modelBuilder.Entity<Customer>().HasMany(c => c.Appointments).WithOne(a => a.Customer)
                .HasForeignKey(a => a.CustomerId);
            modelBuilder.Entity<Customer>().HasMany(c => c.CustomerBusinessFavorites).WithOne()
                .HasForeignKey(r => r.CustomerId);
            modelBuilder.Entity<Customer>().HasMany(c => c.CustomerEmployeeFavorites).WithOne()
                .HasForeignKey(a => a.CustomerId);
            modelBuilder.Entity<CustomerBusinessFavorite>().HasOne(c => c.Entity).WithMany()
                .HasForeignKey(a => a.EntityId);
            modelBuilder.Entity<CustomerEmployeeFavorite>().HasOne(c => c.Entity).WithMany()
                .HasForeignKey(a => a.EntityId);

            modelBuilder.Entity<Appointment>().HasKey(a => a.Id);
            modelBuilder.Entity<Appointment>().HasOne(a => a.Customer).WithMany(c => c.Appointments)
                .HasForeignKey(a => a.CustomerId);
            modelBuilder.Entity<Appointment>().HasOne(a => a.Service).WithMany().HasForeignKey(a => a.ServiceId)
                .IsRequired(false);

            modelBuilder.Entity<CustomerReview>().HasKey(es => new {es.EmployeeId, es.CustomerId});
            modelBuilder.Entity<CustomerReview>().HasOne(e => e.Employee).WithMany(e => e.CustomerReviews);
            modelBuilder.Entity<CustomerReview>().HasOne(e => e.Customer).WithMany(e => e.Reviews);
            modelBuilder.Entity<Service>().HasKey(b => b.Id);
            modelBuilder.Entity<CustomerInfo>().HasKey(b => b.CustomerId);

            modelBuilder.Entity<BusinessAvatarImage>().HasKey(i => i.Id);
            modelBuilder.Entity<BusinessPortfolioImage>().HasKey(i => i.Id);
            modelBuilder.Entity<EmployeeAvatarImage>().HasKey(i => i.Id);
            modelBuilder.Entity<EmployeePortfolioImage>().HasKey(i => i.Id);
            modelBuilder.Entity<CustomerAvatarImage>().HasKey(i => i.Id);
        }
    }
}