using System;
using Microsoft.EntityFrameworkCore.Migrations;
namespace AllbertBackend.Persistence.Migrations
{
    public partial class business_settings : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "BusinessSettings",
                columns: table => new
                {
                    BusinessId = table.Column<Guid>(type: "uuid", nullable: false),
                    LangIso639Code = table.Column<string>(type: "text", nullable: true),
                    AppointmentEmailsEnabled = table.Column<bool>(type: "boolean", nullable: false),
                    PromotionalEmailsEnabled = table.Column<bool>(type: "boolean", nullable: false),
                    DarkModeEnabled = table.Column<bool>(type: "boolean", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BusinessSettings", x => x.BusinessId);
                    table.ForeignKey(
                        name: "FK_BusinessSettings_Businesses_BusinessId",
                        column: x => x.BusinessId,
                        principalTable: "Businesses",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });
        }
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "BusinessSettings");
        }
    }
}
