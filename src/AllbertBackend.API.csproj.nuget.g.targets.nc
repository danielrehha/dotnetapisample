<?xml version="1.0" encoding="utf-8" standalone="no"?>
<Project ToolsVersion="14.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <PropertyGroup>
    <MSBuildAllProjects>$(MSBuildAllProjects);$(MSBuildThisFileFullPath)</MSBuildAllProjects>
  </PropertyGroup>
  <ImportGroup Condition=" '$(ExcludeRestorePackageImports)' != 'true' ">
    <Import Project="$(NuGetPackageRoot)microsoft.extensions.apidescription.server/3.0.0/build/Microsoft.Extensions.ApiDescription.Server.targets" Condition="Exists('$(NuGetPackageRoot)microsoft.extensions.apidescription.server/3.0.0/build/Microsoft.Extensions.ApiDescription.Server.targets')" />
  </ImportGroup>
</Project>
