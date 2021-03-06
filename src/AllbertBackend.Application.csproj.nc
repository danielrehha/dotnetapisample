<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <TargetFramework>net5.0</TargetFramework>
  </PropertyGroup>
  <ItemGroup>
    <Compile Remove="Features\Appointment\**" />
    <Compile Remove="Features\Business\Commands\AddBusinessInfo\**" />
    <Compile Remove="Features\Business\Commands\AddBusinessPortfolioImage\**" />
    <Compile Remove="Features\Business\Commands\UpdateBusinessInfo\**" />
    <EmbeddedResource Remove="Features\Appointment\**" />
    <EmbeddedResource Remove="Features\Business\Commands\AddBusinessInfo\**" />
    <EmbeddedResource Remove="Features\Business\Commands\AddBusinessPortfolioImage\**" />
    <EmbeddedResource Remove="Features\Business\Commands\UpdateBusinessInfo\**" />
    <None Remove="Features\Appointment\**" />
    <None Remove="Features\Business\Commands\AddBusinessInfo\**" />
    <None Remove="Features\Business\Commands\AddBusinessPortfolioImage\**" />
    <None Remove="Features\Business\Commands\UpdateBusinessInfo\**" />
    <None Remove="Features\Business\Queries\GetBusinessAppointmentListAsync\" />
    <None Remove="Features\Business\Queries\GetBusinessClosedAppointmentList\" />
  </ItemGroup>
  <ItemGroup>
    <PackageReference Include="AutoMapper" Version="10.1.1" />
    <PackageReference Include="AutoMapper.Extensions.Microsoft.DependencyInjection" Version="8.1.1" />
    <PackageReference Include="AWSSDK.Core" Version="3.7.0.31" />
    <PackageReference Include="AWSSDK.Extensions.NETCore.Setup" Version="3.7.0.1" />
    <PackageReference Include="FluentValidation" Version="10.2.2" />
    <PackageReference Include="GoogleApi" Version="3.10.11" />
    <PackageReference Include="MediatR" Version="9.0.0" />
    <PackageReference Include="MediatR.Extensions.Microsoft.DependencyInjection" Version="9.0.0" />
    <PackageReference Include="Microsoft.AspNetCore.Http.Features" Version="5.0.6" />
    <PackageReference Include="Microsoft.AspNetCore.SignalR" Version="1.1.0" />
    <PackageReference Include="Microsoft.EntityFrameworkCore" Version="5.0.9" />
    <PackageReference Include="Microsoft.Extensions.DependencyInjection.Abstractions" Version="5.0.0" />
  </ItemGroup>
  <ItemGroup>
    <Folder Include="Contracts\Email\" />
    <Folder Include="Features\Customer\Commands\DeleteCustomer\" />
    <Folder Include="Features\Customer\Commands\CreateRating\" />
    <Folder Include="Features\Customer\Commands\UpdateAppointment\" />
  </ItemGroup>
  <ItemGroup>
    <ProjectReference Include="..\AllbertBackend.Domain\AllbertBackend.Domain.csproj" />
  </ItemGroup>
</Project>
