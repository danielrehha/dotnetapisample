<?xml version="1.0" encoding="utf-8" standalone="no"?>
<Project ToolsVersion="14.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <PropertyGroup Condition=" '$(ExcludeRestorePackageImports)' != 'true' ">
    <RestoreSuccess Condition=" '$(RestoreSuccess)' == '' ">True</RestoreSuccess>
    <RestoreTool Condition=" '$(RestoreTool)' == '' ">NuGet</RestoreTool>
    <ProjectAssetsFile Condition=" '$(ProjectAssetsFile)' == '' ">$(MSBuildThisFileDirectory)project.assets.json</ProjectAssetsFile>
    <NuGetPackageRoot Condition=" '$(NuGetPackageRoot)' == '' ">/Users/basicpreset/.nuget/packages/</NuGetPackageRoot>
    <NuGetPackageFolders Condition=" '$(NuGetPackageFolders)' == '' ">/Users/basicpreset/.nuget/packages/</NuGetPackageFolders>
    <NuGetProjectStyle Condition=" '$(NuGetProjectStyle)' == '' ">PackageReference</NuGetProjectStyle>
    <NuGetToolVersion Condition=" '$(NuGetToolVersion)' == '' ">5.11.0</NuGetToolVersion>
  </PropertyGroup>
  <ItemGroup Condition=" '$(ExcludeRestorePackageImports)' != 'true' ">
    <SourceRoot Include="/Users/basicpreset/.nuget/packages/" />
  </ItemGroup>
  <PropertyGroup>
    <MSBuildAllProjects>$(MSBuildAllProjects);$(MSBuildThisFileFullPath)</MSBuildAllProjects>
  </PropertyGroup>
  <ImportGroup Condition=" '$(ExcludeRestorePackageImports)' != 'true' ">
    <Import Project="$(NuGetPackageRoot)microsoft.extensions.apidescription.server/3.0.0/build/Microsoft.Extensions.ApiDescription.Server.props" Condition="Exists('$(NuGetPackageRoot)microsoft.extensions.apidescription.server/3.0.0/build/Microsoft.Extensions.ApiDescription.Server.props')" />
    <Import Project="$(NuGetPackageRoot)swashbuckle.aspnetcore/5.6.3/build/Swashbuckle.AspNetCore.props" Condition="Exists('$(NuGetPackageRoot)swashbuckle.aspnetcore/5.6.3/build/Swashbuckle.AspNetCore.props')" />
    <Import Project="$(NuGetPackageRoot)microsoft.entityframeworkcore.design/5.0.6/build/netcoreapp3.0/Microsoft.EntityFrameworkCore.Design.props" Condition="Exists('$(NuGetPackageRoot)microsoft.entityframeworkcore.design/5.0.6/build/netcoreapp3.0/Microsoft.EntityFrameworkCore.Design.props')" />
  </ImportGroup>
  <PropertyGroup Condition=" '$(ExcludeRestorePackageImports)' != 'true' ">
    <PkgMicrosoft_Extensions_ApiDescription_Server Condition=" '$(PkgMicrosoft_Extensions_ApiDescription_Server)' == '' ">/Users/basicpreset/.nuget/packages/microsoft.extensions.apidescription.server/3.0.0</PkgMicrosoft_Extensions_ApiDescription_Server>
    <PkgAWSSDK_Core Condition=" '$(PkgAWSSDK_Core)' == '' ">/Users/basicpreset/.nuget/packages/awssdk.core/3.7.0.31</PkgAWSSDK_Core>
    <PkgAWSSDK_S3 Condition=" '$(PkgAWSSDK_S3)' == '' ">/Users/basicpreset/.nuget/packages/awssdk.s3/3.7.0.31</PkgAWSSDK_S3>
  </PropertyGroup>
</Project>
