using System;
using Microsoft.EntityFrameworkCore.Migrations;
namespace AllbertBackend.Persistence.Migrations
{
    public partial class event_notification_created_on : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<DateTime>(
                name: "CreatedOn",
                table: "ApplicationEvents",
                type: "timestamp without time zone",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "timestamp without time zone");
            migrationBuilder.AddColumn<DateTime>(
                name: "ModifiedOn",
                table: "ApplicationEvents",
                type: "timestamp without time zone",
                nullable: true);
        }
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ModifiedOn",
                table: "ApplicationEvents");
            migrationBuilder.AlterColumn<DateTime>(
                name: "CreatedOn",
                table: "ApplicationEvents",
                type: "timestamp without time zone",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified),
                oldClrType: typeof(DateTime),
                oldType: "timestamp without time zone",
                oldNullable: true);
        }
    }
}
