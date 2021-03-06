{
  "runtimeTarget": {
    "name": ".NETCoreApp,Version=v5.0",
    "signature": ""
  },
  "compilationOptions": {},
  "targets": {
    ".NETCoreApp,Version=v5.0": {
      "AllbertBackend.Infrastructure/1.0.0": {
        "dependencies": {
          "AWSSDK.S3": "3.7.0.31",
          "AllbertBackend.Application": "1.0.0",
          "AllbertBackend.Domain": "1.0.0",
          "AllbertBackend.Persistence": "1.0.0",
          "FluentScheduler": "5.5.1",
          "Microsoft.Extensions.Configuration.Binder": "5.0.0"
        },
        "runtime": {
          "AllbertBackend.Infrastructure.dll": {}
        }
      },
      "AutoMapper/10.1.1": {
        "dependencies": {
          "Microsoft.CSharp": "4.7.0",
          "System.Reflection.Emit": "4.7.0"
        },
        "runtime": {
          "lib/netstandard2.0/AutoMapper.dll": {
            "assemblyVersion": "10.0.0.0",
            "fileVersion": "10.1.1.0"
          }
        }
      },
      "AutoMapper.Extensions.Microsoft.DependencyInjection/8.1.1": {
        "dependencies": {
          "AutoMapper": "10.1.1",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0",
          "Microsoft.Extensions.Options": "5.0.0"
        },
        "runtime": {
          "lib/netstandard2.0/AutoMapper.Extensions.Microsoft.DependencyInjection.dll": {
            "assemblyVersion": "8.0.0.0",
            "fileVersion": "8.1.1.0"
          }
        }
      },
      "AWSSDK.Core/3.7.0.31": {
        "runtime": {
          "lib/netcoreapp3.1/AWSSDK.Core.dll": {
            "assemblyVersion": "3.3.0.0",
            "fileVersion": "3.7.0.31"
          }
        }
      },
      "AWSSDK.Extensions.NETCore.Setup/3.7.0.1": {
        "dependencies": {
          "AWSSDK.Core": "3.7.0.31",
          "Microsoft.Extensions.Configuration.Abstractions": "5.0.0",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0",
          "Microsoft.Extensions.Logging.Abstractions": "5.0.0"
        },
        "runtime": {
          "lib/netstandard2.0/AWSSDK.Extensions.NETCore.Setup.dll": {
            "assemblyVersion": "3.3.0.0",
            "fileVersion": "3.3.100.0"
          }
        }
      },
      "AWSSDK.S3/3.7.0.31": {
        "dependencies": {
          "AWSSDK.Core": "3.7.0.31"
        },
        "runtime": {
          "lib/netcoreapp3.1/AWSSDK.S3.dll": {
            "assemblyVersion": "3.3.0.0",
            "fileVersion": "3.7.0.31"
          }
        }
      },
      "FluentScheduler/5.5.1": {
        "runtime": {
          "lib/netstandard2.1/FluentScheduler.dll": {
            "assemblyVersion": "5.5.1.0",
            "fileVersion": "5.5.1.0"
          }
        }
      },
      "FluentValidation/10.2.2": {
        "runtime": {
          "lib/net5.0/FluentValidation.dll": {
            "assemblyVersion": "9.0.0.0",
            "fileVersion": "10.2.2.0"
          }
        }
      },
      "GoogleApi/3.10.11": {
        "dependencies": {
          "Newtonsoft.Json": "11.0.2",
          "Portable.BouncyCastle": "1.8.1.3"
        },
        "runtime": {
          "lib/netstandard2.1/GoogleApi.dll": {
            "assemblyVersion": "3.10.11.0",
            "fileVersion": "3.10.11.0"
          }
        }
      },
      "MediatR/9.0.0": {
        "runtime": {
          "lib/netstandard2.1/MediatR.dll": {
            "assemblyVersion": "9.0.0.0",
            "fileVersion": "9.0.0.0"
          }
        }
      },
      "MediatR.Extensions.Microsoft.DependencyInjection/9.0.0": {
        "dependencies": {
          "MediatR": "9.0.0",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0"
        },
        "runtime": {
          "lib/netstandard2.0/MediatR.Extensions.Microsoft.DependencyInjection.dll": {
            "assemblyVersion": "9.0.0.0",
            "fileVersion": "9.0.0.0"
          }
        }
      },
      "Microsoft.AspNetCore.Authentication.Abstractions/2.2.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Http.Abstractions": "2.2.0",
          "Microsoft.Extensions.Logging.Abstractions": "5.0.0",
          "Microsoft.Extensions.Options": "5.0.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Authentication.Abstractions.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.Authentication.Core/2.2.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Authentication.Abstractions": "2.2.0",
          "Microsoft.AspNetCore.Http": "2.2.0",
          "Microsoft.AspNetCore.Http.Extensions": "2.2.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Authentication.Core.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.Authorization/2.2.0": {
        "dependencies": {
          "Microsoft.Extensions.Logging.Abstractions": "5.0.0",
          "Microsoft.Extensions.Options": "5.0.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Authorization.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.Authorization.Policy/2.2.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Authentication.Abstractions": "2.2.0",
          "Microsoft.AspNetCore.Authorization": "2.2.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Authorization.Policy.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.Connections.Abstractions/2.2.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Http.Features": "5.0.6",
          "System.IO.Pipelines": "5.0.1"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Connections.Abstractions.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.Hosting.Abstractions/2.2.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Hosting.Server.Abstractions": "2.2.0",
          "Microsoft.AspNetCore.Http.Abstractions": "2.2.0",
          "Microsoft.Extensions.Hosting.Abstractions": "2.2.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Hosting.Abstractions.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.Hosting.Server.Abstractions/2.2.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Http.Features": "5.0.6",
          "Microsoft.Extensions.Configuration.Abstractions": "5.0.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Hosting.Server.Abstractions.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.Http/2.2.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Http.Abstractions": "2.2.0",
          "Microsoft.AspNetCore.WebUtilities": "2.2.0",
          "Microsoft.Extensions.ObjectPool": "2.2.0",
          "Microsoft.Extensions.Options": "5.0.0",
          "Microsoft.Net.Http.Headers": "2.2.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Http.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.Http.Abstractions/2.2.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Http.Features": "5.0.6",
          "System.Text.Encodings.Web": "4.5.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Http.Abstractions.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.Http.Connections/1.1.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Authorization.Policy": "2.2.0",
          "Microsoft.AspNetCore.Hosting.Abstractions": "2.2.0",
          "Microsoft.AspNetCore.Http": "2.2.0",
          "Microsoft.AspNetCore.Http.Connections.Common": "1.1.0",
          "Microsoft.AspNetCore.Routing": "2.2.0",
          "Microsoft.AspNetCore.WebSockets": "2.2.0",
          "Newtonsoft.Json": "11.0.2",
          "System.Security.Principal.Windows": "5.0.0"
        },
        "runtime": {
          "lib/netcoreapp2.2/Microsoft.AspNetCore.Http.Connections.dll": {
            "assemblyVersion": "1.1.0.0",
            "fileVersion": "1.1.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.Http.Connections.Common/1.1.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Connections.Abstractions": "2.2.0",
          "Newtonsoft.Json": "11.0.2",
          "System.Buffers": "4.5.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Http.Connections.Common.dll": {
            "assemblyVersion": "1.1.0.0",
            "fileVersion": "1.1.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.Http.Extensions/2.2.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Http.Abstractions": "2.2.0",
          "Microsoft.Extensions.FileProviders.Abstractions": "2.2.0",
          "Microsoft.Net.Http.Headers": "2.2.0",
          "System.Buffers": "4.5.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Http.Extensions.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.Http.Features/5.0.6": {
        "dependencies": {
          "Microsoft.Extensions.Primitives": "5.0.1",
          "System.IO.Pipelines": "5.0.1"
        },
        "runtime": {
          "lib/net5.0/Microsoft.AspNetCore.Http.Features.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.621.22305"
          }
        }
      },
      "Microsoft.AspNetCore.Mvc.Abstractions/2.2.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Routing.Abstractions": "2.2.0",
          "Microsoft.Net.Http.Headers": "2.2.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Mvc.Abstractions.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.0"
          }
        }
      },
      "Microsoft.AspNetCore.Mvc.Core/2.2.5": {
        "dependencies": {
          "Microsoft.AspNetCore.Authentication.Core": "2.2.0",
          "Microsoft.AspNetCore.Authorization.Policy": "2.2.0",
          "Microsoft.AspNetCore.Hosting.Abstractions": "2.2.0",
          "Microsoft.AspNetCore.Http": "2.2.0",
          "Microsoft.AspNetCore.Http.Extensions": "2.2.0",
          "Microsoft.AspNetCore.Mvc.Abstractions": "2.2.0",
          "Microsoft.AspNetCore.ResponseCaching.Abstractions": "2.2.0",
          "Microsoft.AspNetCore.Routing": "2.2.0",
          "Microsoft.AspNetCore.Routing.Abstractions": "2.2.0",
          "Microsoft.Extensions.DependencyInjection": "5.0.2",
          "Microsoft.Extensions.DependencyModel": "2.1.0",
          "Microsoft.Extensions.FileProviders.Abstractions": "2.2.0",
          "Microsoft.Extensions.Logging.Abstractions": "5.0.0",
          "System.Diagnostics.DiagnosticSource": "5.0.1",
          "System.Threading.Tasks.Extensions": "4.5.1"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Mvc.Core.dll": {
            "assemblyVersion": "2.2.5.0",
            "fileVersion": "2.2.5.19109"
          }
        }
      },
      "Microsoft.AspNetCore.ResponseCaching.Abstractions/2.2.0": {
        "dependencies": {
          "Microsoft.Extensions.Primitives": "5.0.1"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.ResponseCaching.Abstractions.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.Routing/2.2.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Http.Extensions": "2.2.0",
          "Microsoft.AspNetCore.Routing.Abstractions": "2.2.0",
          "Microsoft.Extensions.Logging.Abstractions": "5.0.0",
          "Microsoft.Extensions.ObjectPool": "2.2.0",
          "Microsoft.Extensions.Options": "5.0.0"
        },
        "runtime": {
          "lib/netcoreapp2.2/Microsoft.AspNetCore.Routing.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.Routing.Abstractions/2.2.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Http.Abstractions": "2.2.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Routing.Abstractions.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.SignalR/1.1.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Http.Connections": "1.1.0",
          "Microsoft.AspNetCore.SignalR.Core": "1.1.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.SignalR.dll": {
            "assemblyVersion": "1.1.0.0",
            "fileVersion": "1.1.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.SignalR.Common/1.1.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Connections.Abstractions": "2.2.0",
          "Microsoft.Extensions.Options": "5.0.0",
          "Newtonsoft.Json": "11.0.2",
          "System.Buffers": "4.5.0"
        },
        "runtime": {
          "lib/netcoreapp2.2/Microsoft.AspNetCore.SignalR.Common.dll": {
            "assemblyVersion": "1.1.0.0",
            "fileVersion": "1.1.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.SignalR.Core/1.1.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Authorization": "2.2.0",
          "Microsoft.AspNetCore.SignalR.Common": "1.1.0",
          "Microsoft.AspNetCore.SignalR.Protocols.Json": "1.1.0",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0",
          "Microsoft.Extensions.Logging.Abstractions": "5.0.0",
          "System.Reflection.Emit": "4.7.0",
          "System.Threading.Channels": "4.5.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.SignalR.Core.dll": {
            "assemblyVersion": "1.1.0.0",
            "fileVersion": "1.1.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.SignalR.Protocols.Json/1.1.0": {
        "dependencies": {
          "Microsoft.AspNetCore.SignalR.Common": "1.1.0",
          "Newtonsoft.Json": "11.0.2"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.SignalR.Protocols.Json.dll": {
            "assemblyVersion": "1.1.0.0",
            "fileVersion": "1.1.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.WebSockets/2.2.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Http.Extensions": "2.2.0",
          "Microsoft.Extensions.Logging.Abstractions": "5.0.0",
          "Microsoft.Extensions.Options": "5.0.0",
          "System.Net.WebSockets.WebSocketProtocol": "4.5.1"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.WebSockets.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18316"
          }
        }
      },
      "Microsoft.AspNetCore.WebUtilities/2.2.0": {
        "dependencies": {
          "Microsoft.Net.Http.Headers": "2.2.0",
          "System.Text.Encodings.Web": "4.5.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.WebUtilities.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18316"
          }
        }
      },
      "Microsoft.CSharp/4.7.0": {},
      "Microsoft.DotNet.PlatformAbstractions/2.1.0": {
        "dependencies": {
          "System.AppContext": "4.1.0",
          "System.Collections": "4.3.0",
          "System.IO": "4.3.0",
          "System.IO.FileSystem": "4.3.0",
          "System.Reflection.TypeExtensions": "4.7.0",
          "System.Runtime.Extensions": "4.3.0",
          "System.Runtime.InteropServices": "4.3.0",
          "System.Runtime.InteropServices.RuntimeInformation": "4.0.0"
        },
        "runtime": {
          "lib/netstandard1.3/Microsoft.DotNet.PlatformAbstractions.dll": {
            "assemblyVersion": "2.1.0.0",
            "fileVersion": "2.1.0.0"
          }
        }
      },
      "Microsoft.EntityFrameworkCore/5.0.9": {
        "dependencies": {
          "Microsoft.EntityFrameworkCore.Abstractions": "5.0.9",
          "Microsoft.EntityFrameworkCore.Analyzers": "5.0.9",
          "Microsoft.Extensions.Caching.Memory": "5.0.0",
          "Microsoft.Extensions.DependencyInjection": "5.0.2",
          "Microsoft.Extensions.Logging": "5.0.0",
          "System.Collections.Immutable": "5.0.0",
          "System.ComponentModel.Annotations": "5.0.0",
          "System.Diagnostics.DiagnosticSource": "5.0.1"
        },
        "runtime": {
          "lib/netstandard2.1/Microsoft.EntityFrameworkCore.dll": {
            "assemblyVersion": "5.0.9.0",
            "fileVersion": "5.0.921.36501"
          }
        }
      },
      "Microsoft.EntityFrameworkCore.Abstractions/5.0.9": {
        "runtime": {
          "lib/netstandard2.1/Microsoft.EntityFrameworkCore.Abstractions.dll": {
            "assemblyVersion": "5.0.9.0",
            "fileVersion": "5.0.921.36501"
          }
        }
      },
      "Microsoft.EntityFrameworkCore.Analyzers/5.0.9": {},
      "Microsoft.EntityFrameworkCore.Relational/5.0.6": {
        "dependencies": {
          "Microsoft.EntityFrameworkCore": "5.0.9",
          "Microsoft.Extensions.Configuration.Abstractions": "5.0.0"
        },
        "runtime": {
          "lib/netstandard2.1/Microsoft.EntityFrameworkCore.Relational.dll": {
            "assemblyVersion": "5.0.6.0",
            "fileVersion": "5.0.621.21307"
          }
        }
      },
      "Microsoft.Extensions.Caching.Abstractions/5.0.0": {
        "dependencies": {
          "Microsoft.Extensions.Primitives": "5.0.1"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Caching.Abstractions.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        }
      },
      "Microsoft.Extensions.Caching.Memory/5.0.0": {
        "dependencies": {
          "Microsoft.Extensions.Caching.Abstractions": "5.0.0",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0",
          "Microsoft.Extensions.Logging.Abstractions": "5.0.0",
          "Microsoft.Extensions.Options": "5.0.0",
          "Microsoft.Extensions.Primitives": "5.0.1"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Caching.Memory.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        }
      },
      "Microsoft.Extensions.Configuration/5.0.0": {
        "dependencies": {
          "Microsoft.Extensions.Configuration.Abstractions": "5.0.0",
          "Microsoft.Extensions.Primitives": "5.0.1"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Configuration.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        }
      },
      "Microsoft.Extensions.Configuration.Abstractions/5.0.0": {
        "dependencies": {
          "Microsoft.Extensions.Primitives": "5.0.1"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Configuration.Abstractions.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        }
      },
      "Microsoft.Extensions.Configuration.Binder/5.0.0": {
        "dependencies": {
          "Microsoft.Extensions.Configuration.Abstractions": "5.0.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Configuration.Binder.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        }
      },
      "Microsoft.Extensions.DependencyInjection/5.0.2": {
        "dependencies": {
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0"
        },
        "runtime": {
          "lib/net5.0/Microsoft.Extensions.DependencyInjection.dll": {
            "assemblyVersion": "5.0.0.1",
            "fileVersion": "5.0.821.31504"
          }
        }
      },
      "Microsoft.Extensions.DependencyInjection.Abstractions/5.0.0": {
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.DependencyInjection.Abstractions.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        }
      },
      "Microsoft.Extensions.DependencyModel/2.1.0": {
        "dependencies": {
          "Microsoft.DotNet.PlatformAbstractions": "2.1.0",
          "Newtonsoft.Json": "11.0.2",
          "System.Diagnostics.Debug": "4.3.0",
          "System.Dynamic.Runtime": "4.0.11",
          "System.Linq": "4.3.0"
        },
        "runtime": {
          "lib/netstandard1.6/Microsoft.Extensions.DependencyModel.dll": {
            "assemblyVersion": "2.1.0.0",
            "fileVersion": "2.1.0.0"
          }
        }
      },
      "Microsoft.Extensions.FileProviders.Abstractions/2.2.0": {
        "dependencies": {
          "Microsoft.Extensions.Primitives": "5.0.1"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.FileProviders.Abstractions.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18315"
          }
        }
      },
      "Microsoft.Extensions.Hosting.Abstractions/2.2.0": {
        "dependencies": {
          "Microsoft.Extensions.Configuration.Abstractions": "5.0.0",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0",
          "Microsoft.Extensions.FileProviders.Abstractions": "2.2.0",
          "Microsoft.Extensions.Logging.Abstractions": "5.0.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Hosting.Abstractions.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18316"
          }
        }
      },
      "Microsoft.Extensions.Logging/5.0.0": {
        "dependencies": {
          "Microsoft.Extensions.DependencyInjection": "5.0.2",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0",
          "Microsoft.Extensions.Logging.Abstractions": "5.0.0",
          "Microsoft.Extensions.Options": "5.0.0"
        },
        "runtime": {
          "lib/netstandard2.1/Microsoft.Extensions.Logging.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        }
      },
      "Microsoft.Extensions.Logging.Abstractions/5.0.0": {
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Logging.Abstractions.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        }
      },
      "Microsoft.Extensions.Logging.Configuration/5.0.0": {
        "dependencies": {
          "Microsoft.Extensions.Configuration": "5.0.0",
          "Microsoft.Extensions.Configuration.Abstractions": "5.0.0",
          "Microsoft.Extensions.Configuration.Binder": "5.0.0",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0",
          "Microsoft.Extensions.Logging": "5.0.0",
          "Microsoft.Extensions.Logging.Abstractions": "5.0.0",
          "Microsoft.Extensions.Options": "5.0.0",
          "Microsoft.Extensions.Options.ConfigurationExtensions": "5.0.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Logging.Configuration.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        }
      },
      "Microsoft.Extensions.Logging.Console/5.0.0": {
        "dependencies": {
          "Microsoft.Extensions.Configuration.Abstractions": "5.0.0",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0",
          "Microsoft.Extensions.Logging": "5.0.0",
          "Microsoft.Extensions.Logging.Abstractions": "5.0.0",
          "Microsoft.Extensions.Logging.Configuration": "5.0.0",
          "Microsoft.Extensions.Options": "5.0.0",
          "Microsoft.Extensions.Options.ConfigurationExtensions": "5.0.0"
        },
        "runtime": {
          "lib/netcoreapp3.0/Microsoft.Extensions.Logging.Console.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        }
      },
      "Microsoft.Extensions.ObjectPool/2.2.0": {
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.ObjectPool.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18315"
          }
        }
      },
      "Microsoft.Extensions.Options/5.0.0": {
        "dependencies": {
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0",
          "Microsoft.Extensions.Primitives": "5.0.1"
        },
        "runtime": {
          "lib/net5.0/Microsoft.Extensions.Options.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        }
      },
      "Microsoft.Extensions.Options.ConfigurationExtensions/5.0.0": {
        "dependencies": {
          "Microsoft.Extensions.Configuration.Abstractions": "5.0.0",
          "Microsoft.Extensions.Configuration.Binder": "5.0.0",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0",
          "Microsoft.Extensions.Options": "5.0.0",
          "Microsoft.Extensions.Primitives": "5.0.1"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Options.ConfigurationExtensions.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        }
      },
      "Microsoft.Extensions.Primitives/5.0.1": {
        "runtime": {
          "lib/netcoreapp3.0/Microsoft.Extensions.Primitives.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.521.16609"
          }
        }
      },
      "Microsoft.Net.Http.Headers/2.2.0": {
        "dependencies": {
          "Microsoft.Extensions.Primitives": "5.0.1",
          "System.Buffers": "4.5.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Net.Http.Headers.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18316"
          }
        }
      },
      "Microsoft.NETCore.Platforms/5.0.0": {},
      "Microsoft.NETCore.Targets/1.1.0": {},
      "Microsoft.Win32.SystemEvents/5.0.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Win32.SystemEvents.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        },
        "runtimeTargets": {
          "runtimes/win/lib/netcoreapp3.0/Microsoft.Win32.SystemEvents.dll": {
            "rid": "win",
            "assetType": "runtime",
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        }
      },
      "NETStandard.Library/2.0.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0"
        }
      },
      "Newtonsoft.Json/11.0.2": {
        "runtime": {
          "lib/netstandard2.0/Newtonsoft.Json.dll": {
            "assemblyVersion": "11.0.0.0",
            "fileVersion": "11.0.2.21924"
          }
        }
      },
      "Npgsql/5.0.5": {
        "dependencies": {
          "System.Runtime.CompilerServices.Unsafe": "4.6.0"
        },
        "runtime": {
          "lib/net5.0/Npgsql.dll": {
            "assemblyVersion": "5.0.5.0",
            "fileVersion": "5.0.5.0"
          }
        }
      },
      "Npgsql.EntityFrameworkCore.PostgreSQL/5.0.6": {
        "dependencies": {
          "Microsoft.EntityFrameworkCore": "5.0.9",
          "Microsoft.EntityFrameworkCore.Abstractions": "5.0.9",
          "Microsoft.EntityFrameworkCore.Relational": "5.0.6",
          "Npgsql": "5.0.5"
        },
        "runtime": {
          "lib/netstandard2.1/Npgsql.EntityFrameworkCore.PostgreSQL.dll": {
            "assemblyVersion": "5.0.6.0",
            "fileVersion": "5.0.6.0"
          }
        }
      },
      "Portable.BouncyCastle/1.8.1.3": {
        "runtime": {
          "lib/netstandard2.0/BouncyCastle.Crypto.dll": {
            "assemblyVersion": "1.8.1.0",
            "fileVersion": "1.8.1.146"
          }
        }
      },
      "runtime.native.System/4.0.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "Microsoft.NETCore.Targets": "1.1.0"
        }
      },
      "System.AppContext/4.1.0": {
        "dependencies": {
          "System.Runtime": "4.3.0"
        }
      },
      "System.Buffers/4.5.0": {},
      "System.Collections/4.3.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0"
        }
      },
      "System.Collections.Concurrent/4.3.0": {
        "dependencies": {
          "System.Collections": "4.3.0",
          "System.Diagnostics.Debug": "4.3.0",
          "System.Diagnostics.Tracing": "4.3.0",
          "System.Globalization": "4.3.0",
          "System.Reflection": "4.3.0",
          "System.Resources.ResourceManager": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Runtime.Extensions": "4.3.0",
          "System.Threading": "4.3.0",
          "System.Threading.Tasks": "4.3.0"
        }
      },
      "System.Collections.Immutable/5.0.0": {},
      "System.Collections.NonGeneric/4.3.0": {
        "dependencies": {
          "System.Diagnostics.Debug": "4.3.0",
          "System.Globalization": "4.3.0",
          "System.Resources.ResourceManager": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Runtime.Extensions": "4.3.0",
          "System.Threading": "4.3.0"
        }
      },
      "System.ComponentModel.Annotations/5.0.0": {},
      "System.Configuration.ConfigurationManager/5.0.0": {
        "dependencies": {
          "System.Security.Cryptography.ProtectedData": "5.0.0",
          "System.Security.Permissions": "5.0.0"
        },
        "runtime": {
          "lib/netstandard2.0/System.Configuration.ConfigurationManager.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        }
      },
      "System.Data.Common/4.3.0": {
        "dependencies": {
          "System.Collections": "4.3.0",
          "System.Globalization": "4.3.0",
          "System.IO": "4.3.0",
          "System.Resources.ResourceManager": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Runtime.Extensions": "4.3.0",
          "System.Text.RegularExpressions": "4.3.0",
          "System.Threading.Tasks": "4.3.0"
        }
      },
      "System.Diagnostics.Debug/4.3.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0"
        }
      },
      "System.Diagnostics.DiagnosticSource/5.0.1": {
        "runtime": {
          "lib/net5.0/System.Diagnostics.DiagnosticSource.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.220.61120"
          }
        }
      },
      "System.Diagnostics.Tracing/4.3.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0"
        }
      },
      "System.Drawing.Common/5.0.0": {
        "dependencies": {
          "Microsoft.Win32.SystemEvents": "5.0.0"
        },
        "runtime": {
          "lib/netcoreapp3.0/System.Drawing.Common.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        },
        "runtimeTargets": {
          "runtimes/unix/lib/netcoreapp3.0/System.Drawing.Common.dll": {
            "rid": "unix",
            "assetType": "runtime",
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          },
          "runtimes/win/lib/netcoreapp3.0/System.Drawing.Common.dll": {
            "rid": "win",
            "assetType": "runtime",
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        }
      },
      "System.Dynamic.Runtime/4.0.11": {
        "dependencies": {
          "System.Collections": "4.3.0",
          "System.Diagnostics.Debug": "4.3.0",
          "System.Globalization": "4.3.0",
          "System.Linq": "4.3.0",
          "System.Linq.Expressions": "4.3.0",
          "System.ObjectModel": "4.3.0",
          "System.Reflection": "4.3.0",
          "System.Reflection.Emit": "4.7.0",
          "System.Reflection.Emit.ILGeneration": "4.3.0",
          "System.Reflection.Primitives": "4.3.0",
          "System.Reflection.TypeExtensions": "4.7.0",
          "System.Resources.ResourceManager": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Runtime.Extensions": "4.3.0",
          "System.Threading": "4.3.0"
        }
      },
      "System.Globalization/4.3.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0"
        }
      },
      "System.IO/4.3.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0",
          "System.Text.Encoding": "4.3.0",
          "System.Threading.Tasks": "4.3.0"
        }
      },
      "System.IO.FileSystem/4.3.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.IO": "4.3.0",
          "System.IO.FileSystem.Primitives": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Runtime.Handles": "4.3.0",
          "System.Text.Encoding": "4.3.0",
          "System.Threading.Tasks": "4.3.0"
        }
      },
      "System.IO.FileSystem.Primitives/4.3.0": {
        "dependencies": {
          "System.Runtime": "4.3.0"
        }
      },
      "System.IO.Pipelines/5.0.1": {
        "runtime": {
          "lib/netcoreapp3.0/System.IO.Pipelines.dll": {
            "assemblyVersion": "5.0.0.1",
            "fileVersion": "5.0.120.57516"
          }
        }
      },
      "System.Linq/4.3.0": {
        "dependencies": {
          "System.Collections": "4.3.0",
          "System.Diagnostics.Debug": "4.3.0",
          "System.Resources.ResourceManager": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Runtime.Extensions": "4.3.0"
        }
      },
      "System.Linq.Expressions/4.3.0": {
        "dependencies": {
          "System.Collections": "4.3.0",
          "System.Diagnostics.Debug": "4.3.0",
          "System.Globalization": "4.3.0",
          "System.IO": "4.3.0",
          "System.Linq": "4.3.0",
          "System.ObjectModel": "4.3.0",
          "System.Reflection": "4.3.0",
          "System.Reflection.Emit": "4.7.0",
          "System.Reflection.Emit.ILGeneration": "4.3.0",
          "System.Reflection.Emit.Lightweight": "4.3.0",
          "System.Reflection.Extensions": "4.3.0",
          "System.Reflection.Primitives": "4.3.0",
          "System.Reflection.TypeExtensions": "4.7.0",
          "System.Resources.ResourceManager": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Runtime.Extensions": "4.3.0",
          "System.Threading": "4.3.0"
        }
      },
      "System.Linq.Queryable/4.3.0": {
        "dependencies": {
          "System.Collections": "4.3.0",
          "System.Diagnostics.Debug": "4.3.0",
          "System.Linq": "4.3.0",
          "System.Linq.Expressions": "4.3.0",
          "System.Reflection": "4.3.0",
          "System.Reflection.Extensions": "4.3.0",
          "System.Resources.ResourceManager": "4.3.0",
          "System.Runtime": "4.3.0"
        }
      },
      "System.Net.WebSockets.WebSocketProtocol/4.5.1": {
        "runtime": {
          "lib/netcoreapp2.1/System.Net.WebSockets.WebSocketProtocol.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "4.6.26606.5"
          }
        }
      },
      "System.ObjectModel/4.3.0": {
        "dependencies": {
          "System.Collections": "4.3.0",
          "System.Diagnostics.Debug": "4.3.0",
          "System.Resources.ResourceManager": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Threading": "4.3.0"
        }
      },
      "System.Reflection/4.3.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.IO": "4.3.0",
          "System.Reflection.Primitives": "4.3.0",
          "System.Runtime": "4.3.0"
        }
      },
      "System.Reflection.Emit/4.7.0": {},
      "System.Reflection.Emit.ILGeneration/4.3.0": {
        "dependencies": {
          "System.Reflection": "4.3.0",
          "System.Reflection.Primitives": "4.3.0",
          "System.Runtime": "4.3.0"
        }
      },
      "System.Reflection.Emit.Lightweight/4.3.0": {
        "dependencies": {
          "System.Reflection": "4.3.0",
          "System.Reflection.Emit.ILGeneration": "4.3.0",
          "System.Reflection.Primitives": "4.3.0",
          "System.Runtime": "4.3.0"
        }
      },
      "System.Reflection.Extensions/4.3.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Reflection": "4.3.0",
          "System.Runtime": "4.3.0"
        }
      },
      "System.Reflection.Primitives/4.3.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0"
        }
      },
      "System.Reflection.TypeExtensions/4.7.0": {},
      "System.Resources.ResourceManager/4.3.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Globalization": "4.3.0",
          "System.Reflection": "4.3.0",
          "System.Runtime": "4.3.0"
        }
      },
      "System.Runtime/4.3.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "Microsoft.NETCore.Targets": "1.1.0"
        }
      },
      "System.Runtime.CompilerServices.Unsafe/4.6.0": {},
      "System.Runtime.Extensions/4.3.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0"
        }
      },
      "System.Runtime.Handles/4.3.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0"
        }
      },
      "System.Runtime.InteropServices/4.3.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Reflection": "4.3.0",
          "System.Reflection.Primitives": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Runtime.Handles": "4.3.0"
        }
      },
      "System.Runtime.InteropServices.RuntimeInformation/4.0.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "System.Reflection": "4.3.0",
          "System.Resources.ResourceManager": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Runtime.InteropServices": "4.3.0",
          "System.Threading": "4.3.0",
          "runtime.native.System": "4.0.0"
        }
      },
      "System.Security.AccessControl/5.0.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "System.Security.Principal.Windows": "5.0.0"
        }
      },
      "System.Security.Cryptography.ProtectedData/5.0.0": {
        "runtime": {
          "lib/netstandard2.0/System.Security.Cryptography.ProtectedData.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        },
        "runtimeTargets": {
          "runtimes/win/lib/netstandard2.0/System.Security.Cryptography.ProtectedData.dll": {
            "rid": "win",
            "assetType": "runtime",
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        }
      },
      "System.Security.Permissions/5.0.0": {
        "dependencies": {
          "System.Security.AccessControl": "5.0.0",
          "System.Windows.Extensions": "5.0.0"
        },
        "runtime": {
          "lib/net5.0/System.Security.Permissions.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        }
      },
      "System.Security.Principal.Windows/5.0.0": {},
      "System.Text.Encoding/4.3.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0"
        }
      },
      "System.Text.Encoding.Extensions/4.3.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0",
          "System.Text.Encoding": "4.3.0"
        }
      },
      "System.Text.Encodings.Web/4.5.0": {},
      "System.Text.RegularExpressions/4.3.0": {
        "dependencies": {
          "System.Runtime": "4.3.0"
        }
      },
      "System.Threading/4.3.0": {
        "dependencies": {
          "System.Runtime": "4.3.0",
          "System.Threading.Tasks": "4.3.0"
        }
      },
      "System.Threading.Channels/4.5.0": {},
      "System.Threading.Tasks/4.3.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0"
        }
      },
      "System.Threading.Tasks.Extensions/4.5.1": {},
      "System.Windows.Extensions/5.0.0": {
        "dependencies": {
          "System.Drawing.Common": "5.0.0"
        },
        "runtime": {
          "lib/netcoreapp3.0/System.Windows.Extensions.dll": {
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        },
        "runtimeTargets": {
          "runtimes/win/lib/netcoreapp3.0/System.Windows.Extensions.dll": {
            "rid": "win",
            "assetType": "runtime",
            "assemblyVersion": "5.0.0.0",
            "fileVersion": "5.0.20.51904"
          }
        }
      },
      "System.Xml.ReaderWriter/4.3.0": {
        "dependencies": {
          "System.Collections": "4.3.0",
          "System.Diagnostics.Debug": "4.3.0",
          "System.Globalization": "4.3.0",
          "System.IO": "4.3.0",
          "System.IO.FileSystem": "4.3.0",
          "System.IO.FileSystem.Primitives": "4.3.0",
          "System.Resources.ResourceManager": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Runtime.Extensions": "4.3.0",
          "System.Runtime.InteropServices": "4.3.0",
          "System.Text.Encoding": "4.3.0",
          "System.Text.Encoding.Extensions": "4.3.0",
          "System.Text.RegularExpressions": "4.3.0",
          "System.Threading.Tasks": "4.3.0",
          "System.Threading.Tasks.Extensions": "4.5.1"
        }
      },
      "System.Xml.XPath/4.3.0": {
        "dependencies": {
          "System.Collections": "4.3.0",
          "System.Diagnostics.Debug": "4.3.0",
          "System.Globalization": "4.3.0",
          "System.IO": "4.3.0",
          "System.Resources.ResourceManager": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Runtime.Extensions": "4.3.0",
          "System.Threading": "4.3.0",
          "System.Xml.ReaderWriter": "4.3.0"
        }
      },
      "Z.EntityFramework.Extensions.EFCore/5.2.12": {
        "dependencies": {
          "Microsoft.CSharp": "4.7.0",
          "Microsoft.EntityFrameworkCore.Relational": "5.0.6",
          "Newtonsoft.Json": "11.0.2",
          "System.Configuration.ConfigurationManager": "5.0.0",
          "System.Reflection.Emit": "4.7.0",
          "System.Reflection.TypeExtensions": "4.7.0"
        },
        "runtime": {
          "lib/netstandard2.1/Z.EntityFramework.Extensions.EFCore.dll": {
            "assemblyVersion": "5.2.12.0",
            "fileVersion": "5.2.12.0"
          }
        }
      },
      "Z.EntityFramework.Plus.EFCore/5.2.12": {
        "dependencies": {
          "Microsoft.CSharp": "4.7.0",
          "Microsoft.EntityFrameworkCore.Relational": "5.0.6",
          "System.Reflection.Emit": "4.7.0",
          "System.Reflection.TypeExtensions": "4.7.0",
          "Z.EntityFramework.Extensions.EFCore": "5.2.12",
          "Z.Expressions.Eval": "4.0.54"
        },
        "runtime": {
          "lib/netstandard2.1/Z.EntityFramework.Plus.EFCore.dll": {
            "assemblyVersion": "5.2.12.0",
            "fileVersion": "5.2.12.0"
          }
        }
      },
      "Z.Expressions.Eval/4.0.54": {
        "dependencies": {
          "Microsoft.CSharp": "4.7.0",
          "Microsoft.Extensions.Caching.Memory": "5.0.0",
          "NETStandard.Library": "2.0.0",
          "Newtonsoft.Json": "11.0.2",
          "System.Collections.Concurrent": "4.3.0",
          "System.Collections.NonGeneric": "4.3.0",
          "System.Configuration.ConfigurationManager": "5.0.0",
          "System.Data.Common": "4.3.0",
          "System.Linq.Queryable": "4.3.0",
          "System.Reflection.Emit": "4.7.0",
          "System.Reflection.TypeExtensions": "4.7.0",
          "System.Xml.XPath": "4.3.0"
        },
        "runtime": {
          "lib/netstandard2.1/Z.Expressions.Eval.dll": {
            "assemblyVersion": "4.0.54.0",
            "fileVersion": "4.0.54.0"
          }
        }
      },
      "AllbertBackend.Application/1.0.0": {
        "dependencies": {
          "AWSSDK.Core": "3.7.0.31",
          "AWSSDK.Extensions.NETCore.Setup": "3.7.0.1",
          "AllbertBackend.Domain": "1.0.0",
          "AutoMapper": "10.1.1",
          "AutoMapper.Extensions.Microsoft.DependencyInjection": "8.1.1",
          "FluentValidation": "10.2.2",
          "GoogleApi": "3.10.11",
          "MediatR": "9.0.0",
          "MediatR.Extensions.Microsoft.DependencyInjection": "9.0.0",
          "Microsoft.AspNetCore.Http.Features": "5.0.6",
          "Microsoft.AspNetCore.SignalR": "1.1.0",
          "Microsoft.EntityFrameworkCore": "5.0.9",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0"
        },
        "runtime": {
          "AllbertBackend.Application.dll": {}
        }
      },
      "AllbertBackend.Domain/1.0.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Mvc.Core": "2.2.5"
        },
        "runtime": {
          "AllbertBackend.Domain.dll": {}
        }
      },
      "AllbertBackend.Persistence/1.0.0": {
        "dependencies": {
          "AllbertBackend.Application": "1.0.0",
          "AllbertBackend.Domain": "1.0.0",
          "Microsoft.AspNetCore.SignalR": "1.1.0",
          "Microsoft.EntityFrameworkCore": "5.0.9",
          "Microsoft.Extensions.Configuration.Abstractions": "5.0.0",
          "Microsoft.Extensions.Logging.Console": "5.0.0",
          "Npgsql": "5.0.5",
          "Npgsql.EntityFrameworkCore.PostgreSQL": "5.0.6",
          "Z.EntityFramework.Extensions.EFCore": "5.2.12",
          "Z.EntityFramework.Plus.EFCore": "5.2.12"
        },
        "runtime": {
          "AllbertBackend.Persistence.dll": {}
        }
      }
    }
  },
  "libraries": {
    "AllbertBackend.Infrastructure/1.0.0": {
      "type": "project",
      "serviceable": false,
      "sha512": ""
    },
    "AutoMapper/10.1.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-uMgbqOdu9ZG5cIOty0C85hzzayBH2i9BthnS5FlMqKtMSHDv4ts81a2jS1VFaDBVhlBeIqJ/kQKjQY95BZde9w==",
      "path": "automapper/10.1.1",
      "hashPath": "automapper.10.1.1.nupkg.sha512"
    },
    "AutoMapper.Extensions.Microsoft.DependencyInjection/8.1.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-xSWoVzOipuDU4PeZcUfaZQ+xqXU8QmGv5jrdlxt3MYm9xaOmrefqcfzGQ3SQ+D+8wfBa/ZwSuL0qKOVj080inA==",
      "path": "automapper.extensions.microsoft.dependencyinjection/8.1.1",
      "hashPath": "automapper.extensions.microsoft.dependencyinjection.8.1.1.nupkg.sha512"
    },
    "AWSSDK.Core/3.7.0.31": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-C2vzPag+Rzb1hBiMUwRW+HQzIrsPxxKBk7EMX0AUxkApg36DOGXI1Aha4xpC0w5sWqRuQAJ3YW0Ihk1nPlBzKA==",
      "path": "awssdk.core/3.7.0.31",
      "hashPath": "awssdk.core.3.7.0.31.nupkg.sha512"
    },
    "AWSSDK.Extensions.NETCore.Setup/3.7.0.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-cEsWQnC8uisjpv9l3AYI5XyM9k27g/HESGI214IzGGmclZapZRzTishuWVrRjql1NaeHvUXgzylUXXdQ4e6x1A==",
      "path": "awssdk.extensions.netcore.setup/3.7.0.1",
      "hashPath": "awssdk.extensions.netcore.setup.3.7.0.1.nupkg.sha512"
    },
    "AWSSDK.S3/3.7.0.31": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-u7QzgmhLsvJy9QBWYIuwy7U9unwrZFXq9QYvZNo8uc5cBJVZYYKsFWuXZC/brAB3aiIMXsE20daeSqNrT6K+KA==",
      "path": "awssdk.s3/3.7.0.31",
      "hashPath": "awssdk.s3.3.7.0.31.nupkg.sha512"
    },
    "FluentScheduler/5.5.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-OwehD7vZ1CFAboLPrfBTibz/FeKg8DK1h242u0Y050dbfcOlb+d4S/iGBNt/yHaHIhCsmPiQqQjG13e441xWLA==",
      "path": "fluentscheduler/5.5.1",
      "hashPath": "fluentscheduler.5.5.1.nupkg.sha512"
    },
    "FluentValidation/10.2.2": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-/3J+ToMcXV9bdnLpXJJ4q2iDYRvcKU6jcEhKpsXfgrs/1vBhAZQDdOqVgzHXh3gwgy1fYyVGEvSAvvDlfOQavw==",
      "path": "fluentvalidation/10.2.2",
      "hashPath": "fluentvalidation.10.2.2.nupkg.sha512"
    },
    "GoogleApi/3.10.11": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-MSUgytHfR3D+RyldchMV4WiL6lLLUMw2IBhtjOnR8p5wC6U2m0gFbQLrKbHPvqTSOw77wAbFiNMjrURZvWAZYQ==",
      "path": "googleapi/3.10.11",
      "hashPath": "googleapi.3.10.11.nupkg.sha512"
    },
    "MediatR/9.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-8b3UYNxegHVYcJMG2zH8wn+YqxLvXG+eMfj0cMCq/jTW72p6O3PCKMkrIv0mqyxdW7bA4gblsocw7n+/9Akg5g==",
      "path": "mediatr/9.0.0",
      "hashPath": "mediatr.9.0.0.nupkg.sha512"
    },
    "MediatR.Extensions.Microsoft.DependencyInjection/9.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-msreY4ogiPdIRWiCQVHQDytIQpsZCLWsixWPZ+Xs86KZrvtuiV8BDHbIT0kBmogynVYWNpspb3caw+86YU8L6w==",
      "path": "mediatr.extensions.microsoft.dependencyinjection/9.0.0",
      "hashPath": "mediatr.extensions.microsoft.dependencyinjection.9.0.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.Authentication.Abstractions/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-VloMLDJMf3n/9ic5lCBOa42IBYJgyB1JhzLsL68Zqg+2bEPWfGBj/xCJy/LrKTArN0coOcZp3wyVTZlx0y9pHQ==",
      "path": "microsoft.aspnetcore.authentication.abstractions/2.2.0",
      "hashPath": "microsoft.aspnetcore.authentication.abstractions.2.2.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.Authentication.Core/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-XlVJzJ5wPOYW+Y0J6Q/LVTEyfS4ssLXmt60T0SPP+D8abVhBTl+cgw2gDHlyKYIkcJg7btMVh383NDkMVqD/fg==",
      "path": "microsoft.aspnetcore.authentication.core/2.2.0",
      "hashPath": "microsoft.aspnetcore.authentication.core.2.2.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.Authorization/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-/L0W8H3jMYWyaeA9gBJqS/tSWBegP9aaTM0mjRhxTttBY9z4RVDRYJ2CwPAmAXIuPr3r1sOw+CS8jFVRGHRezQ==",
      "path": "microsoft.aspnetcore.authorization/2.2.0",
      "hashPath": "microsoft.aspnetcore.authorization.2.2.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.Authorization.Policy/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-aJCo6niDRKuNg2uS2WMEmhJTooQUGARhV2ENQ2tO5443zVHUo19MSgrgGo9FIrfD+4yKPF8Q+FF33WkWfPbyKw==",
      "path": "microsoft.aspnetcore.authorization.policy/2.2.0",
      "hashPath": "microsoft.aspnetcore.authorization.policy.2.2.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.Connections.Abstractions/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-Aqr/16Cu5XmGv7mLKJvXRxhhd05UJ7cTTSaUV4MZ3ynAzfgWjsAdpIU8FWuxwAjmVdmI8oOWuVDrbs+sRkhKnA==",
      "path": "microsoft.aspnetcore.connections.abstractions/2.2.0",
      "hashPath": "microsoft.aspnetcore.connections.abstractions.2.2.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.Hosting.Abstractions/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-ubycklv+ZY7Kutdwuy1W4upWcZ6VFR8WUXU7l7B2+mvbDBBPAcfpi+E+Y5GFe+Q157YfA3C49D2GCjAZc7Mobw==",
      "path": "microsoft.aspnetcore.hosting.abstractions/2.2.0",
      "hashPath": "microsoft.aspnetcore.hosting.abstractions.2.2.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.Hosting.Server.Abstractions/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-1PMijw8RMtuQF60SsD/JlKtVfvh4NORAhF4wjysdABhlhTrYmtgssqyncR0Stq5vqtjplZcj6kbT4LRTglt9IQ==",
      "path": "microsoft.aspnetcore.hosting.server.abstractions/2.2.0",
      "hashPath": "microsoft.aspnetcore.hosting.server.abstractions.2.2.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.Http/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-YogBSMotWPAS/X5967pZ+yyWPQkThxhmzAwyCHCSSldzYBkW5W5d6oPfBaPqQOnSHYTpSOSOkpZoAce0vwb6+A==",
      "path": "microsoft.aspnetcore.http/2.2.0",
      "hashPath": "microsoft.aspnetcore.http.2.2.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.Http.Abstractions/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-Nxs7Z1q3f1STfLYKJSVXCs1iBl+Ya6E8o4Oy1bCxJ/rNI44E/0f6tbsrVqAWfB7jlnJfyaAtIalBVxPKUPQb4Q==",
      "path": "microsoft.aspnetcore.http.abstractions/2.2.0",
      "hashPath": "microsoft.aspnetcore.http.abstractions.2.2.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.Http.Connections/1.1.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-ZcwAM9rE5yjGC+vtiNAK0INybpKIqnvB+/rntZn2/CPtyiBAtovVrEp4UZOoC31zH5t0P78ix9gLNJzII/ODsA==",
      "path": "microsoft.aspnetcore.http.connections/1.1.0",
      "hashPath": "microsoft.aspnetcore.http.connections.1.1.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.Http.Connections.Common/1.1.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-mYk5QUUjyXQmlyDHWDjkLYDArt97plwe6KsDsNVhDEQ+HgZMKGjISyM6YSA7BERQNR25kXBTbIYfSy1vePGQgg==",
      "path": "microsoft.aspnetcore.http.connections.common/1.1.0",
      "hashPath": "microsoft.aspnetcore.http.connections.common.1.1.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.Http.Extensions/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-2DgZ9rWrJtuR7RYiew01nGRzuQBDaGHGmK56Rk54vsLLsCdzuFUPqbDTJCS1qJQWTbmbIQ9wGIOjpxA1t0l7/w==",
      "path": "microsoft.aspnetcore.http.extensions/2.2.0",
      "hashPath": "microsoft.aspnetcore.http.extensions.2.2.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.Http.Features/5.0.6": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-MfpLQRQK/iBZLiaRgPd4dNq4REVbycYH9apU0i18UWQsqZt2Oa0+gZRnz8j4eDCzzCwQSoVXtuCtuCdEnIk9vg==",
      "path": "microsoft.aspnetcore.http.features/5.0.6",
      "hashPath": "microsoft.aspnetcore.http.features.5.0.6.nupkg.sha512"
    },
    "Microsoft.AspNetCore.Mvc.Abstractions/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-ET6uZpfVbGR1NjCuLaLy197cQ3qZUjzl7EG5SL4GfJH/c9KRE89MMBrQegqWsh0w1iRUB/zQaK0anAjxa/pz4g==",
      "path": "microsoft.aspnetcore.mvc.abstractions/2.2.0",
      "hashPath": "microsoft.aspnetcore.mvc.abstractions.2.2.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.Mvc.Core/2.2.5": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-/8sr8ixIUD57UFwUntha9bOwex7/AkZfdk1f9oNJG1Ek7p/uuKVa7fuHmYZpQOf35Oxrt+2Ku4WPwMSbNxOuWg==",
      "path": "microsoft.aspnetcore.mvc.core/2.2.5",
      "hashPath": "microsoft.aspnetcore.mvc.core.2.2.5.nupkg.sha512"
    },
    "Microsoft.AspNetCore.ResponseCaching.Abstractions/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-CIHWEKrHzZfFp7t57UXsueiSA/raku56TgRYauV/W1+KAQq6vevz60zjEKaazt3BI76zwMz3B4jGWnCwd8kwQw==",
      "path": "microsoft.aspnetcore.responsecaching.abstractions/2.2.0",
      "hashPath": "microsoft.aspnetcore.responsecaching.abstractions.2.2.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.Routing/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-jAhDBy0wryOnMhhZTtT9z63gJbvCzFuLm8yC6pHzuVu9ZD1dzg0ltxIwT4cfwuNkIL/TixdKsm3vpVOpG8euWQ==",
      "path": "microsoft.aspnetcore.routing/2.2.0",
      "hashPath": "microsoft.aspnetcore.routing.2.2.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.Routing.Abstractions/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-lRRaPN7jDlUCVCp9i0W+PB0trFaKB0bgMJD7hEJS9Uo4R9MXaMC8X2tJhPLmeVE3SGDdYI4QNKdVmhNvMJGgPQ==",
      "path": "microsoft.aspnetcore.routing.abstractions/2.2.0",
      "hashPath": "microsoft.aspnetcore.routing.abstractions.2.2.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.SignalR/1.1.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-V5X5XkeAHaFyyBOGPrddVeqTNo6zRPJNS5PRhlzEyBXiNG9AtqUbMyWFdZahQyMiIWJau550z59A4kdC9g5I9A==",
      "path": "microsoft.aspnetcore.signalr/1.1.0",
      "hashPath": "microsoft.aspnetcore.signalr.1.1.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.SignalR.Common/1.1.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-TyLgQ4y4RVUIxiYFnHT181/rJ33/tL/NcBWC9BwLpulDt5/yGCG4EvsToZ49EBQ7256zj+R6OGw6JF+jj6MdPQ==",
      "path": "microsoft.aspnetcore.signalr.common/1.1.0",
      "hashPath": "microsoft.aspnetcore.signalr.common.1.1.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.SignalR.Core/1.1.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-mk69z50oFk2e89d3F/AfKeAvP3kvGG7MHG4ErydZiUd3ncSRq0kl0czq/COn/QVKYua9yGr2LIDwuR1C6/pu8Q==",
      "path": "microsoft.aspnetcore.signalr.core/1.1.0",
      "hashPath": "microsoft.aspnetcore.signalr.core.1.1.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.SignalR.Protocols.Json/1.1.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-BOsjatDJnvnnXCMajOlC0ISmiFnJi/EyJzMo0i//5fZJVCLrQ4fyV/HzrhhAhSJuwJOQDdDozKQ9MB9jHq84pg==",
      "path": "microsoft.aspnetcore.signalr.protocols.json/1.1.0",
      "hashPath": "microsoft.aspnetcore.signalr.protocols.json.1.1.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.WebSockets/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-ZpOcg2V0rCwU9ErfDb9y3Hcjoe7rU42XlmUS0mO4pVZQSgJVqR+DfyZtYd5LDa11F7bFNS2eezI9cBM3CmfGhw==",
      "path": "microsoft.aspnetcore.websockets/2.2.0",
      "hashPath": "microsoft.aspnetcore.websockets.2.2.0.nupkg.sha512"
    },
    "Microsoft.AspNetCore.WebUtilities/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-9ErxAAKaDzxXASB/b5uLEkLgUWv1QbeVxyJYEHQwMaxXOeFFVkQxiq8RyfVcifLU7NR0QY0p3acqx4ZpYfhHDg==",
      "path": "microsoft.aspnetcore.webutilities/2.2.0",
      "hashPath": "microsoft.aspnetcore.webutilities.2.2.0.nupkg.sha512"
    },
    "Microsoft.CSharp/4.7.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-pTj+D3uJWyN3My70i2Hqo+OXixq3Os2D1nJ2x92FFo6sk8fYS1m1WLNTs0Dc1uPaViH0YvEEwvzddQ7y4rhXmA==",
      "path": "microsoft.csharp/4.7.0",
      "hashPath": "microsoft.csharp.4.7.0.nupkg.sha512"
    },
    "Microsoft.DotNet.PlatformAbstractions/2.1.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-9KPDwvb/hLEVXYruVHVZ8BkebC8j17DmPb56LnqRF74HqSPLjCkrlFUjOtFpQPA2DeADBRTI/e69aCfRBfrhxw==",
      "path": "microsoft.dotnet.platformabstractions/2.1.0",
      "hashPath": "microsoft.dotnet.platformabstractions.2.1.0.nupkg.sha512"
    },
    "Microsoft.EntityFrameworkCore/5.0.9": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-mA+W/zpJZMp802xt2D+qBXrme4VFN+FlsrHdU6WG5HKDAnezClRksJhJicUR8XojnSPp9SgZKa1aIAasB5G67g==",
      "path": "microsoft.entityframeworkcore/5.0.9",
      "hashPath": "microsoft.entityframeworkcore.5.0.9.nupkg.sha512"
    },
    "Microsoft.EntityFrameworkCore.Abstractions/5.0.9": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-csbpDaXe9iQUkvDS3JZRAFfkgcRA7BlHE3u8feBLlYervmTAS1WIWPBZKMtH0a2GO5njwAABU3j+hZMCPYBrzQ==",
      "path": "microsoft.entityframeworkcore.abstractions/5.0.9",
      "hashPath": "microsoft.entityframeworkcore.abstractions.5.0.9.nupkg.sha512"
    },
    "Microsoft.EntityFrameworkCore.Analyzers/5.0.9": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-eyuPLRFjcF7VWH8qy1uUuMrO02W15n9EXAXnYjCTWgH0SDIeZAa2XZXMZ9U3dvOPtvllMBy0obYA5SSbnpaNoQ==",
      "path": "microsoft.entityframeworkcore.analyzers/5.0.9",
      "hashPath": "microsoft.entityframeworkcore.analyzers.5.0.9.nupkg.sha512"
    },
    "Microsoft.EntityFrameworkCore.Relational/5.0.6": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-zzmO/cAcvsFeU3Ey6643GiLl4hCgGpWdcCW8LHsHP35zmfTirnjm2PrB+wf1wYQlPNyGT9+uypbVSoOopg58Mg==",
      "path": "microsoft.entityframeworkcore.relational/5.0.6",
      "hashPath": "microsoft.entityframeworkcore.relational.5.0.6.nupkg.sha512"
    },
    "Microsoft.Extensions.Caching.Abstractions/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-bu8As90/SBAouMZ6fJ+qRNo1X+KgHGrVueFhhYi+E5WqEhcnp2HoWRFnMzXQ6g4RdZbvPowFerSbKNH4Dtg5yg==",
      "path": "microsoft.extensions.caching.abstractions/5.0.0",
      "hashPath": "microsoft.extensions.caching.abstractions.5.0.0.nupkg.sha512"
    },
    "Microsoft.Extensions.Caching.Memory/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-/1qPCleFOkJe0O+xmFqCNLFYQZTJz965sVw8CUB/BQgsApBwzAUsL2BUkDvQW+geRUVTXUS9zLa0pBjC2VJ1gA==",
      "path": "microsoft.extensions.caching.memory/5.0.0",
      "hashPath": "microsoft.extensions.caching.memory.5.0.0.nupkg.sha512"
    },
    "Microsoft.Extensions.Configuration/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-LN322qEKHjuVEhhXueTUe7RNePooZmS8aGid5aK2woX3NPjSnONFyKUc6+JknOS6ce6h2tCLfKPTBXE3mN/6Ag==",
      "path": "microsoft.extensions.configuration/5.0.0",
      "hashPath": "microsoft.extensions.configuration.5.0.0.nupkg.sha512"
    },
    "Microsoft.Extensions.Configuration.Abstractions/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-ETjSBHMp3OAZ4HxGQYpwyGsD8Sw5FegQXphi0rpoGMT74S4+I2mm7XJEswwn59XAaKOzC15oDSOWEE8SzDCd6Q==",
      "path": "microsoft.extensions.configuration.abstractions/5.0.0",
      "hashPath": "microsoft.extensions.configuration.abstractions.5.0.0.nupkg.sha512"
    },
    "Microsoft.Extensions.Configuration.Binder/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-Of1Irt1+NzWO+yEYkuDh5TpT4On7LKl98Q9iLqCdOZps6XXEWDj3AKtmyvzJPVXZe4apmkJJIiDL7rR1yC+hjQ==",
      "path": "microsoft.extensions.configuration.binder/5.0.0",
      "hashPath": "microsoft.extensions.configuration.binder.5.0.0.nupkg.sha512"
    },
    "Microsoft.Extensions.DependencyInjection/5.0.2": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-xzFW00AZEvOXM1OX+0+AYH5op/Hf3u//e6wszBd/rK72sypD+jx5CtsHxM4BVuFBEs8SajfO4QzSJtrQaHDr4A==",
      "path": "microsoft.extensions.dependencyinjection/5.0.2",
      "hashPath": "microsoft.extensions.dependencyinjection.5.0.2.nupkg.sha512"
    },
    "Microsoft.Extensions.DependencyInjection.Abstractions/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-ORj7Zh81gC69TyvmcUm9tSzytcy8AVousi+IVRAI8nLieQjOFryRusSFh7+aLk16FN9pQNqJAiMd7BTKINK0kA==",
      "path": "microsoft.extensions.dependencyinjection.abstractions/5.0.0",
      "hashPath": "microsoft.extensions.dependencyinjection.abstractions.5.0.0.nupkg.sha512"
    },
    "Microsoft.Extensions.DependencyModel/2.1.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-nS2XKqi+1A1umnYNLX2Fbm/XnzCxs5i+zXVJ3VC6r9t2z0NZr9FLnJN4VQpKigdcWH/iFTbMuX6M6WQJcTjVIg==",
      "path": "microsoft.extensions.dependencymodel/2.1.0",
      "hashPath": "microsoft.extensions.dependencymodel.2.1.0.nupkg.sha512"
    },
    "Microsoft.Extensions.FileProviders.Abstractions/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-EcnaSsPTqx2MGnHrmWOD0ugbuuqVT8iICqSqPzi45V5/MA1LjUNb0kwgcxBGqizV1R+WeBK7/Gw25Jzkyk9bIw==",
      "path": "microsoft.extensions.fileproviders.abstractions/2.2.0",
      "hashPath": "microsoft.extensions.fileproviders.abstractions.2.2.0.nupkg.sha512"
    },
    "Microsoft.Extensions.Hosting.Abstractions/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-+k4AEn68HOJat5gj1TWa6X28WlirNQO9sPIIeQbia+91n03esEtMSSoekSTpMjUzjqtJWQN3McVx0GvSPFHF/Q==",
      "path": "microsoft.extensions.hosting.abstractions/2.2.0",
      "hashPath": "microsoft.extensions.hosting.abstractions.2.2.0.nupkg.sha512"
    },
    "Microsoft.Extensions.Logging/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-MgOwK6tPzB6YNH21wssJcw/2MKwee8b2gI7SllYfn6rvTpIrVvVS5HAjSU2vqSku1fwqRvWP0MdIi14qjd93Aw==",
      "path": "microsoft.extensions.logging/5.0.0",
      "hashPath": "microsoft.extensions.logging.5.0.0.nupkg.sha512"
    },
    "Microsoft.Extensions.Logging.Abstractions/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-NxP6ahFcBnnSfwNBi2KH2Oz8Xl5Sm2krjId/jRR3I7teFphwiUoUeZPwTNA21EX+5PtjqmyAvKaOeBXcJjcH/w==",
      "path": "microsoft.extensions.logging.abstractions/5.0.0",
      "hashPath": "microsoft.extensions.logging.abstractions.5.0.0.nupkg.sha512"
    },
    "Microsoft.Extensions.Logging.Configuration/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-N3/d0HeMRnBekadbZlmbp+In8EvNNkQHSdbtRzjrGVckdZWpYs5GNrAfaYqVplDFW0WUedSaFJ3khB50BWYGsw==",
      "path": "microsoft.extensions.logging.configuration/5.0.0",
      "hashPath": "microsoft.extensions.logging.configuration.5.0.0.nupkg.sha512"
    },
    "Microsoft.Extensions.Logging.Console/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-jH0wbWhfvXjOVmCkbra4vbiovDtTUIWLQjCeJ7Xun3h4AHvwfzm7V7wlsXKs3tNnPrsCxZ9oaV0vUAgGY1JxOA==",
      "path": "microsoft.extensions.logging.console/5.0.0",
      "hashPath": "microsoft.extensions.logging.console.5.0.0.nupkg.sha512"
    },
    "Microsoft.Extensions.ObjectPool/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-gA8H7uQOnM5gb+L0uTNjViHYr+hRDqCdfugheGo/MxQnuHzmhhzCBTIPm19qL1z1Xe0NEMabfcOBGv9QghlZ8g==",
      "path": "microsoft.extensions.objectpool/2.2.0",
      "hashPath": "microsoft.extensions.objectpool.2.2.0.nupkg.sha512"
    },
    "Microsoft.Extensions.Options/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-CBvR92TCJ5uBIdd9/HzDSrxYak+0W/3+yxrNg8Qm6Bmrkh5L+nu6m3WeazQehcZ5q1/6dDA7J5YdQjim0165zg==",
      "path": "microsoft.extensions.options/5.0.0",
      "hashPath": "microsoft.extensions.options.5.0.0.nupkg.sha512"
    },
    "Microsoft.Extensions.Options.ConfigurationExtensions/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-280RxNJqOeQqq47aJLy5D9LN61CAWeuRA83gPToQ8B9jl9SNdQ5EXjlfvF66zQI5AXMl+C/3hGnbtIEN+X3mqA==",
      "path": "microsoft.extensions.options.configurationextensions/5.0.0",
      "hashPath": "microsoft.extensions.options.configurationextensions.5.0.0.nupkg.sha512"
    },
    "Microsoft.Extensions.Primitives/5.0.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-5WPSmL4YeP7eW+Vc8XZ4DwjYWBAiSwDV9Hm63JJWcz1Ie3Xjv4KuJXzgCstj48LkLfVCYa7mLcx7y+q6yqVvtw==",
      "path": "microsoft.extensions.primitives/5.0.1",
      "hashPath": "microsoft.extensions.primitives.5.0.1.nupkg.sha512"
    },
    "Microsoft.Net.Http.Headers/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-iZNkjYqlo8sIOI0bQfpsSoMTmB/kyvmV2h225ihyZT33aTp48ZpF6qYnXxzSXmHt8DpBAwBTX+1s1UFLbYfZKg==",
      "path": "microsoft.net.http.headers/2.2.0",
      "hashPath": "microsoft.net.http.headers.2.2.0.nupkg.sha512"
    },
    "Microsoft.NETCore.Platforms/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-VyPlqzH2wavqquTcYpkIIAQ6WdenuKoFN0BdYBbCWsclXacSOHNQn66Gt4z5NBqEYW0FAPm5rlvki9ZiCij5xQ==",
      "path": "microsoft.netcore.platforms/5.0.0",
      "hashPath": "microsoft.netcore.platforms.5.0.0.nupkg.sha512"
    },
    "Microsoft.NETCore.Targets/1.1.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-aOZA3BWfz9RXjpzt0sRJJMjAscAUm3Hoa4UWAfceV9UTYxgwZ1lZt5nO2myFf+/jetYQo4uTP7zS8sJY67BBxg==",
      "path": "microsoft.netcore.targets/1.1.0",
      "hashPath": "microsoft.netcore.targets.1.1.0.nupkg.sha512"
    },
    "Microsoft.Win32.SystemEvents/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-Bh6blKG8VAKvXiLe2L+sEsn62nc1Ij34MrNxepD2OCrS5cpCwQa9MeLyhVQPQ/R4Wlzwuy6wMK8hLb11QPDRsQ==",
      "path": "microsoft.win32.systemevents/5.0.0",
      "hashPath": "microsoft.win32.systemevents.5.0.0.nupkg.sha512"
    },
    "NETStandard.Library/2.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-7jnbRU+L08FXKMxqUflxEXtVymWvNOrS8yHgu9s6EM8Anr6T/wIX4nZ08j/u3Asz+tCufp3YVwFSEvFTPYmBPA==",
      "path": "netstandard.library/2.0.0",
      "hashPath": "netstandard.library.2.0.0.nupkg.sha512"
    },
    "Newtonsoft.Json/11.0.2": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-IvJe1pj7JHEsP8B8J8DwlMEx8UInrs/x+9oVY+oCD13jpLu4JbJU2WCIsMRn5C4yW9+DgkaO8uiVE5VHKjpmdQ==",
      "path": "newtonsoft.json/11.0.2",
      "hashPath": "newtonsoft.json.11.0.2.nupkg.sha512"
    },
    "Npgsql/5.0.5": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-cvqU1o/gTeX9ynzCEa1NkBEAtGFxLwROw1KweG/giNEYSSw/6W3G7hvYIFIyrdgTorEbLu/AaI2Lxs5TRB4goQ==",
      "path": "npgsql/5.0.5",
      "hashPath": "npgsql.5.0.5.nupkg.sha512"
    },
    "Npgsql.EntityFrameworkCore.PostgreSQL/5.0.6": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-wX7ikYxbZDrcdiFw6dbG7MnoIaExR0QoOkqveZSrKdpkONxefKpXdtmZMUfzJbdE63qTaKzHsh+7kcCCF1gwqA==",
      "path": "npgsql.entityframeworkcore.postgresql/5.0.6",
      "hashPath": "npgsql.entityframeworkcore.postgresql.5.0.6.nupkg.sha512"
    },
    "Portable.BouncyCastle/1.8.1.3": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-1jUpszv0ETm+hl78HKnYgY3wPzt6qRtjxaPENNrGCuB8nondbR/j75WAKdd6sxXzOzBcX07WMZhZEYc4s5jVWg==",
      "path": "portable.bouncycastle/1.8.1.3",
      "hashPath": "portable.bouncycastle.1.8.1.3.nupkg.sha512"
    },
    "runtime.native.System/4.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-QfS/nQI7k/BLgmLrw7qm7YBoULEvgWnPI+cYsbfCVFTW8Aj+i8JhccxcFMu1RWms0YZzF+UHguNBK4Qn89e2Sg==",
      "path": "runtime.native.system/4.0.0",
      "hashPath": "runtime.native.system.4.0.0.nupkg.sha512"
    },
    "System.AppContext/4.1.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-3QjO4jNV7PdKkmQAVp9atA+usVnKRwI3Kx1nMwJ93T0LcQfx7pKAYk0nKz5wn1oP5iqlhZuy6RXOFdhr7rDwow==",
      "path": "system.appcontext/4.1.0",
      "hashPath": "system.appcontext.4.1.0.nupkg.sha512"
    },
    "System.Buffers/4.5.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-pL2ChpaRRWI/p4LXyy4RgeWlYF2sgfj/pnVMvBqwNFr5cXg7CXNnWZWxrOONLg8VGdFB8oB+EG2Qw4MLgTOe+A==",
      "path": "system.buffers/4.5.0",
      "hashPath": "system.buffers.4.5.0.nupkg.sha512"
    },
    "System.Collections/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-3Dcj85/TBdVpL5Zr+gEEBUuFe2icOnLalmEh9hfck1PTYbbyWuZgh4fmm2ysCLTrqLQw6t3TgTyJ+VLp+Qb+Lw==",
      "path": "system.collections/4.3.0",
      "hashPath": "system.collections.4.3.0.nupkg.sha512"
    },
    "System.Collections.Concurrent/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-ztl69Xp0Y/UXCL+3v3tEU+lIy+bvjKNUmopn1wep/a291pVPK7dxBd6T7WnlQqRog+d1a/hSsgRsmFnIBKTPLQ==",
      "path": "system.collections.concurrent/4.3.0",
      "hashPath": "system.collections.concurrent.4.3.0.nupkg.sha512"
    },
    "System.Collections.Immutable/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-FXkLXiK0sVVewcso0imKQoOxjoPAj42R8HtjjbSjVPAzwDfzoyoznWxgA3c38LDbN9SJux1xXoXYAhz98j7r2g==",
      "path": "system.collections.immutable/5.0.0",
      "hashPath": "system.collections.immutable.5.0.0.nupkg.sha512"
    },
    "System.Collections.NonGeneric/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-prtjIEMhGUnQq6RnPEYLpFt8AtLbp9yq2zxOSrY7KJJZrw25Fi97IzBqY7iqssbM61Ek5b8f3MG/sG1N2sN5KA==",
      "path": "system.collections.nongeneric/4.3.0",
      "hashPath": "system.collections.nongeneric.4.3.0.nupkg.sha512"
    },
    "System.ComponentModel.Annotations/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-dMkqfy2el8A8/I76n2Hi1oBFEbG1SfxD2l5nhwXV3XjlnOmwxJlQbYpJH4W51odnU9sARCSAgv7S3CyAFMkpYg==",
      "path": "system.componentmodel.annotations/5.0.0",
      "hashPath": "system.componentmodel.annotations.5.0.0.nupkg.sha512"
    },
    "System.Configuration.ConfigurationManager/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-aM7cbfEfVNlEEOj3DsZP+2g9NRwbkyiAv2isQEzw7pnkDg9ekCU2m1cdJLM02Uq691OaCS91tooaxcEn8d0q5w==",
      "path": "system.configuration.configurationmanager/5.0.0",
      "hashPath": "system.configuration.configurationmanager.5.0.0.nupkg.sha512"
    },
    "System.Data.Common/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-lm6E3T5u7BOuEH0u18JpbJHxBfOJPuCyl4Kg1RH10ktYLp5uEEE1xKrHW56/We4SnZpGAuCc9N0MJpSDhTHZGQ==",
      "path": "system.data.common/4.3.0",
      "hashPath": "system.data.common.4.3.0.nupkg.sha512"
    },
    "System.Diagnostics.Debug/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-ZUhUOdqmaG5Jk3Xdb8xi5kIyQYAA4PnTNlHx1mu9ZY3qv4ELIdKbnL/akbGaKi2RnNUWaZsAs31rvzFdewTj2g==",
      "path": "system.diagnostics.debug/4.3.0",
      "hashPath": "system.diagnostics.debug.4.3.0.nupkg.sha512"
    },
    "System.Diagnostics.DiagnosticSource/5.0.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-uXQEYqav2V3zP6OwkOKtLv+qIi6z3m1hsGyKwXX7ZA7htT4shoVccGxnJ9kVRFPNAsi1ArZTq2oh7WOto6GbkQ==",
      "path": "system.diagnostics.diagnosticsource/5.0.1",
      "hashPath": "system.diagnostics.diagnosticsource.5.0.1.nupkg.sha512"
    },
    "System.Diagnostics.Tracing/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-rswfv0f/Cqkh78rA5S8eN8Neocz234+emGCtTF3lxPY96F+mmmUen6tbn0glN6PMvlKQb9bPAY5e9u7fgPTkKw==",
      "path": "system.diagnostics.tracing/4.3.0",
      "hashPath": "system.diagnostics.tracing.4.3.0.nupkg.sha512"
    },
    "System.Drawing.Common/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-SztFwAnpfKC8+sEKXAFxCBWhKQaEd97EiOL7oZJZP56zbqnLpmxACWA8aGseaUExciuEAUuR9dY8f7HkTRAdnw==",
      "path": "system.drawing.common/5.0.0",
      "hashPath": "system.drawing.common.5.0.0.nupkg.sha512"
    },
    "System.Dynamic.Runtime/4.0.11": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-db34f6LHYM0U0JpE+sOmjar27BnqTVkbLJhgfwMpTdgTigG/Hna3m2MYVwnFzGGKnEJk2UXFuoVTr8WUbU91/A==",
      "path": "system.dynamic.runtime/4.0.11",
      "hashPath": "system.dynamic.runtime.4.0.11.nupkg.sha512"
    },
    "System.Globalization/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-kYdVd2f2PAdFGblzFswE4hkNANJBKRmsfa2X5LG2AcWE1c7/4t0pYae1L8vfZ5xvE2nK/R9JprtToA61OSHWIg==",
      "path": "system.globalization/4.3.0",
      "hashPath": "system.globalization.4.3.0.nupkg.sha512"
    },
    "System.IO/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-3qjaHvxQPDpSOYICjUoTsmoq5u6QJAFRUITgeT/4gqkF1bajbSmb1kwSxEA8AHlofqgcKJcM8udgieRNhaJ5Cg==",
      "path": "system.io/4.3.0",
      "hashPath": "system.io.4.3.0.nupkg.sha512"
    },
    "System.IO.FileSystem/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-3wEMARTnuio+ulnvi+hkRNROYwa1kylvYahhcLk4HSoVdl+xxTFVeVlYOfLwrDPImGls0mDqbMhrza8qnWPTdA==",
      "path": "system.io.filesystem/4.3.0",
      "hashPath": "system.io.filesystem.4.3.0.nupkg.sha512"
    },
    "System.IO.FileSystem.Primitives/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-6QOb2XFLch7bEc4lIcJH49nJN2HV+OC3fHDgsLVsBVBk3Y4hFAnOBGzJ2lUu7CyDDFo9IBWkSsnbkT6IBwwiMw==",
      "path": "system.io.filesystem.primitives/4.3.0",
      "hashPath": "system.io.filesystem.primitives.4.3.0.nupkg.sha512"
    },
    "System.IO.Pipelines/5.0.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-qEePWsaq9LoEEIqhbGe6D5J8c9IqQOUuTzzV6wn1POlfdLkJliZY3OlB0j0f17uMWlqZYjH7txj+2YbyrIA8Yg==",
      "path": "system.io.pipelines/5.0.1",
      "hashPath": "system.io.pipelines.5.0.1.nupkg.sha512"
    },
    "System.Linq/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-5DbqIUpsDp0dFftytzuMmc0oeMdQwjcP/EWxsksIz/w1TcFRkZ3yKKz0PqiYFMmEwPSWw+qNVqD7PJ889JzHbw==",
      "path": "system.linq/4.3.0",
      "hashPath": "system.linq.4.3.0.nupkg.sha512"
    },
    "System.Linq.Expressions/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-PGKkrd2khG4CnlyJwxwwaWWiSiWFNBGlgXvJpeO0xCXrZ89ODrQ6tjEWS/kOqZ8GwEOUATtKtzp1eRgmYNfclg==",
      "path": "system.linq.expressions/4.3.0",
      "hashPath": "system.linq.expressions.4.3.0.nupkg.sha512"
    },
    "System.Linq.Queryable/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-In1Bmmvl/j52yPu3xgakQSI0YIckPUr870w4K5+Lak3JCCa8hl+my65lABOuKfYs4ugmZy25ScFerC4nz8+b6g==",
      "path": "system.linq.queryable/4.3.0",
      "hashPath": "system.linq.queryable.4.3.0.nupkg.sha512"
    },
    "System.Net.WebSockets.WebSocketProtocol/4.5.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-FquLjdb/0CeMqb15u9Px6TwnyFl306WztKWu6sKKc5kWPYMdpi5BFEkdxzGoieYFp9UksyGwJnCw4KKAUfJjrw==",
      "path": "system.net.websockets.websocketprotocol/4.5.1",
      "hashPath": "system.net.websockets.websocketprotocol.4.5.1.nupkg.sha512"
    },
    "System.ObjectModel/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-bdX+80eKv9bN6K4N+d77OankKHGn6CH711a6fcOpMQu2Fckp/Ft4L/kW9WznHpyR0NRAvJutzOMHNNlBGvxQzQ==",
      "path": "system.objectmodel/4.3.0",
      "hashPath": "system.objectmodel.4.3.0.nupkg.sha512"
    },
    "System.Reflection/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-KMiAFoW7MfJGa9nDFNcfu+FpEdiHpWgTcS2HdMpDvt9saK3y/G4GwprPyzqjFH9NTaGPQeWNHU+iDlDILj96aQ==",
      "path": "system.reflection/4.3.0",
      "hashPath": "system.reflection.4.3.0.nupkg.sha512"
    },
    "System.Reflection.Emit/4.7.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-VR4kk8XLKebQ4MZuKuIni/7oh+QGFmZW3qORd1GvBq/8026OpW501SzT/oypwiQl4TvT8ErnReh/NzY9u+C6wQ==",
      "path": "system.reflection.emit/4.7.0",
      "hashPath": "system.reflection.emit.4.7.0.nupkg.sha512"
    },
    "System.Reflection.Emit.ILGeneration/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-59tBslAk9733NXLrUJrwNZEzbMAcu8k344OYo+wfSVygcgZ9lgBdGIzH/nrg3LYhXceynyvTc8t5/GD4Ri0/ng==",
      "path": "system.reflection.emit.ilgeneration/4.3.0",
      "hashPath": "system.reflection.emit.ilgeneration.4.3.0.nupkg.sha512"
    },
    "System.Reflection.Emit.Lightweight/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-oadVHGSMsTmZsAF864QYN1t1QzZjIcuKU3l2S9cZOwDdDueNTrqq1yRj7koFfIGEnKpt6NjpL3rOzRhs4ryOgA==",
      "path": "system.reflection.emit.lightweight/4.3.0",
      "hashPath": "system.reflection.emit.lightweight.4.3.0.nupkg.sha512"
    },
    "System.Reflection.Extensions/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-rJkrJD3kBI5B712aRu4DpSIiHRtr6QlfZSQsb0hYHrDCZORXCFjQfoipo2LaMUHoT9i1B7j7MnfaEKWDFmFQNQ==",
      "path": "system.reflection.extensions/4.3.0",
      "hashPath": "system.reflection.extensions.4.3.0.nupkg.sha512"
    },
    "System.Reflection.Primitives/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-5RXItQz5As4xN2/YUDxdpsEkMhvw3e6aNveFXUn4Hl/udNTCNhnKp8lT9fnc3MhvGKh1baak5CovpuQUXHAlIA==",
      "path": "system.reflection.primitives/4.3.0",
      "hashPath": "system.reflection.primitives.4.3.0.nupkg.sha512"
    },
    "System.Reflection.TypeExtensions/4.7.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-VybpaOQQhqE6siHppMktjfGBw1GCwvCqiufqmP8F1nj7fTUNtW35LOEt3UZTEsECfo+ELAl/9o9nJx3U91i7vA==",
      "path": "system.reflection.typeextensions/4.7.0",
      "hashPath": "system.reflection.typeextensions.4.7.0.nupkg.sha512"
    },
    "System.Resources.ResourceManager/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-/zrcPkkWdZmI4F92gL/TPumP98AVDu/Wxr3CSJGQQ+XN6wbRZcyfSKVoPo17ilb3iOr0cCRqJInGwNMolqhS8A==",
      "path": "system.resources.resourcemanager/4.3.0",
      "hashPath": "system.resources.resourcemanager.4.3.0.nupkg.sha512"
    },
    "System.Runtime/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-JufQi0vPQ0xGnAczR13AUFglDyVYt4Kqnz1AZaiKZ5+GICq0/1MH/mO/eAJHt/mHW1zjKBJd7kV26SrxddAhiw==",
      "path": "system.runtime/4.3.0",
      "hashPath": "system.runtime.4.3.0.nupkg.sha512"
    },
    "System.Runtime.CompilerServices.Unsafe/4.6.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-HxozeSlipUK7dAroTYwIcGwKDeOVpQnJlpVaOkBz7CM4TsE5b/tKlQBZecTjh6FzcSbxndYaxxpsBMz+wMJeyw==",
      "path": "system.runtime.compilerservices.unsafe/4.6.0",
      "hashPath": "system.runtime.compilerservices.unsafe.4.6.0.nupkg.sha512"
    },
    "System.Runtime.Extensions/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-guW0uK0fn5fcJJ1tJVXYd7/1h5F+pea1r7FLSOz/f8vPEqbR2ZAknuRDvTQ8PzAilDveOxNjSfr0CHfIQfFk8g==",
      "path": "system.runtime.extensions/4.3.0",
      "hashPath": "system.runtime.extensions.4.3.0.nupkg.sha512"
    },
    "System.Runtime.Handles/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-OKiSUN7DmTWeYb3l51A7EYaeNMnvxwE249YtZz7yooT4gOZhmTjIn48KgSsw2k2lYdLgTKNJw/ZIfSElwDRVgg==",
      "path": "system.runtime.handles/4.3.0",
      "hashPath": "system.runtime.handles.4.3.0.nupkg.sha512"
    },
    "System.Runtime.InteropServices/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-uv1ynXqiMK8mp1GM3jDqPCFN66eJ5w5XNomaK2XD+TuCroNTLFGeZ+WCmBMcBDyTFKou3P6cR6J/QsaqDp7fGQ==",
      "path": "system.runtime.interopservices/4.3.0",
      "hashPath": "system.runtime.interopservices.4.3.0.nupkg.sha512"
    },
    "System.Runtime.InteropServices.RuntimeInformation/4.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-hWPhJxc453RCa8Z29O91EmfGeZIHX1ZH2A8L6lYQVSaKzku2DfArSfMEb1/MYYzPQRJZeu0c9dmYeJKxW5Fgng==",
      "path": "system.runtime.interopservices.runtimeinformation/4.0.0",
      "hashPath": "system.runtime.interopservices.runtimeinformation.4.0.0.nupkg.sha512"
    },
    "System.Security.AccessControl/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-dagJ1mHZO3Ani8GH0PHpPEe/oYO+rVdbQjvjJkBRNQkX4t0r1iaeGn8+/ybkSLEan3/slM0t59SVdHzuHf2jmw==",
      "path": "system.security.accesscontrol/5.0.0",
      "hashPath": "system.security.accesscontrol.5.0.0.nupkg.sha512"
    },
    "System.Security.Cryptography.ProtectedData/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-HGxMSAFAPLNoxBvSfW08vHde0F9uh7BjASwu6JF9JnXuEPhCY3YUqURn0+bQV/4UWeaqymmrHWV+Aw9riQCtCA==",
      "path": "system.security.cryptography.protecteddata/5.0.0",
      "hashPath": "system.security.cryptography.protecteddata.5.0.0.nupkg.sha512"
    },
    "System.Security.Permissions/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-uE8juAhEkp7KDBCdjDIE3H9R1HJuEHqeqX8nLX9gmYKWwsqk3T5qZlPx8qle5DPKimC/Fy3AFTdV7HamgCh9qQ==",
      "path": "system.security.permissions/5.0.0",
      "hashPath": "system.security.permissions.5.0.0.nupkg.sha512"
    },
    "System.Security.Principal.Windows/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-t0MGLukB5WAVU9bO3MGzvlGnyJPgUlcwerXn1kzBRjwLKixT96XV0Uza41W49gVd8zEMFu9vQEFlv0IOrytICA==",
      "path": "system.security.principal.windows/5.0.0",
      "hashPath": "system.security.principal.windows.5.0.0.nupkg.sha512"
    },
    "System.Text.Encoding/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-BiIg+KWaSDOITze6jGQynxg64naAPtqGHBwDrLaCtixsa5bKiR8dpPOHA7ge3C0JJQizJE+sfkz1wV+BAKAYZw==",
      "path": "system.text.encoding/4.3.0",
      "hashPath": "system.text.encoding.4.3.0.nupkg.sha512"
    },
    "System.Text.Encoding.Extensions/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-YVMK0Bt/A43RmwizJoZ22ei2nmrhobgeiYwFzC4YAN+nue8RF6djXDMog0UCn+brerQoYVyaS+ghy9P/MUVcmw==",
      "path": "system.text.encoding.extensions/4.3.0",
      "hashPath": "system.text.encoding.extensions.4.3.0.nupkg.sha512"
    },
    "System.Text.Encodings.Web/4.5.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-Xg4G4Indi4dqP1iuAiMSwpiWS54ZghzR644OtsRCm/m/lBMG8dUBhLVN7hLm8NNrNTR+iGbshCPTwrvxZPlm4g==",
      "path": "system.text.encodings.web/4.5.0",
      "hashPath": "system.text.encodings.web.4.5.0.nupkg.sha512"
    },
    "System.Text.RegularExpressions/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-RpT2DA+L660cBt1FssIE9CAGpLFdFPuheB7pLpKpn6ZXNby7jDERe8Ua/Ne2xGiwLVG2JOqziiaVCGDon5sKFA==",
      "path": "system.text.regularexpressions/4.3.0",
      "hashPath": "system.text.regularexpressions.4.3.0.nupkg.sha512"
    },
    "System.Threading/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-VkUS0kOBcUf3Wwm0TSbrevDDZ6BlM+b/HRiapRFWjM5O0NS0LviG0glKmFK+hhPDd1XFeSdU1GmlLhb2CoVpIw==",
      "path": "system.threading/4.3.0",
      "hashPath": "system.threading.4.3.0.nupkg.sha512"
    },
    "System.Threading.Channels/4.5.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-MEH06N0rIGmRT4LOKQ2BmUO0IxfvmIY/PaouSq+DFQku72OL8cxfw8W99uGpTCFf2vx2QHLRSh374iSM3asdTA==",
      "path": "system.threading.channels/4.5.0",
      "hashPath": "system.threading.channels.4.5.0.nupkg.sha512"
    },
    "System.Threading.Tasks/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-LbSxKEdOUhVe8BezB/9uOGGppt+nZf6e1VFyw6v3DN6lqitm0OSn2uXMOdtP0M3W4iMcqcivm2J6UgqiwwnXiA==",
      "path": "system.threading.tasks/4.3.0",
      "hashPath": "system.threading.tasks.4.3.0.nupkg.sha512"
    },
    "System.Threading.Tasks.Extensions/4.5.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-WSKUTtLhPR8gllzIWO2x6l4lmAIfbyMAiTlyXAis4QBDonXK4b4S6F8zGARX4/P8wH3DH+sLdhamCiHn+fTU1A==",
      "path": "system.threading.tasks.extensions/4.5.1",
      "hashPath": "system.threading.tasks.extensions.4.5.1.nupkg.sha512"
    },
    "System.Windows.Extensions/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-c1ho9WU9ZxMZawML+ssPKZfdnrg/OjR3pe0m9v8230z3acqphwvPJqzAkH54xRYm5ntZHGG1EPP3sux9H3qSPg==",
      "path": "system.windows.extensions/5.0.0",
      "hashPath": "system.windows.extensions.5.0.0.nupkg.sha512"
    },
    "System.Xml.ReaderWriter/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-GrprA+Z0RUXaR4N7/eW71j1rgMnEnEVlgii49GZyAjTH7uliMnrOU3HNFBr6fEDBCJCIdlVNq9hHbaDR621XBA==",
      "path": "system.xml.readerwriter/4.3.0",
      "hashPath": "system.xml.readerwriter.4.3.0.nupkg.sha512"
    },
    "System.Xml.XPath/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-v1JQ5SETnQusqmS3RwStF7vwQ3L02imIzl++sewmt23VGygix04pEH+FCj1yWb+z4GDzKiljr1W7Wfvrx0YwgA==",
      "path": "system.xml.xpath/4.3.0",
      "hashPath": "system.xml.xpath.4.3.0.nupkg.sha512"
    },
    "Z.EntityFramework.Extensions.EFCore/5.2.12": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-VOUAh55F3wCgXcl+zlRZULyoBRNT6QKY5rzOFLyLRC8NQ2wuKcpKf3rFM8+KnXVJ82yzLjrVJ7p3p0/UgTCO/A==",
      "path": "z.entityframework.extensions.efcore/5.2.12",
      "hashPath": "z.entityframework.extensions.efcore.5.2.12.nupkg.sha512"
    },
    "Z.EntityFramework.Plus.EFCore/5.2.12": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-FhrCNy5r0w0EkgpwF1pXlNrtxVtxiYlFwAE9Ge4JUPl/5vZVj/TjYoGUV9MkQCyOH9iRj3FuOPpkGqLGPhm1Qg==",
      "path": "z.entityframework.plus.efcore/5.2.12",
      "hashPath": "z.entityframework.plus.efcore.5.2.12.nupkg.sha512"
    },
    "Z.Expressions.Eval/4.0.54": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-PSFHZVmSXNee//9T5Vdylo7T2cPBueit3dnjo9TeB9QKUdfgdH1XXiZMa/s8FMnWLM/dyMu5SachL4r0nl39RA==",
      "path": "z.expressions.eval/4.0.54",
      "hashPath": "z.expressions.eval.4.0.54.nupkg.sha512"
    },
    "AllbertBackend.Application/1.0.0": {
      "type": "project",
      "serviceable": false,
      "sha512": ""
    },
    "AllbertBackend.Domain/1.0.0": {
      "type": "project",
      "serviceable": false,
      "sha512": ""
    },
    "AllbertBackend.Persistence/1.0.0": {
      "type": "project",
      "serviceable": false,
      "sha512": ""
    }
  }
}
