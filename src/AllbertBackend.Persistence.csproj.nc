<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <TargetFramework>net5.0</TargetFramework>
  </PropertyGroup>
  <PropertyGroup Condition="'$(Configuration)|$(Platform)'=='Release|AnyCPU'">
    <AllowUnsafeBlocks>true</AllowUnsafeBlocks>
  </PropertyGroup>
  <PropertyGroup Condition="'$(Configuration)|$(Platform)'=='Debug|AnyCPU'">
    <AllowUnsafeBlocks>true</AllowUnsafeBlocks>
  </PropertyGroup>
  <ItemGroup>
    <PackageReference Include="Microsoft.AspNetCore.SignalR" Version="1.1.0" />
    <PackageReference Include="Microsoft.EntityFrameworkCore" Version="5.0.9" />
    <PackageReference Include="Microsoft.EntityFrameworkCore.Tools" Version="5.0.6">
      <PrivateAssets>all</PrivateAssets>
      <IncludeAssets>runtime; build; native; contentfiles; analyzers; buildtransitive</IncludeAssets>
    </PackageReference>
    <PackageReference Include="Microsoft.Extensions.Configuration.Abstractions" Version="5.0.0" />
    <PackageReference Include="Microsoft.Extensions.Logging.Console" Version="5.0.0" />
    <PackageReference Include="Npgsql" Version="5.0.5" />
    <PackageReference Include="Npgsql.EntityFrameworkCore.PostgreSQL" Version="5.0.6" />
    <PackageReference Include="Z.EntityFramework.Extensions.EFCore" Version="5.2.12" />
    <PackageReference Include="Z.EntityFramework.Plus.EFCore" Version="5.2.12" />
  </ItemGroup>
  <ItemGroup>
    <ProjectReference Include="..\..\Core\AllbertBackend.Application\AllbertBackend.Application.csproj" />
    <ProjectReference Include="..\..\Core\AllbertBackend.Domain\AllbertBackend.Domain.csproj" />
  </ItemGroup>
  <ItemGroup>
    <Folder Include="Migrations" />
    <Folder Include="Migrations\" />
  </ItemGroup>
</Project>
