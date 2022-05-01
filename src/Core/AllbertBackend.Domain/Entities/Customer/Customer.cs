using System;
using System.Collections.Generic;
using AllbertBackend.Domain.Entities.Shared;

namespace AllbertBackend.Domain.Entities
{
    public class Customer : BaseEntity
    {
        public Guid Id { get; set; }
        public string FirebaseUid { get; set; }
        public CustomerInfo CustomerInfo { get; set; }
        public CustomerAvatarImage Avatar { get; set; }
        public List<CustomerReview> Reviews { get; set; } = new List<CustomerReview>();
        public List<Appointment> Appointments { get; set; } = new List<Appointment>();
        public List<CustomerBusinessFavorite> CustomerBusinessFavorites { get; set; } = new List<CustomerBusinessFavorite>();
        public List<CustomerEmployeeFavorite> CustomerEmployeeFavorites { get; set; } = new List<CustomerEmployeeFavorite>();
        public List<BusinessCustomerBan> BanList { get; set; } = new List<BusinessCustomerBan>();
        public bool Deleted { get; set; }
    }
}
