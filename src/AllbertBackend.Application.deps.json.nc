{
  "runtimeTarget": {
    "name": ".NETCoreApp,Version=v5.0",
    "signature": ""
  },
  "compilationOptions": {},
  "targets": {
    ".NETCoreApp,Version=v5.0": {
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
          "Microsoft.Extensions.Configuration.Abstractions": "2.2.0",
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
          "Microsoft.Extensions.Configuration.Abstractions": "2.2.0"
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
          "System.Security.Principal.Windows": "4.5.0"
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
          "System.Collections": "4.0.11",
          "System.IO": "4.1.0",
          "System.IO.FileSystem": "4.0.1",
          "System.Reflection.TypeExtensions": "4.1.0",
          "System.Runtime.Extensions": "4.1.0",
          "System.Runtime.InteropServices": "4.1.0",
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
      "Microsoft.Extensions.Configuration.Abstractions/2.2.0": {
        "dependencies": {
          "Microsoft.Extensions.Primitives": "5.0.1"
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Configuration.Abstractions.dll": {
            "assemblyVersion": "2.2.0.0",
            "fileVersion": "2.2.0.18315"
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
          "System.Diagnostics.Debug": "4.0.11",
          "System.Dynamic.Runtime": "4.0.11",
          "System.Linq": "4.1.0"
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
          "Microsoft.Extensions.Configuration.Abstractions": "2.2.0",
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
      "Microsoft.NETCore.Platforms/2.0.0": {},
      "Microsoft.NETCore.Targets/1.0.1": {},
      "Newtonsoft.Json/11.0.2": {
        "runtime": {
          "lib/netstandard2.0/Newtonsoft.Json.dll": {
            "assemblyVersion": "11.0.0.0",
            "fileVersion": "11.0.2.21924"
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
          "Microsoft.NETCore.Platforms": "2.0.0",
          "Microsoft.NETCore.Targets": "1.0.1"
        }
      },
      "System.AppContext/4.1.0": {
        "dependencies": {
          "System.Runtime": "4.1.0"
        }
      },
      "System.Buffers/4.5.0": {},
      "System.Collections/4.0.11": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "2.0.0",
          "Microsoft.NETCore.Targets": "1.0.1",
          "System.Runtime": "4.1.0"
        }
      },
      "System.Collections.Immutable/5.0.0": {},
      "System.ComponentModel.Annotations/5.0.0": {},
      "System.Diagnostics.Debug/4.0.11": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "2.0.0",
          "Microsoft.NETCore.Targets": "1.0.1",
          "System.Runtime": "4.1.0"
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
      "System.Dynamic.Runtime/4.0.11": {
        "dependencies": {
          "System.Collections": "4.0.11",
          "System.Diagnostics.Debug": "4.0.11",
          "System.Globalization": "4.0.11",
          "System.Linq": "4.1.0",
          "System.Linq.Expressions": "4.1.0",
          "System.ObjectModel": "4.0.12",
          "System.Reflection": "4.1.0",
          "System.Reflection.Emit": "4.7.0",
          "System.Reflection.Emit.ILGeneration": "4.0.1",
          "System.Reflection.Primitives": "4.0.1",
          "System.Reflection.TypeExtensions": "4.1.0",
          "System.Resources.ResourceManager": "4.0.1",
          "System.Runtime": "4.1.0",
          "System.Runtime.Extensions": "4.1.0",
          "System.Threading": "4.0.11"
        }
      },
      "System.Globalization/4.0.11": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "2.0.0",
          "Microsoft.NETCore.Targets": "1.0.1",
          "System.Runtime": "4.1.0"
        }
      },
      "System.IO/4.1.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "2.0.0",
          "Microsoft.NETCore.Targets": "1.0.1",
          "System.Runtime": "4.1.0",
          "System.Text.Encoding": "4.0.11",
          "System.Threading.Tasks": "4.0.11"
        }
      },
      "System.IO.FileSystem/4.0.1": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "2.0.0",
          "Microsoft.NETCore.Targets": "1.0.1",
          "System.IO": "4.1.0",
          "System.IO.FileSystem.Primitives": "4.0.1",
          "System.Runtime": "4.1.0",
          "System.Runtime.Handles": "4.0.1",
          "System.Text.Encoding": "4.0.11",
          "System.Threading.Tasks": "4.0.11"
        }
      },
      "System.IO.FileSystem.Primitives/4.0.1": {
        "dependencies": {
          "System.Runtime": "4.1.0"
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
      "System.Linq/4.1.0": {
        "dependencies": {
          "System.Collections": "4.0.11",
          "System.Diagnostics.Debug": "4.0.11",
          "System.Resources.ResourceManager": "4.0.1",
          "System.Runtime": "4.1.0",
          "System.Runtime.Extensions": "4.1.0"
        }
      },
      "System.Linq.Expressions/4.1.0": {
        "dependencies": {
          "System.Collections": "4.0.11",
          "System.Diagnostics.Debug": "4.0.11",
          "System.Globalization": "4.0.11",
          "System.IO": "4.1.0",
          "System.Linq": "4.1.0",
          "System.ObjectModel": "4.0.12",
          "System.Reflection": "4.1.0",
          "System.Reflection.Emit": "4.7.0",
          "System.Reflection.Emit.ILGeneration": "4.0.1",
          "System.Reflection.Emit.Lightweight": "4.0.1",
          "System.Reflection.Extensions": "4.0.1",
          "System.Reflection.Primitives": "4.0.1",
          "System.Reflection.TypeExtensions": "4.1.0",
          "System.Resources.ResourceManager": "4.0.1",
          "System.Runtime": "4.1.0",
          "System.Runtime.Extensions": "4.1.0",
          "System.Threading": "4.0.11"
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
      "System.ObjectModel/4.0.12": {
        "dependencies": {
          "System.Collections": "4.0.11",
          "System.Diagnostics.Debug": "4.0.11",
          "System.Resources.ResourceManager": "4.0.1",
          "System.Runtime": "4.1.0",
          "System.Threading": "4.0.11"
        }
      },
      "System.Reflection/4.1.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "2.0.0",
          "Microsoft.NETCore.Targets": "1.0.1",
          "System.IO": "4.1.0",
          "System.Reflection.Primitives": "4.0.1",
          "System.Runtime": "4.1.0"
        }
      },
      "System.Reflection.Emit/4.7.0": {},
      "System.Reflection.Emit.ILGeneration/4.0.1": {
        "dependencies": {
          "System.Reflection": "4.1.0",
          "System.Reflection.Primitives": "4.0.1",
          "System.Runtime": "4.1.0"
        }
      },
      "System.Reflection.Emit.Lightweight/4.0.1": {
        "dependencies": {
          "System.Reflection": "4.1.0",
          "System.Reflection.Emit.ILGeneration": "4.0.1",
          "System.Reflection.Primitives": "4.0.1",
          "System.Runtime": "4.1.0"
        }
      },
      "System.Reflection.Extensions/4.0.1": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "2.0.0",
          "Microsoft.NETCore.Targets": "1.0.1",
          "System.Reflection": "4.1.0",
          "System.Runtime": "4.1.0"
        }
      },
      "System.Reflection.Primitives/4.0.1": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "2.0.0",
          "Microsoft.NETCore.Targets": "1.0.1",
          "System.Runtime": "4.1.0"
        }
      },
      "System.Reflection.TypeExtensions/4.1.0": {
        "dependencies": {
          "System.Reflection": "4.1.0",
          "System.Runtime": "4.1.0"
        }
      },
      "System.Resources.ResourceManager/4.0.1": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "2.0.0",
          "Microsoft.NETCore.Targets": "1.0.1",
          "System.Globalization": "4.0.11",
          "System.Reflection": "4.1.0",
          "System.Runtime": "4.1.0"
        }
      },
      "System.Runtime/4.1.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "2.0.0",
          "Microsoft.NETCore.Targets": "1.0.1"
        }
      },
      "System.Runtime.Extensions/4.1.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "2.0.0",
          "Microsoft.NETCore.Targets": "1.0.1",
          "System.Runtime": "4.1.0"
        }
      },
      "System.Runtime.Handles/4.0.1": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "2.0.0",
          "Microsoft.NETCore.Targets": "1.0.1",
          "System.Runtime": "4.1.0"
        }
      },
      "System.Runtime.InteropServices/4.1.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "2.0.0",
          "Microsoft.NETCore.Targets": "1.0.1",
          "System.Reflection": "4.1.0",
          "System.Reflection.Primitives": "4.0.1",
          "System.Runtime": "4.1.0",
          "System.Runtime.Handles": "4.0.1"
        }
      },
      "System.Runtime.InteropServices.RuntimeInformation/4.0.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "2.0.0",
          "System.Reflection": "4.1.0",
          "System.Resources.ResourceManager": "4.0.1",
          "System.Runtime": "4.1.0",
          "System.Runtime.InteropServices": "4.1.0",
          "System.Threading": "4.0.11",
          "runtime.native.System": "4.0.0"
        }
      },
      "System.Security.Principal.Windows/4.5.0": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "2.0.0"
        }
      },
      "System.Text.Encoding/4.0.11": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "2.0.0",
          "Microsoft.NETCore.Targets": "1.0.1",
          "System.Runtime": "4.1.0"
        }
      },
      "System.Text.Encodings.Web/4.5.0": {},
      "System.Threading/4.0.11": {
        "dependencies": {
          "System.Runtime": "4.1.0",
          "System.Threading.Tasks": "4.0.11"
        }
      },
      "System.Threading.Channels/4.5.0": {},
      "System.Threading.Tasks/4.0.11": {
        "dependencies": {
          "Microsoft.NETCore.Platforms": "2.0.0",
          "Microsoft.NETCore.Targets": "1.0.1",
          "System.Runtime": "4.1.0"
        }
      },
      "System.Threading.Tasks.Extensions/4.5.1": {},
      "AllbertBackend.Domain/1.0.0": {
        "dependencies": {
          "Microsoft.AspNetCore.Mvc.Core": "2.2.5"
        },
        "runtime": {
          "AllbertBackend.Domain.dll": {}
        }
      }
    }
  },
  "libraries": {
    "AllbertBackend.Application/1.0.0": {
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
    "Microsoft.Extensions.Configuration.Abstractions/2.2.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-65MrmXCziWaQFrI0UHkQbesrX5wTwf9XPjY5yFm/VkgJKFJ5gqvXRoXjIZcf2wLi5ZlwGz/oMYfyURVCWbM5iw==",
      "path": "microsoft.extensions.configuration.abstractions/2.2.0",
      "hashPath": "microsoft.extensions.configuration.abstractions.2.2.0.nupkg.sha512"
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
    "Microsoft.NETCore.Platforms/2.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-VdLJOCXhZaEMY7Hm2GKiULmn7IEPFE4XC5LPSfBVCUIA8YLZVh846gtfBJalsPQF2PlzdD7ecX7DZEulJ402ZQ==",
      "path": "microsoft.netcore.platforms/2.0.0",
      "hashPath": "microsoft.netcore.platforms.2.0.0.nupkg.sha512"
    },
    "Microsoft.NETCore.Targets/1.0.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-rkn+fKobF/cbWfnnfBOQHKVKIOpxMZBvlSHkqDWgBpwGDcLRduvs3D9OLGeV6GWGvVwNlVi2CBbTjuPmtHvyNw==",
      "path": "microsoft.netcore.targets/1.0.1",
      "hashPath": "microsoft.netcore.targets.1.0.1.nupkg.sha512"
    },
    "Newtonsoft.Json/11.0.2": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-IvJe1pj7JHEsP8B8J8DwlMEx8UInrs/x+9oVY+oCD13jpLu4JbJU2WCIsMRn5C4yW9+DgkaO8uiVE5VHKjpmdQ==",
      "path": "newtonsoft.json/11.0.2",
      "hashPath": "newtonsoft.json.11.0.2.nupkg.sha512"
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
    "System.Collections/4.0.11": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-YUJGz6eFKqS0V//mLt25vFGrrCvOnsXjlvFQs+KimpwNxug9x0Pzy4PlFMU3Q2IzqAa9G2L4LsK3+9vCBK7oTg==",
      "path": "system.collections/4.0.11",
      "hashPath": "system.collections.4.0.11.nupkg.sha512"
    },
    "System.Collections.Immutable/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-FXkLXiK0sVVewcso0imKQoOxjoPAj42R8HtjjbSjVPAzwDfzoyoznWxgA3c38LDbN9SJux1xXoXYAhz98j7r2g==",
      "path": "system.collections.immutable/5.0.0",
      "hashPath": "system.collections.immutable.5.0.0.nupkg.sha512"
    },
    "System.ComponentModel.Annotations/5.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-dMkqfy2el8A8/I76n2Hi1oBFEbG1SfxD2l5nhwXV3XjlnOmwxJlQbYpJH4W51odnU9sARCSAgv7S3CyAFMkpYg==",
      "path": "system.componentmodel.annotations/5.0.0",
      "hashPath": "system.componentmodel.annotations.5.0.0.nupkg.sha512"
    },
    "System.Diagnostics.Debug/4.0.11": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-w5U95fVKHY4G8ASs/K5iK3J5LY+/dLFd4vKejsnI/ZhBsWS9hQakfx3Zr7lRWKg4tAw9r4iktyvsTagWkqYCiw==",
      "path": "system.diagnostics.debug/4.0.11",
      "hashPath": "system.diagnostics.debug.4.0.11.nupkg.sha512"
    },
    "System.Diagnostics.DiagnosticSource/5.0.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-uXQEYqav2V3zP6OwkOKtLv+qIi6z3m1hsGyKwXX7ZA7htT4shoVccGxnJ9kVRFPNAsi1ArZTq2oh7WOto6GbkQ==",
      "path": "system.diagnostics.diagnosticsource/5.0.1",
      "hashPath": "system.diagnostics.diagnosticsource.5.0.1.nupkg.sha512"
    },
    "System.Dynamic.Runtime/4.0.11": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-db34f6LHYM0U0JpE+sOmjar27BnqTVkbLJhgfwMpTdgTigG/Hna3m2MYVwnFzGGKnEJk2UXFuoVTr8WUbU91/A==",
      "path": "system.dynamic.runtime/4.0.11",
      "hashPath": "system.dynamic.runtime.4.0.11.nupkg.sha512"
    },
    "System.Globalization/4.0.11": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-B95h0YLEL2oSnwF/XjqSWKnwKOy/01VWkNlsCeMTFJLLabflpGV26nK164eRs5GiaRSBGpOxQ3pKoSnnyZN5pg==",
      "path": "system.globalization/4.0.11",
      "hashPath": "system.globalization.4.0.11.nupkg.sha512"
    },
    "System.IO/4.1.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-3KlTJceQc3gnGIaHZ7UBZO26SHL1SHE4ddrmiwumFnId+CEHP+O8r386tZKaE6zlk5/mF8vifMBzHj9SaXN+mQ==",
      "path": "system.io/4.1.0",
      "hashPath": "system.io.4.1.0.nupkg.sha512"
    },
    "System.IO.FileSystem/4.0.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-IBErlVq5jOggAD69bg1t0pJcHaDbJbWNUZTPI96fkYWzwYbN6D9wRHMULLDd9dHsl7C2YsxXL31LMfPI1SWt8w==",
      "path": "system.io.filesystem/4.0.1",
      "hashPath": "system.io.filesystem.4.0.1.nupkg.sha512"
    },
    "System.IO.FileSystem.Primitives/4.0.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-kWkKD203JJKxJeE74p8aF8y4Qc9r9WQx4C0cHzHPrY3fv/L/IhWnyCHaFJ3H1QPOH6A93whlQ2vG5nHlBDvzWQ==",
      "path": "system.io.filesystem.primitives/4.0.1",
      "hashPath": "system.io.filesystem.primitives.4.0.1.nupkg.sha512"
    },
    "System.IO.Pipelines/5.0.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-qEePWsaq9LoEEIqhbGe6D5J8c9IqQOUuTzzV6wn1POlfdLkJliZY3OlB0j0f17uMWlqZYjH7txj+2YbyrIA8Yg==",
      "path": "system.io.pipelines/5.0.1",
      "hashPath": "system.io.pipelines.5.0.1.nupkg.sha512"
    },
    "System.Linq/4.1.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-bQ0iYFOQI0nuTnt+NQADns6ucV4DUvMdwN6CbkB1yj8i7arTGiTN5eok1kQwdnnNWSDZfIUySQY+J3d5KjWn0g==",
      "path": "system.linq/4.1.0",
      "hashPath": "system.linq.4.1.0.nupkg.sha512"
    },
    "System.Linq.Expressions/4.1.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-I+y02iqkgmCAyfbqOmSDOgqdZQ5tTj80Akm5BPSS8EeB0VGWdy6X1KCoYe8Pk6pwDoAKZUOdLVxnTJcExiv5zw==",
      "path": "system.linq.expressions/4.1.0",
      "hashPath": "system.linq.expressions.4.1.0.nupkg.sha512"
    },
    "System.Net.WebSockets.WebSocketProtocol/4.5.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-FquLjdb/0CeMqb15u9Px6TwnyFl306WztKWu6sKKc5kWPYMdpi5BFEkdxzGoieYFp9UksyGwJnCw4KKAUfJjrw==",
      "path": "system.net.websockets.websocketprotocol/4.5.1",
      "hashPath": "system.net.websockets.websocketprotocol.4.5.1.nupkg.sha512"
    },
    "System.ObjectModel/4.0.12": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-tAgJM1xt3ytyMoW4qn4wIqgJYm7L7TShRZG4+Q4Qsi2PCcj96pXN7nRywS9KkB3p/xDUjc2HSwP9SROyPYDYKQ==",
      "path": "system.objectmodel/4.0.12",
      "hashPath": "system.objectmodel.4.0.12.nupkg.sha512"
    },
    "System.Reflection/4.1.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-JCKANJ0TI7kzoQzuwB/OoJANy1Lg338B6+JVacPl4TpUwi3cReg3nMLplMq2uqYfHFQpKIlHAUVAJlImZz/4ng==",
      "path": "system.reflection/4.1.0",
      "hashPath": "system.reflection.4.1.0.nupkg.sha512"
    },
    "System.Reflection.Emit/4.7.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-VR4kk8XLKebQ4MZuKuIni/7oh+QGFmZW3qORd1GvBq/8026OpW501SzT/oypwiQl4TvT8ErnReh/NzY9u+C6wQ==",
      "path": "system.reflection.emit/4.7.0",
      "hashPath": "system.reflection.emit.4.7.0.nupkg.sha512"
    },
    "System.Reflection.Emit.ILGeneration/4.0.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-Ov6dU8Bu15Bc7zuqttgHF12J5lwSWyTf1S+FJouUXVMSqImLZzYaQ+vRr1rQ0OZ0HqsrwWl4dsKHELckQkVpgA==",
      "path": "system.reflection.emit.ilgeneration/4.0.1",
      "hashPath": "system.reflection.emit.ilgeneration.4.0.1.nupkg.sha512"
    },
    "System.Reflection.Emit.Lightweight/4.0.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-sSzHHXueZ5Uh0OLpUQprhr+ZYJrLPA2Cmr4gn0wj9+FftNKXx8RIMKvO9qnjk2ebPYUjZ+F2ulGdPOsvj+MEjA==",
      "path": "system.reflection.emit.lightweight/4.0.1",
      "hashPath": "system.reflection.emit.lightweight.4.0.1.nupkg.sha512"
    },
    "System.Reflection.Extensions/4.0.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-GYrtRsZcMuHF3sbmRHfMYpvxZoIN2bQGrYGerUiWLEkqdEUQZhH3TRSaC/oI4wO0II1RKBPlpIa1TOMxIcOOzQ==",
      "path": "system.reflection.extensions/4.0.1",
      "hashPath": "system.reflection.extensions.4.0.1.nupkg.sha512"
    },
    "System.Reflection.Primitives/4.0.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-4inTox4wTBaDhB7V3mPvp9XlCbeGYWVEM9/fXALd52vNEAVisc1BoVWQPuUuD0Ga//dNbA/WeMy9u9mzLxGTHQ==",
      "path": "system.reflection.primitives/4.0.1",
      "hashPath": "system.reflection.primitives.4.0.1.nupkg.sha512"
    },
    "System.Reflection.TypeExtensions/4.1.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-tsQ/ptQ3H5FYfON8lL4MxRk/8kFyE0A+tGPXmVP967cT/gzLHYxIejIYSxp4JmIeFHVP78g/F2FE1mUUTbDtrg==",
      "path": "system.reflection.typeextensions/4.1.0",
      "hashPath": "system.reflection.typeextensions.4.1.0.nupkg.sha512"
    },
    "System.Resources.ResourceManager/4.0.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-TxwVeUNoTgUOdQ09gfTjvW411MF+w9MBYL7AtNVc+HtBCFlutPLhUCdZjNkjbhj3bNQWMdHboF0KIWEOjJssbA==",
      "path": "system.resources.resourcemanager/4.0.1",
      "hashPath": "system.resources.resourcemanager.4.0.1.nupkg.sha512"
    },
    "System.Runtime/4.1.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-v6c/4Yaa9uWsq+JMhnOFewrYkgdNHNG2eMKuNqRn8P733rNXeRCGvV5FkkjBXn2dbVkPXOsO0xjsEeM1q2zC0g==",
      "path": "system.runtime/4.1.0",
      "hashPath": "system.runtime.4.1.0.nupkg.sha512"
    },
    "System.Runtime.Extensions/4.1.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-CUOHjTT/vgP0qGW22U4/hDlOqXmcPq5YicBaXdUR2UiUoLwBT+olO6we4DVbq57jeX5uXH2uerVZhf0qGj+sVQ==",
      "path": "system.runtime.extensions/4.1.0",
      "hashPath": "system.runtime.extensions.4.1.0.nupkg.sha512"
    },
    "System.Runtime.Handles/4.0.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-nCJvEKguXEvk2ymk1gqj625vVnlK3/xdGzx0vOKicQkoquaTBJTP13AIYkocSUwHCLNBwUbXTqTWGDxBTWpt7g==",
      "path": "system.runtime.handles/4.0.1",
      "hashPath": "system.runtime.handles.4.0.1.nupkg.sha512"
    },
    "System.Runtime.InteropServices/4.1.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-16eu3kjHS633yYdkjwShDHZLRNMKVi/s0bY8ODiqJ2RfMhDMAwxZaUaWVnZ2P71kr/or+X9o/xFWtNqz8ivieQ==",
      "path": "system.runtime.interopservices/4.1.0",
      "hashPath": "system.runtime.interopservices.4.1.0.nupkg.sha512"
    },
    "System.Runtime.InteropServices.RuntimeInformation/4.0.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-hWPhJxc453RCa8Z29O91EmfGeZIHX1ZH2A8L6lYQVSaKzku2DfArSfMEb1/MYYzPQRJZeu0c9dmYeJKxW5Fgng==",
      "path": "system.runtime.interopservices.runtimeinformation/4.0.0",
      "hashPath": "system.runtime.interopservices.runtimeinformation.4.0.0.nupkg.sha512"
    },
    "System.Security.Principal.Windows/4.5.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-U77HfRXlZlOeIXd//Yoj6Jnk8AXlbeisf1oq1os+hxOGVnuG+lGSfGqTwTZBoORFF6j/0q7HXIl8cqwQ9aUGqQ==",
      "path": "system.security.principal.windows/4.5.0",
      "hashPath": "system.security.principal.windows.4.5.0.nupkg.sha512"
    },
    "System.Text.Encoding/4.0.11": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-U3gGeMlDZXxCEiY4DwVLSacg+DFWCvoiX+JThA/rvw37Sqrku7sEFeVBBBMBnfB6FeZHsyDx85HlKL19x0HtZA==",
      "path": "system.text.encoding/4.0.11",
      "hashPath": "system.text.encoding.4.0.11.nupkg.sha512"
    },
    "System.Text.Encodings.Web/4.5.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-Xg4G4Indi4dqP1iuAiMSwpiWS54ZghzR644OtsRCm/m/lBMG8dUBhLVN7hLm8NNrNTR+iGbshCPTwrvxZPlm4g==",
      "path": "system.text.encodings.web/4.5.0",
      "hashPath": "system.text.encodings.web.4.5.0.nupkg.sha512"
    },
    "System.Threading/4.0.11": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-N+3xqIcg3VDKyjwwCGaZ9HawG9aC6cSDI+s7ROma310GQo8vilFZa86hqKppwTHleR/G0sfOzhvgnUxWCR/DrQ==",
      "path": "system.threading/4.0.11",
      "hashPath": "system.threading.4.0.11.nupkg.sha512"
    },
    "System.Threading.Channels/4.5.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-MEH06N0rIGmRT4LOKQ2BmUO0IxfvmIY/PaouSq+DFQku72OL8cxfw8W99uGpTCFf2vx2QHLRSh374iSM3asdTA==",
      "path": "system.threading.channels/4.5.0",
      "hashPath": "system.threading.channels.4.5.0.nupkg.sha512"
    },
    "System.Threading.Tasks/4.0.11": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-k1S4Gc6IGwtHGT8188RSeGaX86Qw/wnrgNLshJvsdNUOPP9etMmo8S07c+UlOAx4K/xLuN9ivA1bD0LVurtIxQ==",
      "path": "system.threading.tasks/4.0.11",
      "hashPath": "system.threading.tasks.4.0.11.nupkg.sha512"
    },
    "System.Threading.Tasks.Extensions/4.5.1": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-WSKUTtLhPR8gllzIWO2x6l4lmAIfbyMAiTlyXAis4QBDonXK4b4S6F8zGARX4/P8wH3DH+sLdhamCiHn+fTU1A==",
      "path": "system.threading.tasks.extensions/4.5.1",
      "hashPath": "system.threading.tasks.extensions.4.5.1.nupkg.sha512"
    },
    "AllbertBackend.Domain/1.0.0": {
      "type": "project",
      "serviceable": false,
      "sha512": ""
    }
  }
}
