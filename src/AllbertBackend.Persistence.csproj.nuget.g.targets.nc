<?xml version="1.0" encoding="utf-8" standalone="no"?>
<Project ToolsVersion="14.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <PropertyGroup>
    <MSBuildAllProjects>$(MSBuildAllProjects);$(MSBuildThisFileFullPath)</MSBuildAllProjects>
  </PropertyGroup>
  <ImportGroup Condition=" '$(ExcludeRestorePackageImports)' != 'true' ">
    <Import Project="$(NuGetPackageRoot)netstandard.library/2.0.0/build/netstandard2.0/NETStandard.Library.targets" Condition="Exists('$(NuGetPackageRoot)netstandard.library/2.0.0/build/netstandard2.0/NETStandard.Library.targets')" />
  </ImportGroup>
</Project>
