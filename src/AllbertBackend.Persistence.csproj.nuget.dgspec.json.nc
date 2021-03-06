{
  "format": 1,
  "restore": {
    "/Users/basicpreset/src/allbert_be/src/Infrastructure/AllbertBackend.Persistence/AllbertBackend.Persistence.csproj": {}
  },
  "projects": {
    "/Users/basicpreset/src/allbert_be/src/Core/AllbertBackend.Application/AllbertBackend.Application.csproj": {
      "version": "1.0.0",
      "restore": {
        "projectUniqueName": "/Users/basicpreset/src/allbert_be/src/Core/AllbertBackend.Application/AllbertBackend.Application.csproj",
        "projectName": "AllbertBackend.Application",
        "projectPath": "/Users/basicpreset/src/allbert_be/src/Core/AllbertBackend.Application/AllbertBackend.Application.csproj",
        "packagesPath": "/Users/basicpreset/.nuget/packages/",
        "outputPath": "/Users/basicpreset/src/allbert_be/src/Core/AllbertBackend.Application/obj/",
        "projectStyle": "PackageReference",
        "configFilePaths": [
          "/Users/basicpreset/.nuget/NuGet/NuGet.Config"
        ],
        "originalTargetFrameworks": [
          "net5.0"
        ],
        "sources": {
          "https://api.nuget.org/v3/index.json": {}
        },
        "frameworks": {
          "net5.0": {
            "targetAlias": "net5.0",
            "projectReferences": {
              "/Users/basicpreset/src/allbert_be/src/Core/AllbertBackend.Domain/AllbertBackend.Domain.csproj": {
                "projectPath": "/Users/basicpreset/src/allbert_be/src/Core/AllbertBackend.Domain/AllbertBackend.Domain.csproj"
              }
            }
          }
        },
        "warningProperties": {
          "warnAsError": [
            "NU1605"
          ]
        }
      },
      "frameworks": {
        "net5.0": {
          "targetAlias": "net5.0",
          "dependencies": {
            "AWSSDK.Core": {
              "target": "Package",
              "version": "[3.7.0.31, )"
            },
            "AWSSDK.Extensions.NETCore.Setup": {
              "target": "Package",
              "version": "[3.7.0.1, )"
            },
            "AutoMapper": {
              "target": "Package",
              "version": "[10.1.1, )"
            },
            "AutoMapper.Extensions.Microsoft.DependencyInjection": {
              "target": "Package",
              "version": "[8.1.1, )"
            },
            "FluentValidation": {
              "target": "Package",
              "version": "[10.2.2, )"
            },
            "GoogleApi": {
              "target": "Package",
              "version": "[3.10.11, )"
            },
            "MediatR": {
              "target": "Package",
              "version": "[9.0.0, )"
            },
            "MediatR.Extensions.Microsoft.DependencyInjection": {
              "target": "Package",
              "version": "[9.0.0, )"
            },
            "Microsoft.AspNetCore.Http.Features": {
              "target": "Package",
              "version": "[5.0.6, )"
            },
            "Microsoft.AspNetCore.SignalR": {
              "target": "Package",
              "version": "[1.1.0, )"
            },
            "Microsoft.EntityFrameworkCore": {
              "target": "Package",
              "version": "[5.0.9, )"
            },
            "Microsoft.Extensions.DependencyInjection.Abstractions": {
              "target": "Package",
              "version": "[5.0.0, )"
            }
          },
          "imports": [
            "net461",
            "net462",
            "net47",
            "net471",
            "net472",
            "net48"
          ],
          "assetTargetFallback": true,
          "warn": true,
          "frameworkReferences": {
            "Microsoft.NETCore.App": {
              "privateAssets": "all"
            }
          },
          "runtimeIdentifierGraphPath": "/usr/local/share/dotnet/sdk/5.0.400/RuntimeIdentifierGraph.json"
        }
      }
    },
    "/Users/basicpreset/src/allbert_be/src/Core/AllbertBackend.Domain/AllbertBackend.Domain.csproj": {
      "version": "1.0.0",
      "restore": {
        "projectUniqueName": "/Users/basicpreset/src/allbert_be/src/Core/AllbertBackend.Domain/AllbertBackend.Domain.csproj",
        "projectName": "AllbertBackend.Domain",
        "projectPath": "/Users/basicpreset/src/allbert_be/src/Core/AllbertBackend.Domain/AllbertBackend.Domain.csproj",
        "packagesPath": "/Users/basicpreset/.nuget/packages/",
        "outputPath": "/Users/basicpreset/src/allbert_be/src/Core/AllbertBackend.Domain/obj/",
        "projectStyle": "PackageReference",
        "configFilePaths": [
          "/Users/basicpreset/.nuget/NuGet/NuGet.Config"
        ],
        "originalTargetFrameworks": [
          "net5.0"
        ],
        "sources": {
          "https://api.nuget.org/v3/index.json": {}
        },
        "frameworks": {
          "net5.0": {
            "targetAlias": "net5.0",
            "projectReferences": {}
          }
        },
        "warningProperties": {
          "warnAsError": [
            "NU1605"
          ]
        }
      },
      "frameworks": {
        "net5.0": {
          "targetAlias": "net5.0",
          "dependencies": {
            "Microsoft.AspNetCore.Mvc.Core": {
              "target": "Package",
              "version": "[2.2.5, )"
            }
          },
          "imports": [
            "net461",
            "net462",
            "net47",
            "net471",
            "net472",
            "net48"
          ],
          "assetTargetFallback": true,
          "warn": true,
          "frameworkReferences": {
            "Microsoft.NETCore.App": {
              "privateAssets": "all"
            }
          },
          "runtimeIdentifierGraphPath": "/usr/local/share/dotnet/sdk/5.0.400/RuntimeIdentifierGraph.json"
        }
      }
    },
    "/Users/basicpreset/src/allbert_be/src/Infrastructure/AllbertBackend.Persistence/AllbertBackend.Persistence.csproj": {
      "version": "1.0.0",
      "restore": {
        "projectUniqueName": "/Users/basicpreset/src/allbert_be/src/Infrastructure/AllbertBackend.Persistence/AllbertBackend.Persistence.csproj",
        "projectName": "AllbertBackend.Persistence",
        "projectPath": "/Users/basicpreset/src/allbert_be/src/Infrastructure/AllbertBackend.Persistence/AllbertBackend.Persistence.csproj",
        "packagesPath": "/Users/basicpreset/.nuget/packages/",
        "outputPath": "/Users/basicpreset/src/allbert_be/src/Infrastructure/AllbertBackend.Persistence/obj/",
        "projectStyle": "PackageReference",
        "configFilePaths": [
          "/Users/basicpreset/.nuget/NuGet/NuGet.Config"
        ],
        "originalTargetFrameworks": [
          "net5.0"
        ],
        "sources": {
          "https://api.nuget.org/v3/index.json": {}
        },
        "frameworks": {
          "net5.0": {
            "targetAlias": "net5.0",
            "projectReferences": {
              "/Users/basicpreset/src/allbert_be/src/Core/AllbertBackend.Application/AllbertBackend.Application.csproj": {
                "projectPath": "/Users/basicpreset/src/allbert_be/src/Core/AllbertBackend.Application/AllbertBackend.Application.csproj"
              },
              "/Users/basicpreset/src/allbert_be/src/Core/AllbertBackend.Domain/AllbertBackend.Domain.csproj": {
                "projectPath": "/Users/basicpreset/src/allbert_be/src/Core/AllbertBackend.Domain/AllbertBackend.Domain.csproj"
              }
            }
          }
        },
        "warningProperties": {
          "warnAsError": [
            "NU1605"
          ]
        }
      },
      "frameworks": {
        "net5.0": {
          "targetAlias": "net5.0",
          "dependencies": {
            "Microsoft.AspNetCore.SignalR": {
              "target": "Package",
              "version": "[1.1.0, )"
            },
            "Microsoft.EntityFrameworkCore": {
              "target": "Package",
              "version": "[5.0.9, )"
            },
            "Microsoft.EntityFrameworkCore.Tools": {
              "include": "Runtime, Build, Native, ContentFiles, Analyzers, BuildTransitive",
              "suppressParent": "All",
              "target": "Package",
              "version": "[5.0.6, )"
            },
            "Microsoft.Extensions.Configuration.Abstractions": {
              "target": "Package",
              "version": "[5.0.0, )"
            },
            "Microsoft.Extensions.Logging.Console": {
              "target": "Package",
              "version": "[5.0.0, )"
            },
            "Npgsql": {
              "target": "Package",
              "version": "[5.0.5, )"
            },
            "Npgsql.EntityFrameworkCore.PostgreSQL": {
              "target": "Package",
              "version": "[5.0.6, )"
            },
            "Z.EntityFramework.Extensions.EFCore": {
              "target": "Package",
              "version": "[5.2.12, )"
            },
            "Z.EntityFramework.Plus.EFCore": {
              "target": "Package",
              "version": "[5.2.12, )"
            }
          },
          "imports": [
            "net461",
            "net462",
            "net47",
            "net471",
            "net472",
            "net48"
          ],
          "assetTargetFallback": true,
          "warn": true,
          "frameworkReferences": {
            "Microsoft.NETCore.App": {
              "privateAssets": "all"
            }
          },
          "runtimeIdentifierGraphPath": "/usr/local/share/dotnet/sdk/5.0.400/RuntimeIdentifierGraph.json"
        }
      }
    }
  }
}
