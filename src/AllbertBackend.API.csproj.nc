<Project Sdk="Microsoft.NET.Sdk.Web">
  <PropertyGroup>
    <TargetFramework>net5.0</TargetFramework>
  </PropertyGroup>
  <ItemGroup>
    <PackageReference Include="MediatR" Version="9.0.0" />
    <PackageReference Include="Microsoft.EntityFrameworkCore.Design" Version="5.0.6">
      <PrivateAssets>all</PrivateAssets>
      <IncludeAssets>runtime; build; native; contentfiles; analyzers; buildtransitive</IncludeAssets>
    </PackageReference>
    <PackageReference Include="Swashbuckle.AspNetCore" Version="5.6.3" />
  </ItemGroup>
  <ItemGroup>
    <Folder Include="Logs\" />
    <Folder Include="Middleware\" />
    <Folder Include="Utility\" />
    <Folder Include="Services\" />
  </ItemGroup>
  <ItemGroup>
    <ProjectReference Include="..\..\Core\AllbertBackend.Application\AllbertBackend.Application.csproj" />
    <ProjectReference Include="..\..\Core\AllbertBackend.Domain\AllbertBackend.Domain.csproj" />
    <ProjectReference Include="..\..\Infrastructure\AllbertBackend.Infrastructure\AllbertBackend.Infrastructure.csproj" />
    <ProjectReference Include="..\..\Infrastructure\AllbertBackend.Persistence\AllbertBackend.Persistence.csproj" />
  </ItemGroup>
</Project>
