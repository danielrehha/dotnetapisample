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
    <Import Project="$(NuGetPackageRoot)microsoft.entityframeworkcore.design/5.0.6/build/netcoreapp3.0/Microsoft.EntityFrameworkCore.Design.props" Condition="Exists('$(NuGetPackageRoot)microsoft.entityframeworkcore.design/5.0.6/build/netcoreapp3.0/Microsoft.EntityFrameworkCore.Design.props')" />
  </ImportGroup>
  <PropertyGroup Condition=" '$(ExcludeRestorePackageImports)' != 'true' ">
    <PkgMicrosoft_EntityFrameworkCore_Tools Condition=" '$(PkgMicrosoft_EntityFrameworkCore_Tools)' == '' ">/Users/basicpreset/.nuget/packages/microsoft.entityframeworkcore.tools/5.0.6</PkgMicrosoft_EntityFrameworkCore_Tools>
    <PkgAWSSDK_Core Condition=" '$(PkgAWSSDK_Core)' == '' ">/Users/basicpreset/.nuget/packages/awssdk.core/3.7.0.31</PkgAWSSDK_Core>
  </PropertyGroup>
</Project>
