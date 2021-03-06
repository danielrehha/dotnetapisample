<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <TargetFramework>net5.0</TargetFramework>
  </PropertyGroup>
  <ItemGroup>
    <PackageReference Include="AWSSDK.S3" Version="3.7.0.31" />
    <PackageReference Include="FluentScheduler" Version="5.5.1" />
    <PackageReference Include="Microsoft.Extensions.Configuration.Binder" Version="5.0.0" />
  </ItemGroup>
  <ItemGroup>
    <ProjectReference Include="..\..\Core\AllbertBackend.Application\AllbertBackend.Application.csproj" />
    <ProjectReference Include="..\..\Core\AllbertBackend.Domain\AllbertBackend.Domain.csproj" />
    <ProjectReference Include="..\AllbertBackend.Persistence\AllbertBackend.Persistence.csproj" />
  </ItemGroup>
</Project>
