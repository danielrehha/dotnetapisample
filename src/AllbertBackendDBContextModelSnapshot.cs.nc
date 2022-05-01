using System;
using AllbertBackend.Infrastructure.Persistence;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;
namespace AllbertBackend.Persistence.Migrations
{
    [DbContext(typeof(AllbertBackendDBContext))]
    partial class AllbertBackendDBContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Relational:MaxIdentifierLength", 63)
                .HasAnnotation("ProductVersion", "5.0.9")
                .HasAnnotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn);
            modelBuilder.Entity("AllbertBackend.Application.Contracts.SessionManagement.ApplicationSession", b =>
                {
                    b.Property<string>("SessionId")
                        .HasColumnType("text");
                    b.Property<Guid>("EntityId")
                        .HasColumnType("uuid");
                    b.Property<string>("EntityType")
                        .HasColumnType("text");
                    b.Property<bool>("IsConnected")
                        .HasColumnType("boolean");
                    b.Property<string>("SessionType")
                        .HasColumnType("text");
                    b.HasKey("SessionId");
                    b.ToTable("Sessions");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Appointment", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");
                    b.Property<Guid>("BusinessId")
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<Guid?>("CustomerId")
                        .HasColumnType("uuid");
                    b.Property<Guid?>("EmployeeId")
                        .HasColumnType("uuid");
                    b.Property<DateTime>("EndDate")
                        .HasColumnType("timestamp without time zone");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<Guid?>("ServiceId")
                        .HasColumnType("uuid");
                    b.Property<DateTime>("StartDate")
                        .HasColumnType("timestamp without time zone");
                    b.Property<int>("Status")
                        .HasColumnType("integer");
                    b.HasKey("Id");
                    b.HasIndex("CustomerId");
                    b.HasIndex("EmployeeId");
                    b.HasIndex("ServiceId");
                    b.ToTable("Appointments");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.AvailableTimeslot", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<Guid>("EmployeeId")
                        .HasColumnType("uuid");
                    b.Property<DateTime>("EndDate")
                        .HasColumnType("timestamp without time zone");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<DateTime>("StartDate")
                        .HasColumnType("timestamp without time zone");
                    b.HasKey("Id");
                    b.HasIndex("EmployeeId");
                    b.ToTable("AvailableTimeslots");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Business", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<bool>("Deleted")
                        .HasColumnType("boolean");
                    b.Property<bool>("Enabled")
                        .HasColumnType("boolean");
                    b.Property<string>("FirebaseUid")
                        .HasColumnType("text");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.HasKey("Id");
                    b.ToTable("Businesses");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.BusinessAvatarImage", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");
                    b.Property<Guid>("BusinessId")
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<string>("PathUrl")
                        .HasColumnType("text");
                    b.HasKey("Id");
                    b.HasIndex("BusinessId")
                        .IsUnique();
                    b.ToTable("BusinessAvatarImages");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.BusinessCustomerBan", b =>
                {
                    b.Property<Guid>("BusinessId")
                        .HasColumnType("uuid");
                    b.Property<Guid>("CustomerId")
                        .HasColumnType("uuid");
                    b.HasKey("BusinessId", "CustomerId");
                    b.HasIndex("CustomerId");
                    b.ToTable("BusinessCustomerBanList");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.BusinessInfo", b =>
                {
                    b.Property<Guid>("BusinessId")
                        .HasColumnType("uuid");
                    b.Property<string>("AddressDescription")
                        .HasColumnType("text");
                    b.Property<string>("AddressDoorbell")
                        .HasColumnType("text");
                    b.Property<string>("AddressFloor")
                        .HasColumnType("text");
                    b.Property<string>("City")
                        .HasColumnType("text");
                    b.Property<string>("ContactEmail")
                        .HasColumnType("text");
                    b.Property<string>("ContactFirstName")
                        .HasColumnType("text");
                    b.Property<string>("ContactLastName")
                        .HasColumnType("text");
                    b.Property<string>("ContactPhone")
                        .HasColumnType("text");
                    b.Property<string>("ContactPhoneIso")
                        .HasColumnType("text");
                    b.Property<string>("Country")
                        .HasColumnType("text");
                    b.Property<string>("CountryAlpha2Code")
                        .HasColumnType("text");
                    b.Property<string>("County")
                        .HasColumnType("text");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<string>("Description")
                        .HasColumnType("text");
                    b.Property<double>("LocationLat")
                        .HasColumnType("double precision");
                    b.Property<double>("LocationLong")
                        .HasColumnType("double precision");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<string>("Name")
                        .HasColumnType("text");
                    b.Property<string>("StreetName")
                        .HasColumnType("text");
                    b.Property<string>("StreetNumber")
                        .HasColumnType("text");
                    b.Property<string>("StreetType")
                        .HasColumnType("text");
                    b.Property<string>("Type")
                        .HasColumnType("text");
                    b.Property<string>("Zip")
                        .HasColumnType("text");
                    b.HasKey("BusinessId");
                    b.ToTable("BusinessInfos");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.BusinessPortfolioImage", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");
                    b.Property<Guid>("BusinessId")
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<string>("PathUrl")
                        .HasColumnType("text");
                    b.HasKey("Id");
                    b.HasIndex("BusinessId");
                    b.ToTable("BusinessPortfolioImages");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.BusinessSettings", b =>
                {
                    b.Property<Guid>("BusinessId")
                        .HasColumnType("uuid");
                    b.Property<bool>("AppointmentEmailsEnabled")
                        .HasColumnType("boolean");
                    b.Property<bool>("DarkModeEnabled")
                        .HasColumnType("boolean");
                    b.Property<string>("LangIso639Code")
                        .HasColumnType("text");
                    b.Property<bool>("PromotionalEmailsEnabled")
                        .HasColumnType("boolean");
                    b.HasKey("BusinessId");
                    b.ToTable("BusinessSettings");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Customer", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<string>("FirebaseUid")
                        .HasColumnType("text");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.HasKey("Id");
                    b.ToTable("Customers");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.CustomerAvatarImage", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<Guid>("CustomerId")
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<string>("PathUrl")
                        .HasColumnType("text");
                    b.HasKey("Id");
                    b.HasIndex("CustomerId")
                        .IsUnique();
                    b.ToTable("CustomerAvatarImages");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.CustomerBusinessFavorite", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<Guid>("CustomerId")
                        .HasColumnType("uuid");
                    b.Property<Guid>("EntityId")
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.HasKey("Id");
                    b.HasIndex("CustomerId");
                    b.HasIndex("EntityId");
                    b.ToTable("CustomerBusinessFavorites");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.CustomerEmployeeFavorite", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<Guid>("CustomerId")
                        .HasColumnType("uuid");
                    b.Property<Guid>("EntityId")
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.HasKey("Id");
                    b.HasIndex("CustomerId");
                    b.HasIndex("EntityId");
                    b.ToTable("CustomerEmployeeFavorites");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.CustomerInfo", b =>
                {
                    b.Property<Guid>("CustomerId")
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<string>("Email")
                        .HasColumnType("text");
                    b.Property<string>("FirstName")
                        .HasColumnType("text");
                    b.Property<string>("LastName")
                        .HasColumnType("text");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<string>("Phone")
                        .HasColumnType("text");
                    b.Property<string>("PhoneIso")
                        .HasColumnType("text");
                    b.HasKey("CustomerId");
                    b.ToTable("CustomerInfos");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Employee", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");
                    b.Property<Guid>("BusinessId")
                        .HasColumnType("uuid");
                    b.Property<Guid?>("BusinessInfoBusinessId")
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.HasKey("Id");
                    b.HasIndex("BusinessId");
                    b.HasIndex("BusinessInfoBusinessId");
                    b.ToTable("Employees");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.EmployeeAvatarImage", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<Guid>("EmployeeId")
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<string>("PathUrl")
                        .HasColumnType("text");
                    b.HasKey("Id");
                    b.HasIndex("EmployeeId")
                        .IsUnique();
                    b.ToTable("EmployeeAvatarImages");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.EmployeeInfo", b =>
                {
                    b.Property<Guid>("EmployeeId")
                        .HasColumnType("uuid");
                    b.Property<long>("Color")
                        .HasColumnType("bigint");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<string>("Description")
                        .HasColumnType("text");
                    b.Property<string>("Email")
                        .HasColumnType("text");
                    b.Property<string>("FirstName")
                        .HasColumnType("text");
                    b.Property<string>("Job")
                        .HasColumnType("text");
                    b.Property<string>("LastName")
                        .HasColumnType("text");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<string>("Phone")
                        .HasColumnType("text");
                    b.Property<string>("PhoneIso")
                        .HasColumnType("text");
                    b.HasKey("EmployeeId");
                    b.ToTable("EmployeeInfos");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.EmployeePortfolioImage", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<Guid>("EmployeeId")
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<string>("PathUrl")
                        .HasColumnType("text");
                    b.HasKey("Id");
                    b.HasIndex("EmployeeId");
                    b.ToTable("EmployeePortfolioImages");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.EmployeeScheduleSettings", b =>
                {
                    b.Property<Guid>("EmployeeId")
                        .HasColumnType("uuid");
                    b.Property<int>("AllowedAppointmentDeletionDeadlineInHours")
                        .HasColumnType("integer");
                    b.Property<int>("AllowedBookingFrequencyInMinutes")
                        .HasColumnType("integer");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.HasKey("EmployeeId");
                    b.ToTable("EmployeeScheduleSettings");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.EmployeeService", b =>
                {
                    b.Property<Guid>("EmployeeId")
                        .HasColumnType("uuid");
                    b.Property<Guid>("ServiceId")
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.HasKey("EmployeeId", "ServiceId");
                    b.HasIndex("ServiceId");
                    b.ToTable("EmployeeServices");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Rating", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");
                    b.Property<string>("Comment")
                        .HasColumnType("text");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<Guid>("CustomerId")
                        .HasColumnType("uuid");
                    b.Property<Guid>("EmployeeId")
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<double>("Score")
                        .HasColumnType("double precision");
                    b.HasKey("Id");
                    b.HasIndex("CustomerId");
                    b.HasIndex("EmployeeId");
                    b.ToTable("Ratings");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Service", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");
                    b.Property<Guid>("BusinessId")
                        .HasColumnType("uuid");
                    b.Property<Guid?>("BusinessId1")
                        .HasColumnType("uuid");
                    b.Property<double>("Cost")
                        .HasColumnType("double precision");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<string>("Currency")
                        .HasColumnType("text");
                    b.Property<int>("Duration")
                        .HasColumnType("integer");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<string>("Name")
                        .HasColumnType("text");
                    b.Property<int>("Offset")
                        .HasColumnType("integer");
                    b.Property<int>("PauseAfterInMinutes")
                        .HasColumnType("integer");
                    b.HasKey("Id");
                    b.HasIndex("BusinessId");
                    b.HasIndex("BusinessId1");
                    b.ToTable("Services");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Shared.ApplicationEvent", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");
                    b.Property<Guid?>("BusinessId")
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<bool>("Seen")
                        .HasColumnType("boolean");
                    b.Property<string>("SerializedData")
                        .HasColumnType("text");
                    b.Property<int>("Type")
                        .HasColumnType("integer");
                    b.HasKey("Id");
                    b.HasIndex("BusinessId");
                    b.ToTable("ApplicationEvents");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Shared.WorkDay", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");
                    b.Property<DateTime>("Date")
                        .HasColumnType("timestamp without time zone");
                    b.Property<Guid>("EmployeeId")
                        .HasColumnType("uuid");
                    b.Property<DateTime>("EndTime")
                        .HasColumnType("timestamp without time zone");
                    b.Property<DateTime>("StartTime")
                        .HasColumnType("timestamp without time zone");
                    b.HasKey("Id");
                    b.HasIndex("EmployeeId");
                    b.ToTable("WorkDays");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Shared.WorkPause", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");
                    b.Property<DateTime>("Date")
                        .HasColumnType("timestamp without time zone");
                    b.Property<DateTime>("EndTime")
                        .HasColumnType("timestamp without time zone");
                    b.Property<int>("Index")
                        .HasColumnType("integer");
                    b.Property<DateTime>("StartTime")
                        .HasColumnType("timestamp without time zone");
                    b.Property<Guid>("WorkDayId")
                        .HasColumnType("uuid");
                    b.HasKey("Id");
                    b.HasIndex("WorkDayId");
                    b.ToTable("WorkPauses");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Subscription", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer")
                        .HasAnnotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn);
                    b.Property<double>("Cost")
                        .HasColumnType("double precision");
                    b.Property<string>("CostCurrency")
                        .HasColumnType("text");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<int>("MaxDates")
                        .HasColumnType("integer");
                    b.Property<int>("MaxEmployees")
                        .HasColumnType("integer");
                    b.Property<int>("MaxServices")
                        .HasColumnType("integer");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<string>("Name")
                        .HasColumnType("text");
                    b.HasKey("Id");
                    b.ToTable("Subscriptions");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.SubscriptionInfo", b =>
                {
                    b.Property<Guid>("BusinessId")
                        .HasColumnType("uuid");
                    b.Property<DateTime?>("CreatedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<bool>("DoesRenew")
                        .HasColumnType("boolean");
                    b.Property<DateTime>("EndsOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<bool>("IsTrial")
                        .HasColumnType("boolean");
                    b.Property<DateTime?>("ModifiedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<DateTime>("StartedOn")
                        .HasColumnType("timestamp without time zone");
                    b.Property<int>("SubscriptionId")
                        .HasColumnType("integer");
                    b.HasKey("BusinessId");
                    b.HasIndex("SubscriptionId");
                    b.ToTable("SubscriptionInfos");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Appointment", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Customer", "Customer")
                        .WithMany("Appointments")
                        .HasForeignKey("CustomerId");
                    b.HasOne("AllbertBackend.Domain.Entities.Employee", "Employee")
                        .WithMany("Appointments")
                        .HasForeignKey("EmployeeId");
                    b.HasOne("AllbertBackend.Domain.Entities.Service", "Service")
                        .WithMany()
                        .HasForeignKey("ServiceId");
                    b.Navigation("Customer");
                    b.Navigation("Employee");
                    b.Navigation("Service");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.AvailableTimeslot", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Employee", null)
                        .WithMany("AvailableTimeslots")
                        .HasForeignKey("EmployeeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.BusinessAvatarImage", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Business", null)
                        .WithOne("Avatar")
                        .HasForeignKey("AllbertBackend.Domain.Entities.BusinessAvatarImage", "BusinessId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.BusinessCustomerBan", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Business", null)
                        .WithMany("CustomerBanList")
                        .HasForeignKey("BusinessId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                    b.HasOne("AllbertBackend.Domain.Entities.Customer", null)
                        .WithMany("BanList")
                        .HasForeignKey("CustomerId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.BusinessInfo", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Business", null)
                        .WithOne("BusinessInfo")
                        .HasForeignKey("AllbertBackend.Domain.Entities.BusinessInfo", "BusinessId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.BusinessPortfolioImage", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Business", null)
                        .WithMany("PortfolioImages")
                        .HasForeignKey("BusinessId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.BusinessSettings", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Business", null)
                        .WithOne("BusinessSettings")
                        .HasForeignKey("AllbertBackend.Domain.Entities.BusinessSettings", "BusinessId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.CustomerAvatarImage", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Customer", null)
                        .WithOne("Avatar")
                        .HasForeignKey("AllbertBackend.Domain.Entities.CustomerAvatarImage", "CustomerId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.CustomerBusinessFavorite", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Customer", null)
                        .WithMany("CustomerBusinessFavorites")
                        .HasForeignKey("CustomerId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                    b.HasOne("AllbertBackend.Domain.Entities.Business", "Entity")
                        .WithMany()
                        .HasForeignKey("EntityId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                    b.Navigation("Entity");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.CustomerEmployeeFavorite", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Customer", null)
                        .WithMany("CustomerEmployeeFavorites")
                        .HasForeignKey("CustomerId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                    b.HasOne("AllbertBackend.Domain.Entities.Employee", "Entity")
                        .WithMany()
                        .HasForeignKey("EntityId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                    b.Navigation("Entity");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.CustomerInfo", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Customer", null)
                        .WithOne("CustomerInfo")
                        .HasForeignKey("AllbertBackend.Domain.Entities.CustomerInfo", "CustomerId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Employee", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Business", "Business")
                        .WithMany("Employees")
                        .HasForeignKey("BusinessId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                    b.HasOne("AllbertBackend.Domain.Entities.BusinessInfo", "BusinessInfo")
                        .WithMany()
                        .HasForeignKey("BusinessInfoBusinessId");
                    b.Navigation("Business");
                    b.Navigation("BusinessInfo");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.EmployeeAvatarImage", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Employee", null)
                        .WithOne("Avatar")
                        .HasForeignKey("AllbertBackend.Domain.Entities.EmployeeAvatarImage", "EmployeeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.EmployeeInfo", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Employee", null)
                        .WithOne("EmployeeInfo")
                        .HasForeignKey("AllbertBackend.Domain.Entities.EmployeeInfo", "EmployeeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.EmployeePortfolioImage", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Employee", null)
                        .WithMany("PortfolioImages")
                        .HasForeignKey("EmployeeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.EmployeeScheduleSettings", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Employee", null)
                        .WithOne("ScheduleSettings")
                        .HasForeignKey("AllbertBackend.Domain.Entities.EmployeeScheduleSettings", "EmployeeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.EmployeeService", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.EmployeeInfo", "EmployeeInfo")
                        .WithMany("Services")
                        .HasForeignKey("EmployeeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                    b.HasOne("AllbertBackend.Domain.Entities.Service", "Service")
                        .WithMany()
                        .HasForeignKey("ServiceId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                    b.Navigation("EmployeeInfo");
                    b.Navigation("Service");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Rating", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Customer", "Customer")
                        .WithMany("Ratings")
                        .HasForeignKey("CustomerId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                    b.HasOne("AllbertBackend.Domain.Entities.Employee", "Employee")
                        .WithMany("Ratings")
                        .HasForeignKey("EmployeeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                    b.Navigation("Customer");
                    b.Navigation("Employee");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Service", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Business", null)
                        .WithMany("Services")
                        .HasForeignKey("BusinessId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                    b.HasOne("AllbertBackend.Domain.Entities.Business", "Business")
                        .WithMany()
                        .HasForeignKey("BusinessId1");
                    b.Navigation("Business");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Shared.ApplicationEvent", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Business", null)
                        .WithMany("Events")
                        .HasForeignKey("BusinessId");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Shared.WorkDay", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Employee", null)
                        .WithMany("WorkDayList")
                        .HasForeignKey("EmployeeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Shared.WorkPause", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Shared.WorkDay", null)
                        .WithMany("PauseList")
                        .HasForeignKey("WorkDayId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.SubscriptionInfo", b =>
                {
                    b.HasOne("AllbertBackend.Domain.Entities.Business", "Business")
                        .WithOne("SubscriptionInfo")
                        .HasForeignKey("AllbertBackend.Domain.Entities.SubscriptionInfo", "BusinessId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                    b.HasOne("AllbertBackend.Domain.Entities.Subscription", "Subscription")
                        .WithMany("SubscriptionsInfos")
                        .HasForeignKey("SubscriptionId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                    b.Navigation("Business");
                    b.Navigation("Subscription");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Business", b =>
                {
                    b.Navigation("Avatar");
                    b.Navigation("BusinessInfo");
                    b.Navigation("BusinessSettings");
                    b.Navigation("CustomerBanList");
                    b.Navigation("Employees");
                    b.Navigation("Events");
                    b.Navigation("PortfolioImages");
                    b.Navigation("Services");
                    b.Navigation("SubscriptionInfo");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Customer", b =>
                {
                    b.Navigation("Appointments");
                    b.Navigation("Avatar");
                    b.Navigation("BanList");
                    b.Navigation("CustomerBusinessFavorites");
                    b.Navigation("CustomerEmployeeFavorites");
                    b.Navigation("CustomerInfo");
                    b.Navigation("Ratings");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Employee", b =>
                {
                    b.Navigation("Appointments");
                    b.Navigation("AvailableTimeslots");
                    b.Navigation("Avatar");
                    b.Navigation("EmployeeInfo");
                    b.Navigation("PortfolioImages");
                    b.Navigation("Ratings");
                    b.Navigation("ScheduleSettings");
                    b.Navigation("WorkDayList");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.EmployeeInfo", b =>
                {
                    b.Navigation("Services");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Shared.WorkDay", b =>
                {
                    b.Navigation("PauseList");
                });
            modelBuilder.Entity("AllbertBackend.Domain.Entities.Subscription", b =>
                {
                    b.Navigation("SubscriptionsInfos");
                });
#pragma warning restore 612, 618
        }
    }
}
