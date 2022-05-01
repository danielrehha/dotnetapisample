<?xml version="1.0" encoding="utf-8"?>
<Project xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <Target Name="GetEFProjectMetadata" Condition="">
    <MSBuild Condition=" '$(TargetFramework)' == '' "
             Projects="$(MSBuildProjectFile)"
             Targets="GetEFProjectMetadata"
             Properties="TargetFramework=$(TargetFrameworks.Split(';')[0]);EFProjectMetadataFile=$(EFProjectMetadataFile)" />
    <ItemGroup Condition=" '$(TargetFramework)' != '' ">
      <EFProjectMetadata Include="AssemblyName: $(AssemblyName)" />
      <EFProjectMetadata Include="Language: $(Language)" />
      <EFProjectMetadata Include="OutputPath: $(OutputPath)" />
      <EFProjectMetadata Include="Platform: $(Platform)" />
      <EFProjectMetadata Include="PlatformTarget: $(PlatformTarget)" />
      <EFProjectMetadata Include="ProjectAssetsFile: $(ProjectAssetsFile)" />
      <EFProjectMetadata Include="ProjectDir: $(ProjectDir)" />
      <EFProjectMetadata Include="RootNamespace: $(RootNamespace)" />
      <EFProjectMetadata Include="RuntimeFrameworkVersion: $(RuntimeFrameworkVersion)" />
      <EFProjectMetadata Include="TargetFileName: $(TargetFileName)" />
      <EFProjectMetadata Include="TargetFrameworkMoniker: $(TargetFrameworkMoniker)" />
    </ItemGroup>
    <WriteLinesToFile Condition=" '$(TargetFramework)' != '' "
                      File="$(EFProjectMetadataFile)"
                      Lines="@(EFProjectMetadata)" />
  </Target>
</Project>
