using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AllbertBackend.Persistence.Configurations
{
    public class BusinessConfiguration : IEntityTypeConfiguration<AllbertBackend.Domain.Entities.Business>
    {
        public void Configure(EntityTypeBuilder<AllbertBackend.Domain.Entities.Business> builder)
        {
            builder.HasKey(i => i.Id);
        }
    }
}
