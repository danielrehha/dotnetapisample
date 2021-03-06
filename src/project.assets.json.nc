{
  "version": 3,
  "targets": {
    "net5.0": {
      "AutoMapper/10.1.1": {
        "type": "package",
        "dependencies": {
          "Microsoft.CSharp": "4.7.0",
          "System.Reflection.Emit": "4.7.0"
        },
        "compile": {
          "lib/netstandard2.0/AutoMapper.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/AutoMapper.dll": {}
        }
      },
      "AutoMapper.Extensions.Microsoft.DependencyInjection/8.1.1": {
        "type": "package",
        "dependencies": {
          "AutoMapper": "[10.1.1, 11.0.0)",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "3.0.0",
          "Microsoft.Extensions.Options": "3.0.0"
        },
        "compile": {
          "lib/netstandard2.0/AutoMapper.Extensions.Microsoft.DependencyInjection.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/AutoMapper.Extensions.Microsoft.DependencyInjection.dll": {}
        }
      },
      "AWSSDK.Core/3.7.0.31": {
        "type": "package",
        "compile": {
          "lib/netcoreapp3.1/AWSSDK.Core.dll": {}
        },
        "runtime": {
          "lib/netcoreapp3.1/AWSSDK.Core.dll": {}
        }
      },
      "AWSSDK.Extensions.NETCore.Setup/3.7.0.1": {
        "type": "package",
        "dependencies": {
          "AWSSDK.Core": "3.7.0",
          "Microsoft.Extensions.Configuration.Abstractions": "2.0.0",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "2.0.0",
          "Microsoft.Extensions.Logging.Abstractions": "2.0.0"
        },
        "compile": {
          "lib/netstandard2.0/AWSSDK.Extensions.NETCore.Setup.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/AWSSDK.Extensions.NETCore.Setup.dll": {}
        }
      },
      "FluentValidation/10.2.2": {
        "type": "package",
        "compile": {
          "lib/net5.0/FluentValidation.dll": {}
        },
        "runtime": {
          "lib/net5.0/FluentValidation.dll": {}
        }
      },
      "GoogleApi/3.10.11": {
        "type": "package",
        "dependencies": {
          "Newtonsoft.Json": "10.0.3",
          "Portable.BouncyCastle": "1.8.1.3"
        },
        "compile": {
          "lib/netstandard2.1/GoogleApi.dll": {}
        },
        "runtime": {
          "lib/netstandard2.1/GoogleApi.dll": {}
        }
      },
      "Humanizer.Core/2.8.26": {
        "type": "package",
        "compile": {
          "lib/netstandard2.0/_._": {}
        },
        "runtime": {
          "lib/netstandard2.0/Humanizer.dll": {}
        }
      },
      "MediatR/9.0.0": {
        "type": "package",
        "compile": {
          "lib/netstandard2.1/MediatR.dll": {}
        },
        "runtime": {
          "lib/netstandard2.1/MediatR.dll": {}
        }
      },
      "MediatR.Extensions.Microsoft.DependencyInjection/9.0.0": {
        "type": "package",
        "dependencies": {
          "MediatR": "9.0.0",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "2.0.0"
        },
        "compile": {
          "lib/netstandard2.0/MediatR.Extensions.Microsoft.DependencyInjection.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/MediatR.Extensions.Microsoft.DependencyInjection.dll": {}
        }
      },
      "Microsoft.AspNetCore.Authentication.Abstractions/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.AspNetCore.Http.Abstractions": "2.2.0",
          "Microsoft.Extensions.Logging.Abstractions": "2.2.0",
          "Microsoft.Extensions.Options": "2.2.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Authentication.Abstractions.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Authentication.Abstractions.dll": {}
        }
      },
      "Microsoft.AspNetCore.Authentication.Core/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.AspNetCore.Authentication.Abstractions": "2.2.0",
          "Microsoft.AspNetCore.Http": "2.2.0",
          "Microsoft.AspNetCore.Http.Extensions": "2.2.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Authentication.Core.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Authentication.Core.dll": {}
        }
      },
      "Microsoft.AspNetCore.Authorization/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.Extensions.Logging.Abstractions": "2.2.0",
          "Microsoft.Extensions.Options": "2.2.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Authorization.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Authorization.dll": {}
        }
      },
      "Microsoft.AspNetCore.Authorization.Policy/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.AspNetCore.Authentication.Abstractions": "2.2.0",
          "Microsoft.AspNetCore.Authorization": "2.2.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Authorization.Policy.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Authorization.Policy.dll": {}
        }
      },
      "Microsoft.AspNetCore.Connections.Abstractions/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.AspNetCore.Http.Features": "2.2.0",
          "System.IO.Pipelines": "4.5.2"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Connections.Abstractions.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Connections.Abstractions.dll": {}
        }
      },
      "Microsoft.AspNetCore.Hosting.Abstractions/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.AspNetCore.Hosting.Server.Abstractions": "2.2.0",
          "Microsoft.AspNetCore.Http.Abstractions": "2.2.0",
          "Microsoft.Extensions.Hosting.Abstractions": "2.2.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Hosting.Abstractions.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Hosting.Abstractions.dll": {}
        }
      },
      "Microsoft.AspNetCore.Hosting.Server.Abstractions/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.AspNetCore.Http.Features": "2.2.0",
          "Microsoft.Extensions.Configuration.Abstractions": "2.2.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Hosting.Server.Abstractions.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Hosting.Server.Abstractions.dll": {}
        }
      },
      "Microsoft.AspNetCore.Http/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.AspNetCore.Http.Abstractions": "2.2.0",
          "Microsoft.AspNetCore.WebUtilities": "2.2.0",
          "Microsoft.Extensions.ObjectPool": "2.2.0",
          "Microsoft.Extensions.Options": "2.2.0",
          "Microsoft.Net.Http.Headers": "2.2.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Http.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Http.dll": {}
        }
      },
      "Microsoft.AspNetCore.Http.Abstractions/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.AspNetCore.Http.Features": "2.2.0",
          "System.Text.Encodings.Web": "4.5.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Http.Abstractions.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Http.Abstractions.dll": {}
        }
      },
      "Microsoft.AspNetCore.Http.Connections/1.1.0": {
        "type": "package",
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
        "compile": {
          "lib/netcoreapp2.2/Microsoft.AspNetCore.Http.Connections.dll": {}
        },
        "runtime": {
          "lib/netcoreapp2.2/Microsoft.AspNetCore.Http.Connections.dll": {}
        }
      },
      "Microsoft.AspNetCore.Http.Connections.Common/1.1.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.AspNetCore.Connections.Abstractions": "2.2.0",
          "Newtonsoft.Json": "11.0.2",
          "System.Buffers": "4.5.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Http.Connections.Common.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Http.Connections.Common.dll": {}
        }
      },
      "Microsoft.AspNetCore.Http.Extensions/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.AspNetCore.Http.Abstractions": "2.2.0",
          "Microsoft.Extensions.FileProviders.Abstractions": "2.2.0",
          "Microsoft.Net.Http.Headers": "2.2.0",
          "System.Buffers": "4.5.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Http.Extensions.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Http.Extensions.dll": {}
        }
      },
      "Microsoft.AspNetCore.Http.Features/5.0.6": {
        "type": "package",
        "dependencies": {
          "Microsoft.Extensions.Primitives": "5.0.1",
          "System.IO.Pipelines": "5.0.1"
        },
        "compile": {
          "lib/net5.0/Microsoft.AspNetCore.Http.Features.dll": {}
        },
        "runtime": {
          "lib/net5.0/Microsoft.AspNetCore.Http.Features.dll": {}
        }
      },
      "Microsoft.AspNetCore.Mvc.Abstractions/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.AspNetCore.Routing.Abstractions": "2.2.0",
          "Microsoft.Net.Http.Headers": "2.2.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Mvc.Abstractions.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Mvc.Abstractions.dll": {}
        }
      },
      "Microsoft.AspNetCore.Mvc.Core/2.2.5": {
        "type": "package",
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
          "Microsoft.Extensions.DependencyInjection": "2.2.0",
          "Microsoft.Extensions.DependencyModel": "2.1.0",
          "Microsoft.Extensions.FileProviders.Abstractions": "2.2.0",
          "Microsoft.Extensions.Logging.Abstractions": "2.2.0",
          "System.Diagnostics.DiagnosticSource": "4.5.0",
          "System.Threading.Tasks.Extensions": "4.5.1"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Mvc.Core.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Mvc.Core.dll": {}
        }
      },
      "Microsoft.AspNetCore.ResponseCaching.Abstractions/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.Extensions.Primitives": "2.2.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.ResponseCaching.Abstractions.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.ResponseCaching.Abstractions.dll": {}
        }
      },
      "Microsoft.AspNetCore.Routing/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.AspNetCore.Http.Extensions": "2.2.0",
          "Microsoft.AspNetCore.Routing.Abstractions": "2.2.0",
          "Microsoft.Extensions.Logging.Abstractions": "2.2.0",
          "Microsoft.Extensions.ObjectPool": "2.2.0",
          "Microsoft.Extensions.Options": "2.2.0"
        },
        "compile": {
          "lib/netcoreapp2.2/Microsoft.AspNetCore.Routing.dll": {}
        },
        "runtime": {
          "lib/netcoreapp2.2/Microsoft.AspNetCore.Routing.dll": {}
        }
      },
      "Microsoft.AspNetCore.Routing.Abstractions/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.AspNetCore.Http.Abstractions": "2.2.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Routing.Abstractions.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.Routing.Abstractions.dll": {}
        }
      },
      "Microsoft.AspNetCore.SignalR/1.1.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.AspNetCore.Http.Connections": "1.1.0",
          "Microsoft.AspNetCore.SignalR.Core": "1.1.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.SignalR.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.SignalR.dll": {}
        }
      },
      "Microsoft.AspNetCore.SignalR.Common/1.1.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.AspNetCore.Connections.Abstractions": "2.2.0",
          "Microsoft.Extensions.Options": "2.2.0",
          "Newtonsoft.Json": "11.0.2",
          "System.Buffers": "4.5.0"
        },
        "compile": {
          "lib/netcoreapp2.2/Microsoft.AspNetCore.SignalR.Common.dll": {}
        },
        "runtime": {
          "lib/netcoreapp2.2/Microsoft.AspNetCore.SignalR.Common.dll": {}
        }
      },
      "Microsoft.AspNetCore.SignalR.Core/1.1.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.AspNetCore.Authorization": "2.2.0",
          "Microsoft.AspNetCore.SignalR.Common": "1.1.0",
          "Microsoft.AspNetCore.SignalR.Protocols.Json": "1.1.0",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "2.2.0",
          "Microsoft.Extensions.Logging.Abstractions": "2.2.0",
          "System.Reflection.Emit": "4.3.0",
          "System.Threading.Channels": "4.5.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.SignalR.Core.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.SignalR.Core.dll": {}
        }
      },
      "Microsoft.AspNetCore.SignalR.Protocols.Json/1.1.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.AspNetCore.SignalR.Common": "1.1.0",
          "Newtonsoft.Json": "11.0.2"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.SignalR.Protocols.Json.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.SignalR.Protocols.Json.dll": {}
        }
      },
      "Microsoft.AspNetCore.WebSockets/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.AspNetCore.Http.Extensions": "2.2.0",
          "Microsoft.Extensions.Logging.Abstractions": "2.2.0",
          "Microsoft.Extensions.Options": "2.2.0",
          "System.Net.WebSockets.WebSocketProtocol": "4.5.1"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.WebSockets.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.WebSockets.dll": {}
        }
      },
      "Microsoft.AspNetCore.WebUtilities/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.Net.Http.Headers": "2.2.0",
          "System.Text.Encodings.Web": "4.5.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.AspNetCore.WebUtilities.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.AspNetCore.WebUtilities.dll": {}
        }
      },
      "Microsoft.CSharp/4.7.0": {
        "type": "package",
        "compile": {
          "ref/netcoreapp2.0/_._": {}
        },
        "runtime": {
          "lib/netcoreapp2.0/_._": {}
        }
      },
      "Microsoft.DotNet.PlatformAbstractions/2.1.0": {
        "type": "package",
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
        "compile": {
          "lib/netstandard1.3/Microsoft.DotNet.PlatformAbstractions.dll": {}
        },
        "runtime": {
          "lib/netstandard1.3/Microsoft.DotNet.PlatformAbstractions.dll": {}
        }
      },
      "Microsoft.EntityFrameworkCore/5.0.9": {
        "type": "package",
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
        "compile": {
          "lib/netstandard2.1/Microsoft.EntityFrameworkCore.dll": {}
        },
        "runtime": {
          "lib/netstandard2.1/Microsoft.EntityFrameworkCore.dll": {}
        }
      },
      "Microsoft.EntityFrameworkCore.Abstractions/5.0.9": {
        "type": "package",
        "compile": {
          "lib/netstandard2.1/Microsoft.EntityFrameworkCore.Abstractions.dll": {}
        },
        "runtime": {
          "lib/netstandard2.1/Microsoft.EntityFrameworkCore.Abstractions.dll": {}
        }
      },
      "Microsoft.EntityFrameworkCore.Analyzers/5.0.9": {
        "type": "package",
        "compile": {
          "lib/netstandard2.0/_._": {}
        },
        "runtime": {
          "lib/netstandard2.0/_._": {}
        }
      },
      "Microsoft.EntityFrameworkCore.Design/5.0.6": {
        "type": "package",
        "dependencies": {
          "Humanizer.Core": "2.8.26",
          "Microsoft.CSharp": "4.7.0",
          "Microsoft.EntityFrameworkCore.Relational": "5.0.6"
        },
        "compile": {
          "lib/netstandard2.1/_._": {}
        },
        "runtime": {
          "lib/netstandard2.1/Microsoft.EntityFrameworkCore.Design.dll": {}
        },
        "build": {
          "build/netcoreapp3.0/Microsoft.EntityFrameworkCore.Design.props": {}
        }
      },
      "Microsoft.EntityFrameworkCore.Relational/5.0.6": {
        "type": "package",
        "dependencies": {
          "Microsoft.EntityFrameworkCore": "5.0.6",
          "Microsoft.Extensions.Configuration.Abstractions": "5.0.0"
        },
        "compile": {
          "lib/netstandard2.1/Microsoft.EntityFrameworkCore.Relational.dll": {}
        },
        "runtime": {
          "lib/netstandard2.1/Microsoft.EntityFrameworkCore.Relational.dll": {}
        }
      },
      "Microsoft.EntityFrameworkCore.Tools/5.0.6": {
        "type": "package",
        "dependencies": {
          "Microsoft.EntityFrameworkCore.Design": "5.0.6"
        },
        "compile": {
          "lib/netstandard2.1/_._": {}
        },
        "runtime": {
          "lib/netstandard2.1/_._": {}
        }
      },
      "Microsoft.Extensions.Caching.Abstractions/5.0.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.Extensions.Primitives": "5.0.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.Extensions.Caching.Abstractions.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Caching.Abstractions.dll": {}
        }
      },
      "Microsoft.Extensions.Caching.Memory/5.0.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.Extensions.Caching.Abstractions": "5.0.0",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0",
          "Microsoft.Extensions.Logging.Abstractions": "5.0.0",
          "Microsoft.Extensions.Options": "5.0.0",
          "Microsoft.Extensions.Primitives": "5.0.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.Extensions.Caching.Memory.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Caching.Memory.dll": {}
        }
      },
      "Microsoft.Extensions.Configuration/5.0.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.Extensions.Configuration.Abstractions": "5.0.0",
          "Microsoft.Extensions.Primitives": "5.0.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.Extensions.Configuration.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Configuration.dll": {}
        }
      },
      "Microsoft.Extensions.Configuration.Abstractions/5.0.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.Extensions.Primitives": "5.0.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.Extensions.Configuration.Abstractions.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Configuration.Abstractions.dll": {}
        }
      },
      "Microsoft.Extensions.Configuration.Binder/5.0.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.Extensions.Configuration.Abstractions": "5.0.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.Extensions.Configuration.Binder.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Configuration.Binder.dll": {}
        }
      },
      "Microsoft.Extensions.DependencyInjection/5.0.2": {
        "type": "package",
        "dependencies": {
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0"
        },
        "compile": {
          "lib/net5.0/Microsoft.Extensions.DependencyInjection.dll": {}
        },
        "runtime": {
          "lib/net5.0/Microsoft.Extensions.DependencyInjection.dll": {}
        }
      },
      "Microsoft.Extensions.DependencyInjection.Abstractions/5.0.0": {
        "type": "package",
        "compile": {
          "lib/netstandard2.0/Microsoft.Extensions.DependencyInjection.Abstractions.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.DependencyInjection.Abstractions.dll": {}
        }
      },
      "Microsoft.Extensions.DependencyModel/2.1.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.DotNet.PlatformAbstractions": "2.1.0",
          "Newtonsoft.Json": "9.0.1",
          "System.Diagnostics.Debug": "4.0.11",
          "System.Dynamic.Runtime": "4.0.11",
          "System.Linq": "4.1.0"
        },
        "compile": {
          "lib/netstandard1.6/Microsoft.Extensions.DependencyModel.dll": {}
        },
        "runtime": {
          "lib/netstandard1.6/Microsoft.Extensions.DependencyModel.dll": {}
        }
      },
      "Microsoft.Extensions.FileProviders.Abstractions/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.Extensions.Primitives": "2.2.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.Extensions.FileProviders.Abstractions.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.FileProviders.Abstractions.dll": {}
        }
      },
      "Microsoft.Extensions.Hosting.Abstractions/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.Extensions.Configuration.Abstractions": "2.2.0",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "2.2.0",
          "Microsoft.Extensions.FileProviders.Abstractions": "2.2.0",
          "Microsoft.Extensions.Logging.Abstractions": "2.2.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.Extensions.Hosting.Abstractions.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Hosting.Abstractions.dll": {}
        }
      },
      "Microsoft.Extensions.Logging/5.0.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.Extensions.DependencyInjection": "5.0.0",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0",
          "Microsoft.Extensions.Logging.Abstractions": "5.0.0",
          "Microsoft.Extensions.Options": "5.0.0"
        },
        "compile": {
          "lib/netstandard2.1/Microsoft.Extensions.Logging.dll": {}
        },
        "runtime": {
          "lib/netstandard2.1/Microsoft.Extensions.Logging.dll": {}
        }
      },
      "Microsoft.Extensions.Logging.Abstractions/5.0.0": {
        "type": "package",
        "compile": {
          "lib/netstandard2.0/Microsoft.Extensions.Logging.Abstractions.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Logging.Abstractions.dll": {}
        }
      },
      "Microsoft.Extensions.Logging.Configuration/5.0.0": {
        "type": "package",
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
        "compile": {
          "lib/netstandard2.0/Microsoft.Extensions.Logging.Configuration.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Logging.Configuration.dll": {}
        }
      },
      "Microsoft.Extensions.Logging.Console/5.0.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.Extensions.Configuration.Abstractions": "5.0.0",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0",
          "Microsoft.Extensions.Logging": "5.0.0",
          "Microsoft.Extensions.Logging.Abstractions": "5.0.0",
          "Microsoft.Extensions.Logging.Configuration": "5.0.0",
          "Microsoft.Extensions.Options": "5.0.0",
          "Microsoft.Extensions.Options.ConfigurationExtensions": "5.0.0"
        },
        "compile": {
          "lib/netcoreapp3.0/Microsoft.Extensions.Logging.Console.dll": {}
        },
        "runtime": {
          "lib/netcoreapp3.0/Microsoft.Extensions.Logging.Console.dll": {}
        }
      },
      "Microsoft.Extensions.ObjectPool/2.2.0": {
        "type": "package",
        "compile": {
          "lib/netstandard2.0/Microsoft.Extensions.ObjectPool.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.ObjectPool.dll": {}
        }
      },
      "Microsoft.Extensions.Options/5.0.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0",
          "Microsoft.Extensions.Primitives": "5.0.0"
        },
        "compile": {
          "lib/net5.0/Microsoft.Extensions.Options.dll": {}
        },
        "runtime": {
          "lib/net5.0/Microsoft.Extensions.Options.dll": {}
        }
      },
      "Microsoft.Extensions.Options.ConfigurationExtensions/5.0.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.Extensions.Configuration.Abstractions": "5.0.0",
          "Microsoft.Extensions.Configuration.Binder": "5.0.0",
          "Microsoft.Extensions.DependencyInjection.Abstractions": "5.0.0",
          "Microsoft.Extensions.Options": "5.0.0",
          "Microsoft.Extensions.Primitives": "5.0.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.Extensions.Options.ConfigurationExtensions.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Extensions.Options.ConfigurationExtensions.dll": {}
        }
      },
      "Microsoft.Extensions.Primitives/5.0.1": {
        "type": "package",
        "compile": {
          "lib/netcoreapp3.0/Microsoft.Extensions.Primitives.dll": {}
        },
        "runtime": {
          "lib/netcoreapp3.0/Microsoft.Extensions.Primitives.dll": {}
        }
      },
      "Microsoft.Net.Http.Headers/2.2.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.Extensions.Primitives": "2.2.0",
          "System.Buffers": "4.5.0"
        },
        "compile": {
          "lib/netstandard2.0/Microsoft.Net.Http.Headers.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Net.Http.Headers.dll": {}
        }
      },
      "Microsoft.NETCore.Platforms/5.0.0": {
        "type": "package",
        "compile": {
          "lib/netstandard1.0/_._": {}
        },
        "runtime": {
          "lib/netstandard1.0/_._": {}
        }
      },
      "Microsoft.NETCore.Targets/1.1.0": {
        "type": "package",
        "compile": {
          "lib/netstandard1.0/_._": {}
        },
        "runtime": {
          "lib/netstandard1.0/_._": {}
        }
      },
      "Microsoft.Win32.SystemEvents/5.0.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0"
        },
        "compile": {
          "ref/netstandard2.0/_._": {}
        },
        "runtime": {
          "lib/netstandard2.0/Microsoft.Win32.SystemEvents.dll": {}
        },
        "runtimeTargets": {
          "runtimes/win/lib/netcoreapp3.0/Microsoft.Win32.SystemEvents.dll": {
            "assetType": "runtime",
            "rid": "win"
          }
        }
      },
      "NETStandard.Library/2.0.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.1.0"
        },
        "compile": {
          "lib/netstandard1.0/_._": {}
        },
        "runtime": {
          "lib/netstandard1.0/_._": {}
        },
        "build": {
          "build/netstandard2.0/NETStandard.Library.targets": {}
        }
      },
      "Newtonsoft.Json/11.0.2": {
        "type": "package",
        "compile": {
          "lib/netstandard2.0/Newtonsoft.Json.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/Newtonsoft.Json.dll": {}
        }
      },
      "Npgsql/5.0.5": {
        "type": "package",
        "dependencies": {
          "System.Runtime.CompilerServices.Unsafe": "4.6.0"
        },
        "compile": {
          "lib/net5.0/Npgsql.dll": {}
        },
        "runtime": {
          "lib/net5.0/Npgsql.dll": {}
        }
      },
      "Npgsql.EntityFrameworkCore.PostgreSQL/5.0.6": {
        "type": "package",
        "dependencies": {
          "Microsoft.EntityFrameworkCore": "5.0.6",
          "Microsoft.EntityFrameworkCore.Abstractions": "5.0.6",
          "Microsoft.EntityFrameworkCore.Relational": "5.0.6",
          "Npgsql": "5.0.5"
        },
        "compile": {
          "lib/netstandard2.1/Npgsql.EntityFrameworkCore.PostgreSQL.dll": {}
        },
        "runtime": {
          "lib/netstandard2.1/Npgsql.EntityFrameworkCore.PostgreSQL.dll": {}
        }
      },
      "Portable.BouncyCastle/1.8.1.3": {
        "type": "package",
        "compile": {
          "lib/netstandard2.0/BouncyCastle.Crypto.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/BouncyCastle.Crypto.dll": {}
        }
      },
      "runtime.native.System/4.0.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.0.1",
          "Microsoft.NETCore.Targets": "1.0.1"
        },
        "compile": {
          "lib/netstandard1.0/_._": {}
        },
        "runtime": {
          "lib/netstandard1.0/_._": {}
        }
      },
      "System.AppContext/4.1.0": {
        "type": "package",
        "dependencies": {
          "System.Runtime": "4.1.0"
        },
        "compile": {
          "ref/netstandard1.6/System.AppContext.dll": {}
        },
        "runtime": {
          "lib/netstandard1.6/System.AppContext.dll": {}
        }
      },
      "System.Buffers/4.5.0": {
        "type": "package",
        "compile": {
          "ref/netcoreapp2.0/_._": {}
        },
        "runtime": {
          "lib/netcoreapp2.0/_._": {}
        }
      },
      "System.Collections/4.3.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.1.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.3/System.Collections.dll": {}
        }
      },
      "System.Collections.Concurrent/4.3.0": {
        "type": "package",
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
        },
        "compile": {
          "ref/netstandard1.3/System.Collections.Concurrent.dll": {}
        },
        "runtime": {
          "lib/netstandard1.3/System.Collections.Concurrent.dll": {}
        }
      },
      "System.Collections.Immutable/5.0.0": {
        "type": "package",
        "compile": {
          "lib/netstandard2.0/System.Collections.Immutable.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/System.Collections.Immutable.dll": {}
        }
      },
      "System.Collections.NonGeneric/4.3.0": {
        "type": "package",
        "dependencies": {
          "System.Diagnostics.Debug": "4.3.0",
          "System.Globalization": "4.3.0",
          "System.Resources.ResourceManager": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Runtime.Extensions": "4.3.0",
          "System.Threading": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.3/System.Collections.NonGeneric.dll": {}
        },
        "runtime": {
          "lib/netstandard1.3/System.Collections.NonGeneric.dll": {}
        }
      },
      "System.ComponentModel.Annotations/5.0.0": {
        "type": "package",
        "compile": {
          "ref/netstandard2.1/System.ComponentModel.Annotations.dll": {}
        },
        "runtime": {
          "lib/netstandard2.1/System.ComponentModel.Annotations.dll": {}
        }
      },
      "System.Configuration.ConfigurationManager/5.0.0": {
        "type": "package",
        "dependencies": {
          "System.Security.Cryptography.ProtectedData": "5.0.0",
          "System.Security.Permissions": "5.0.0"
        },
        "compile": {
          "ref/netstandard2.0/System.Configuration.ConfigurationManager.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/System.Configuration.ConfigurationManager.dll": {}
        }
      },
      "System.Data.Common/4.3.0": {
        "type": "package",
        "dependencies": {
          "System.Collections": "4.3.0",
          "System.Globalization": "4.3.0",
          "System.IO": "4.3.0",
          "System.Resources.ResourceManager": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Runtime.Extensions": "4.3.0",
          "System.Text.RegularExpressions": "4.3.0",
          "System.Threading.Tasks": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.2/System.Data.Common.dll": {}
        },
        "runtime": {
          "lib/netstandard1.2/System.Data.Common.dll": {}
        }
      },
      "System.Diagnostics.Debug/4.3.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.1.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.3/System.Diagnostics.Debug.dll": {}
        }
      },
      "System.Diagnostics.DiagnosticSource/5.0.1": {
        "type": "package",
        "compile": {
          "lib/net5.0/System.Diagnostics.DiagnosticSource.dll": {}
        },
        "runtime": {
          "lib/net5.0/System.Diagnostics.DiagnosticSource.dll": {}
        }
      },
      "System.Diagnostics.Tracing/4.3.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.1.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.5/_._": {}
        }
      },
      "System.Drawing.Common/5.0.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.Win32.SystemEvents": "5.0.0"
        },
        "compile": {
          "ref/netcoreapp3.0/System.Drawing.Common.dll": {}
        },
        "runtime": {
          "lib/netcoreapp3.0/System.Drawing.Common.dll": {}
        },
        "runtimeTargets": {
          "runtimes/unix/lib/netcoreapp3.0/System.Drawing.Common.dll": {
            "assetType": "runtime",
            "rid": "unix"
          },
          "runtimes/win/lib/netcoreapp3.0/System.Drawing.Common.dll": {
            "assetType": "runtime",
            "rid": "win"
          }
        }
      },
      "System.Dynamic.Runtime/4.0.11": {
        "type": "package",
        "dependencies": {
          "System.Collections": "4.0.11",
          "System.Diagnostics.Debug": "4.0.11",
          "System.Globalization": "4.0.11",
          "System.Linq": "4.1.0",
          "System.Linq.Expressions": "4.1.0",
          "System.ObjectModel": "4.0.12",
          "System.Reflection": "4.1.0",
          "System.Reflection.Emit": "4.0.1",
          "System.Reflection.Emit.ILGeneration": "4.0.1",
          "System.Reflection.Primitives": "4.0.1",
          "System.Reflection.TypeExtensions": "4.1.0",
          "System.Resources.ResourceManager": "4.0.1",
          "System.Runtime": "4.1.0",
          "System.Runtime.Extensions": "4.1.0",
          "System.Threading": "4.0.11"
        },
        "compile": {
          "ref/netstandard1.3/System.Dynamic.Runtime.dll": {}
        },
        "runtime": {
          "lib/netstandard1.3/System.Dynamic.Runtime.dll": {}
        }
      },
      "System.Globalization/4.3.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.1.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.3/System.Globalization.dll": {}
        }
      },
      "System.IO/4.3.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.1.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0",
          "System.Text.Encoding": "4.3.0",
          "System.Threading.Tasks": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.5/System.IO.dll": {}
        }
      },
      "System.IO.FileSystem/4.3.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.1.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.IO": "4.3.0",
          "System.IO.FileSystem.Primitives": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Runtime.Handles": "4.3.0",
          "System.Text.Encoding": "4.3.0",
          "System.Threading.Tasks": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.3/System.IO.FileSystem.dll": {}
        }
      },
      "System.IO.FileSystem.Primitives/4.3.0": {
        "type": "package",
        "dependencies": {
          "System.Runtime": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.3/System.IO.FileSystem.Primitives.dll": {}
        },
        "runtime": {
          "lib/netstandard1.3/System.IO.FileSystem.Primitives.dll": {}
        }
      },
      "System.IO.Pipelines/5.0.1": {
        "type": "package",
        "compile": {
          "ref/netcoreapp2.0/System.IO.Pipelines.dll": {}
        },
        "runtime": {
          "lib/netcoreapp3.0/System.IO.Pipelines.dll": {}
        }
      },
      "System.Linq/4.3.0": {
        "type": "package",
        "dependencies": {
          "System.Collections": "4.3.0",
          "System.Diagnostics.Debug": "4.3.0",
          "System.Resources.ResourceManager": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Runtime.Extensions": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.6/System.Linq.dll": {}
        },
        "runtime": {
          "lib/netstandard1.6/System.Linq.dll": {}
        }
      },
      "System.Linq.Expressions/4.3.0": {
        "type": "package",
        "dependencies": {
          "System.Collections": "4.3.0",
          "System.Diagnostics.Debug": "4.3.0",
          "System.Globalization": "4.3.0",
          "System.IO": "4.3.0",
          "System.Linq": "4.3.0",
          "System.ObjectModel": "4.3.0",
          "System.Reflection": "4.3.0",
          "System.Reflection.Emit": "4.3.0",
          "System.Reflection.Emit.ILGeneration": "4.3.0",
          "System.Reflection.Emit.Lightweight": "4.3.0",
          "System.Reflection.Extensions": "4.3.0",
          "System.Reflection.Primitives": "4.3.0",
          "System.Reflection.TypeExtensions": "4.3.0",
          "System.Resources.ResourceManager": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Runtime.Extensions": "4.3.0",
          "System.Threading": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.6/System.Linq.Expressions.dll": {}
        },
        "runtime": {
          "lib/netstandard1.6/System.Linq.Expressions.dll": {}
        }
      },
      "System.Linq.Queryable/4.3.0": {
        "type": "package",
        "dependencies": {
          "System.Collections": "4.3.0",
          "System.Diagnostics.Debug": "4.3.0",
          "System.Linq": "4.3.0",
          "System.Linq.Expressions": "4.3.0",
          "System.Reflection": "4.3.0",
          "System.Reflection.Extensions": "4.3.0",
          "System.Resources.ResourceManager": "4.3.0",
          "System.Runtime": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.0/System.Linq.Queryable.dll": {}
        },
        "runtime": {
          "lib/netstandard1.3/System.Linq.Queryable.dll": {}
        }
      },
      "System.Net.WebSockets.WebSocketProtocol/4.5.1": {
        "type": "package",
        "compile": {
          "ref/netstandard2.0/System.Net.WebSockets.WebSocketProtocol.dll": {}
        },
        "runtime": {
          "lib/netcoreapp2.1/System.Net.WebSockets.WebSocketProtocol.dll": {}
        }
      },
      "System.ObjectModel/4.3.0": {
        "type": "package",
        "dependencies": {
          "System.Collections": "4.3.0",
          "System.Diagnostics.Debug": "4.3.0",
          "System.Resources.ResourceManager": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Threading": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.3/System.ObjectModel.dll": {}
        },
        "runtime": {
          "lib/netstandard1.3/System.ObjectModel.dll": {}
        }
      },
      "System.Reflection/4.3.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.1.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.IO": "4.3.0",
          "System.Reflection.Primitives": "4.3.0",
          "System.Runtime": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.5/System.Reflection.dll": {}
        }
      },
      "System.Reflection.Emit/4.7.0": {
        "type": "package",
        "compile": {
          "ref/netcoreapp2.0/_._": {}
        },
        "runtime": {
          "lib/netcoreapp2.0/_._": {}
        }
      },
      "System.Reflection.Emit.ILGeneration/4.3.0": {
        "type": "package",
        "dependencies": {
          "System.Reflection": "4.3.0",
          "System.Reflection.Primitives": "4.3.0",
          "System.Runtime": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.0/_._": {}
        },
        "runtime": {
          "lib/netstandard1.3/System.Reflection.Emit.ILGeneration.dll": {}
        }
      },
      "System.Reflection.Emit.Lightweight/4.3.0": {
        "type": "package",
        "dependencies": {
          "System.Reflection": "4.3.0",
          "System.Reflection.Emit.ILGeneration": "4.3.0",
          "System.Reflection.Primitives": "4.3.0",
          "System.Runtime": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.0/_._": {}
        },
        "runtime": {
          "lib/netstandard1.3/System.Reflection.Emit.Lightweight.dll": {}
        }
      },
      "System.Reflection.Extensions/4.3.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.1.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Reflection": "4.3.0",
          "System.Runtime": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.0/_._": {}
        }
      },
      "System.Reflection.Primitives/4.3.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.1.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.0/System.Reflection.Primitives.dll": {}
        }
      },
      "System.Reflection.TypeExtensions/4.7.0": {
        "type": "package",
        "compile": {
          "ref/netcoreapp2.0/_._": {}
        },
        "runtime": {
          "lib/netcoreapp2.0/_._": {}
        }
      },
      "System.Resources.ResourceManager/4.3.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.1.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Globalization": "4.3.0",
          "System.Reflection": "4.3.0",
          "System.Runtime": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.0/_._": {}
        }
      },
      "System.Runtime/4.3.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.1.0",
          "Microsoft.NETCore.Targets": "1.1.0"
        },
        "compile": {
          "ref/netstandard1.5/System.Runtime.dll": {}
        }
      },
      "System.Runtime.CompilerServices.Unsafe/4.6.0": {
        "type": "package",
        "compile": {
          "ref/netstandard2.0/System.Runtime.CompilerServices.Unsafe.dll": {}
        },
        "runtime": {
          "lib/netcoreapp2.0/System.Runtime.CompilerServices.Unsafe.dll": {}
        }
      },
      "System.Runtime.Extensions/4.3.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.1.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.5/System.Runtime.Extensions.dll": {}
        }
      },
      "System.Runtime.Handles/4.3.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.1.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.3/System.Runtime.Handles.dll": {}
        }
      },
      "System.Runtime.InteropServices/4.3.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.1.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Reflection": "4.3.0",
          "System.Reflection.Primitives": "4.3.0",
          "System.Runtime": "4.3.0",
          "System.Runtime.Handles": "4.3.0"
        },
        "compile": {
          "ref/netcoreapp1.1/System.Runtime.InteropServices.dll": {}
        }
      },
      "System.Runtime.InteropServices.RuntimeInformation/4.0.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.0.1",
          "System.Reflection": "4.1.0",
          "System.Resources.ResourceManager": "4.0.1",
          "System.Runtime": "4.1.0",
          "System.Runtime.InteropServices": "4.1.0",
          "System.Threading": "4.0.11",
          "runtime.native.System": "4.0.0"
        },
        "compile": {
          "ref/netstandard1.1/System.Runtime.InteropServices.RuntimeInformation.dll": {}
        },
        "runtimeTargets": {
          "runtimes/unix/lib/netstandard1.1/System.Runtime.InteropServices.RuntimeInformation.dll": {
            "assetType": "runtime",
            "rid": "unix"
          },
          "runtimes/win/lib/netstandard1.1/System.Runtime.InteropServices.RuntimeInformation.dll": {
            "assetType": "runtime",
            "rid": "win"
          }
        }
      },
      "System.Security.AccessControl/5.0.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "5.0.0",
          "System.Security.Principal.Windows": "5.0.0"
        },
        "compile": {
          "ref/netstandard2.0/System.Security.AccessControl.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/System.Security.AccessControl.dll": {}
        },
        "runtimeTargets": {
          "runtimes/win/lib/netcoreapp2.0/System.Security.AccessControl.dll": {
            "assetType": "runtime",
            "rid": "win"
          }
        }
      },
      "System.Security.Cryptography.ProtectedData/5.0.0": {
        "type": "package",
        "compile": {
          "ref/netstandard2.0/_._": {}
        },
        "runtime": {
          "lib/netstandard2.0/System.Security.Cryptography.ProtectedData.dll": {}
        },
        "runtimeTargets": {
          "runtimes/win/lib/netstandard2.0/System.Security.Cryptography.ProtectedData.dll": {
            "assetType": "runtime",
            "rid": "win"
          }
        }
      },
      "System.Security.Permissions/5.0.0": {
        "type": "package",
        "dependencies": {
          "System.Security.AccessControl": "5.0.0",
          "System.Windows.Extensions": "5.0.0"
        },
        "compile": {
          "ref/net5.0/System.Security.Permissions.dll": {}
        },
        "runtime": {
          "lib/net5.0/System.Security.Permissions.dll": {}
        }
      },
      "System.Security.Principal.Windows/5.0.0": {
        "type": "package",
        "compile": {
          "ref/netcoreapp3.0/System.Security.Principal.Windows.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/System.Security.Principal.Windows.dll": {}
        },
        "runtimeTargets": {
          "runtimes/unix/lib/netcoreapp2.1/System.Security.Principal.Windows.dll": {
            "assetType": "runtime",
            "rid": "unix"
          },
          "runtimes/win/lib/netcoreapp2.1/System.Security.Principal.Windows.dll": {
            "assetType": "runtime",
            "rid": "win"
          }
        }
      },
      "System.Text.Encoding/4.3.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.1.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.3/System.Text.Encoding.dll": {}
        }
      },
      "System.Text.Encoding.Extensions/4.3.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.1.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0",
          "System.Text.Encoding": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.3/_._": {}
        }
      },
      "System.Text.Encodings.Web/4.5.0": {
        "type": "package",
        "compile": {
          "lib/netstandard2.0/System.Text.Encodings.Web.dll": {}
        },
        "runtime": {
          "lib/netstandard2.0/System.Text.Encodings.Web.dll": {}
        }
      },
      "System.Text.RegularExpressions/4.3.0": {
        "type": "package",
        "dependencies": {
          "System.Runtime": "4.3.0"
        },
        "compile": {
          "ref/netcoreapp1.1/_._": {}
        },
        "runtime": {
          "lib/netstandard1.6/System.Text.RegularExpressions.dll": {}
        }
      },
      "System.Threading/4.3.0": {
        "type": "package",
        "dependencies": {
          "System.Runtime": "4.3.0",
          "System.Threading.Tasks": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.3/_._": {}
        },
        "runtime": {
          "lib/netstandard1.3/System.Threading.dll": {}
        }
      },
      "System.Threading.Channels/4.5.0": {
        "type": "package",
        "compile": {
          "lib/netcoreapp2.1/System.Threading.Channels.dll": {}
        },
        "runtime": {
          "lib/netcoreapp2.1/System.Threading.Channels.dll": {}
        }
      },
      "System.Threading.Tasks/4.3.0": {
        "type": "package",
        "dependencies": {
          "Microsoft.NETCore.Platforms": "1.1.0",
          "Microsoft.NETCore.Targets": "1.1.0",
          "System.Runtime": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.3/System.Threading.Tasks.dll": {}
        }
      },
      "System.Threading.Tasks.Extensions/4.5.1": {
        "type": "package",
        "compile": {
          "ref/netcoreapp2.1/_._": {}
        },
        "runtime": {
          "lib/netcoreapp2.1/_._": {}
        }
      },
      "System.Windows.Extensions/5.0.0": {
        "type": "package",
        "dependencies": {
          "System.Drawing.Common": "5.0.0"
        },
        "compile": {
          "ref/netcoreapp3.0/System.Windows.Extensions.dll": {}
        },
        "runtime": {
          "lib/netcoreapp3.0/System.Windows.Extensions.dll": {}
        },
        "runtimeTargets": {
          "runtimes/win/lib/netcoreapp3.0/System.Windows.Extensions.dll": {
            "assetType": "runtime",
            "rid": "win"
          }
        }
      },
      "System.Xml.ReaderWriter/4.3.0": {
        "type": "package",
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
          "System.Threading.Tasks.Extensions": "4.3.0"
        },
        "compile": {
          "ref/netstandard1.3/System.Xml.ReaderWriter.dll": {}
        },
        "runtime": {
          "lib/netstandard1.3/System.Xml.ReaderWriter.dll": {}
        }
      },
      "System.Xml.XPath/4.3.0": {
        "type": "package",
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
        },
        "compile": {
          "ref/netstandard1.3/System.Xml.XPath.dll": {}
        },
        "runtime": {
          "lib/netstandard1.3/System.Xml.XPath.dll": {}
        }
      },
      "Z.EntityFramework.Extensions.EFCore/5.2.12": {
        "type": "package",
        "dependencies": {
          "Microsoft.CSharp": "4.7.0",
          "Microsoft.EntityFrameworkCore.Relational": "5.0.0",
          "Newtonsoft.Json": "10.0.2",
          "System.Configuration.ConfigurationManager": "5.0.0",
          "System.Reflection.Emit": "4.7.0",
          "System.Reflection.TypeExtensions": "4.7.0"
        },
        "compile": {
          "lib/netstandard2.1/Z.EntityFramework.Extensions.EFCore.dll": {}
        },
        "runtime": {
          "lib/netstandard2.1/Z.EntityFramework.Extensions.EFCore.dll": {}
        }
      },
      "Z.EntityFramework.Plus.EFCore/5.2.12": {
        "type": "package",
        "dependencies": {
          "Microsoft.CSharp": "4.7.0",
          "Microsoft.EntityFrameworkCore.Relational": "[5.0.0, 6.0.0)",
          "System.Reflection.Emit": "4.7.0",
          "System.Reflection.TypeExtensions": "4.7.0",
          "Z.EntityFramework.Extensions.EFCore": "[5.2.12]",
          "Z.Expressions.Eval": "[4.0.54]"
        },
        "compile": {
          "lib/netstandard2.1/Z.EntityFramework.Plus.EFCore.dll": {}
        },
        "runtime": {
          "lib/netstandard2.1/Z.EntityFramework.Plus.EFCore.dll": {}
        }
      },
      "Z.Expressions.Eval/4.0.54": {
        "type": "package",
        "dependencies": {
          "Microsoft.CSharp": "4.5.0",
          "Microsoft.Extensions.Caching.Memory": "2.0.0",
          "NETStandard.Library": "2.0.0",
          "Newtonsoft.Json": "11.0.2",
          "System.Collections.Concurrent": "4.3.0",
          "System.Collections.NonGeneric": "4.3.0",
          "System.Configuration.ConfigurationManager": "4.5.0",
          "System.Data.Common": "4.3.0",
          "System.Linq.Queryable": "4.3.0",
          "System.Reflection.Emit": "4.3.0",
          "System.Reflection.TypeExtensions": "4.5.0",
          "System.Xml.XPath": "4.3.0"
        },
        "compile": {
          "lib/netstandard2.1/Z.Expressions.Eval.dll": {}
        },
        "runtime": {
          "lib/netstandard2.1/Z.Expressions.Eval.dll": {}
        }
      },
      "AllbertBackend.Application/1.0.0": {
        "type": "project",
        "framework": ".NETCoreApp,Version=v5.0",
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
        "compile": {
          "bin/placeholder/AllbertBackend.Application.dll": {}
        },
        "runtime": {
          "bin/placeholder/AllbertBackend.Application.dll": {}
        }
      },
      "AllbertBackend.Domain/1.0.0": {
        "type": "project",
        "framework": ".NETCoreApp,Version=v5.0",
        "dependencies": {
          "Microsoft.AspNetCore.Mvc.Core": "2.2.5"
        },
        "compile": {
          "bin/placeholder/AllbertBackend.Domain.dll": {}
        },
        "runtime": {
          "bin/placeholder/AllbertBackend.Domain.dll": {}
        }
      }
    }
  },
  "libraries": {
    "AutoMapper/10.1.1": {
      "sha512": "uMgbqOdu9ZG5cIOty0C85hzzayBH2i9BthnS5FlMqKtMSHDv4ts81a2jS1VFaDBVhlBeIqJ/kQKjQY95BZde9w==",
      "type": "package",
      "path": "automapper/10.1.1",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "automapper.10.1.1.nupkg.sha512",
        "automapper.nuspec",
        "icon.png",
        "lib/net461/AutoMapper.dll",
        "lib/net461/AutoMapper.xml",
        "lib/netstandard2.0/AutoMapper.dll",
        "lib/netstandard2.0/AutoMapper.xml"
      ]
    },
    "AutoMapper.Extensions.Microsoft.DependencyInjection/8.1.1": {
      "sha512": "xSWoVzOipuDU4PeZcUfaZQ+xqXU8QmGv5jrdlxt3MYm9xaOmrefqcfzGQ3SQ+D+8wfBa/ZwSuL0qKOVj080inA==",
      "type": "package",
      "path": "automapper.extensions.microsoft.dependencyinjection/8.1.1",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "automapper.extensions.microsoft.dependencyinjection.8.1.1.nupkg.sha512",
        "automapper.extensions.microsoft.dependencyinjection.nuspec",
        "icon.png",
        "lib/netstandard2.0/AutoMapper.Extensions.Microsoft.DependencyInjection.dll"
      ]
    },
    "AWSSDK.Core/3.7.0.31": {
      "sha512": "C2vzPag+Rzb1hBiMUwRW+HQzIrsPxxKBk7EMX0AUxkApg36DOGXI1Aha4xpC0w5sWqRuQAJ3YW0Ihk1nPlBzKA==",
      "type": "package",
      "path": "awssdk.core/3.7.0.31",
      "hasTools": true,
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "awssdk.core.3.7.0.31.nupkg.sha512",
        "awssdk.core.nuspec",
        "lib/net35/AWSSDK.Core.dll",
        "lib/net35/AWSSDK.Core.pdb",
        "lib/net35/AWSSDK.Core.xml",
        "lib/net45/AWSSDK.Core.dll",
        "lib/net45/AWSSDK.Core.pdb",
        "lib/net45/AWSSDK.Core.xml",
        "lib/netcoreapp3.1/AWSSDK.Core.dll",
        "lib/netcoreapp3.1/AWSSDK.Core.pdb",
        "lib/netcoreapp3.1/AWSSDK.Core.xml",
        "lib/netstandard2.0/AWSSDK.Core.dll",
        "lib/netstandard2.0/AWSSDK.Core.pdb",
        "lib/netstandard2.0/AWSSDK.Core.xml",
        "tools/account-management.ps1"
      ]
    },
    "AWSSDK.Extensions.NETCore.Setup/3.7.0.1": {
      "sha512": "cEsWQnC8uisjpv9l3AYI5XyM9k27g/HESGI214IzGGmclZapZRzTishuWVrRjql1NaeHvUXgzylUXXdQ4e6x1A==",
      "type": "package",
      "path": "awssdk.extensions.netcore.setup/3.7.0.1",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "awssdk.extensions.netcore.setup.3.7.0.1.nupkg.sha512",
        "awssdk.extensions.netcore.setup.nuspec",
        "lib/netstandard2.0/AWSSDK.Extensions.NETCore.Setup.dll",
        "lib/netstandard2.0/AWSSDK.Extensions.NETCore.Setup.pdb"
      ]
    },
    "FluentValidation/10.2.2": {
      "sha512": "/3J+ToMcXV9bdnLpXJJ4q2iDYRvcKU6jcEhKpsXfgrs/1vBhAZQDdOqVgzHXh3gwgy1fYyVGEvSAvvDlfOQavw==",
      "type": "package",
      "path": "fluentvalidation/10.2.2",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "fluent-validation-icon.png",
        "fluentvalidation.10.2.2.nupkg.sha512",
        "fluentvalidation.nuspec",
        "lib/net5.0/FluentValidation.dll",
        "lib/net5.0/FluentValidation.xml",
        "lib/netstandard2.0/FluentValidation.dll",
        "lib/netstandard2.0/FluentValidation.xml",
        "lib/netstandard2.1/FluentValidation.dll",
        "lib/netstandard2.1/FluentValidation.xml"
      ]
    },
    "GoogleApi/3.10.11": {
      "sha512": "MSUgytHfR3D+RyldchMV4WiL6lLLUMw2IBhtjOnR8p5wC6U2m0gFbQLrKbHPvqTSOw77wAbFiNMjrURZvWAZYQ==",
      "type": "package",
      "path": "googleapi/3.10.11",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "LICENSE.txt",
        "googleapi.3.10.11.nupkg.sha512",
        "googleapi.nuspec",
        "icon.jpg",
        "lib/net45/GoogleApi.dll",
        "lib/net45/GoogleApi.xml",
        "lib/netstandard1.1/GoogleApi.dll",
        "lib/netstandard1.1/GoogleApi.xml",
        "lib/netstandard1.4/GoogleApi.dll",
        "lib/netstandard1.4/GoogleApi.xml",
        "lib/netstandard2.0/GoogleApi.dll",
        "lib/netstandard2.0/GoogleApi.xml",
        "lib/netstandard2.1/GoogleApi.dll",
        "lib/netstandard2.1/GoogleApi.xml"
      ]
    },
    "Humanizer.Core/2.8.26": {
      "sha512": "OiKusGL20vby4uDEswj2IgkdchC1yQ6rwbIkZDVBPIR6al2b7n3pC91elBul9q33KaBgRKhbZH3+2Ur4fnWx2A==",
      "type": "package",
      "path": "humanizer.core/2.8.26",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "humanizer.core.2.8.26.nupkg.sha512",
        "humanizer.core.nuspec",
        "lib/netstandard1.0/Humanizer.dll",
        "lib/netstandard1.0/Humanizer.xml",
        "lib/netstandard2.0/Humanizer.dll",
        "lib/netstandard2.0/Humanizer.xml",
        "logo.png"
      ]
    },
    "MediatR/9.0.0": {
      "sha512": "8b3UYNxegHVYcJMG2zH8wn+YqxLvXG+eMfj0cMCq/jTW72p6O3PCKMkrIv0mqyxdW7bA4gblsocw7n+/9Akg5g==",
      "type": "package",
      "path": "mediatr/9.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "gradient_128x128.png",
        "lib/net461/MediatR.dll",
        "lib/net461/MediatR.xml",
        "lib/netstandard2.0/MediatR.dll",
        "lib/netstandard2.0/MediatR.xml",
        "lib/netstandard2.1/MediatR.dll",
        "lib/netstandard2.1/MediatR.xml",
        "mediatr.9.0.0.nupkg.sha512",
        "mediatr.nuspec"
      ]
    },
    "MediatR.Extensions.Microsoft.DependencyInjection/9.0.0": {
      "sha512": "msreY4ogiPdIRWiCQVHQDytIQpsZCLWsixWPZ+Xs86KZrvtuiV8BDHbIT0kBmogynVYWNpspb3caw+86YU8L6w==",
      "type": "package",
      "path": "mediatr.extensions.microsoft.dependencyinjection/9.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "gradient_128x128.png",
        "lib/netstandard2.0/MediatR.Extensions.Microsoft.DependencyInjection.dll",
        "mediatr.extensions.microsoft.dependencyinjection.9.0.0.nupkg.sha512",
        "mediatr.extensions.microsoft.dependencyinjection.nuspec"
      ]
    },
    "Microsoft.AspNetCore.Authentication.Abstractions/2.2.0": {
      "sha512": "VloMLDJMf3n/9ic5lCBOa42IBYJgyB1JhzLsL68Zqg+2bEPWfGBj/xCJy/LrKTArN0coOcZp3wyVTZlx0y9pHQ==",
      "type": "package",
      "path": "microsoft.aspnetcore.authentication.abstractions/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.Authentication.Abstractions.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.Authentication.Abstractions.xml",
        "microsoft.aspnetcore.authentication.abstractions.2.2.0.nupkg.sha512",
        "microsoft.aspnetcore.authentication.abstractions.nuspec"
      ]
    },
    "Microsoft.AspNetCore.Authentication.Core/2.2.0": {
      "sha512": "XlVJzJ5wPOYW+Y0J6Q/LVTEyfS4ssLXmt60T0SPP+D8abVhBTl+cgw2gDHlyKYIkcJg7btMVh383NDkMVqD/fg==",
      "type": "package",
      "path": "microsoft.aspnetcore.authentication.core/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.Authentication.Core.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.Authentication.Core.xml",
        "microsoft.aspnetcore.authentication.core.2.2.0.nupkg.sha512",
        "microsoft.aspnetcore.authentication.core.nuspec"
      ]
    },
    "Microsoft.AspNetCore.Authorization/2.2.0": {
      "sha512": "/L0W8H3jMYWyaeA9gBJqS/tSWBegP9aaTM0mjRhxTttBY9z4RVDRYJ2CwPAmAXIuPr3r1sOw+CS8jFVRGHRezQ==",
      "type": "package",
      "path": "microsoft.aspnetcore.authorization/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.Authorization.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.Authorization.xml",
        "microsoft.aspnetcore.authorization.2.2.0.nupkg.sha512",
        "microsoft.aspnetcore.authorization.nuspec"
      ]
    },
    "Microsoft.AspNetCore.Authorization.Policy/2.2.0": {
      "sha512": "aJCo6niDRKuNg2uS2WMEmhJTooQUGARhV2ENQ2tO5443zVHUo19MSgrgGo9FIrfD+4yKPF8Q+FF33WkWfPbyKw==",
      "type": "package",
      "path": "microsoft.aspnetcore.authorization.policy/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.Authorization.Policy.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.Authorization.Policy.xml",
        "microsoft.aspnetcore.authorization.policy.2.2.0.nupkg.sha512",
        "microsoft.aspnetcore.authorization.policy.nuspec"
      ]
    },
    "Microsoft.AspNetCore.Connections.Abstractions/2.2.0": {
      "sha512": "Aqr/16Cu5XmGv7mLKJvXRxhhd05UJ7cTTSaUV4MZ3ynAzfgWjsAdpIU8FWuxwAjmVdmI8oOWuVDrbs+sRkhKnA==",
      "type": "package",
      "path": "microsoft.aspnetcore.connections.abstractions/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.Connections.Abstractions.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.Connections.Abstractions.xml",
        "microsoft.aspnetcore.connections.abstractions.2.2.0.nupkg.sha512",
        "microsoft.aspnetcore.connections.abstractions.nuspec"
      ]
    },
    "Microsoft.AspNetCore.Hosting.Abstractions/2.2.0": {
      "sha512": "ubycklv+ZY7Kutdwuy1W4upWcZ6VFR8WUXU7l7B2+mvbDBBPAcfpi+E+Y5GFe+Q157YfA3C49D2GCjAZc7Mobw==",
      "type": "package",
      "path": "microsoft.aspnetcore.hosting.abstractions/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.Hosting.Abstractions.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.Hosting.Abstractions.xml",
        "microsoft.aspnetcore.hosting.abstractions.2.2.0.nupkg.sha512",
        "microsoft.aspnetcore.hosting.abstractions.nuspec"
      ]
    },
    "Microsoft.AspNetCore.Hosting.Server.Abstractions/2.2.0": {
      "sha512": "1PMijw8RMtuQF60SsD/JlKtVfvh4NORAhF4wjysdABhlhTrYmtgssqyncR0Stq5vqtjplZcj6kbT4LRTglt9IQ==",
      "type": "package",
      "path": "microsoft.aspnetcore.hosting.server.abstractions/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.Hosting.Server.Abstractions.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.Hosting.Server.Abstractions.xml",
        "microsoft.aspnetcore.hosting.server.abstractions.2.2.0.nupkg.sha512",
        "microsoft.aspnetcore.hosting.server.abstractions.nuspec"
      ]
    },
    "Microsoft.AspNetCore.Http/2.2.0": {
      "sha512": "YogBSMotWPAS/X5967pZ+yyWPQkThxhmzAwyCHCSSldzYBkW5W5d6oPfBaPqQOnSHYTpSOSOkpZoAce0vwb6+A==",
      "type": "package",
      "path": "microsoft.aspnetcore.http/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.Http.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.Http.xml",
        "microsoft.aspnetcore.http.2.2.0.nupkg.sha512",
        "microsoft.aspnetcore.http.nuspec"
      ]
    },
    "Microsoft.AspNetCore.Http.Abstractions/2.2.0": {
      "sha512": "Nxs7Z1q3f1STfLYKJSVXCs1iBl+Ya6E8o4Oy1bCxJ/rNI44E/0f6tbsrVqAWfB7jlnJfyaAtIalBVxPKUPQb4Q==",
      "type": "package",
      "path": "microsoft.aspnetcore.http.abstractions/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.Http.Abstractions.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.Http.Abstractions.xml",
        "microsoft.aspnetcore.http.abstractions.2.2.0.nupkg.sha512",
        "microsoft.aspnetcore.http.abstractions.nuspec"
      ]
    },
    "Microsoft.AspNetCore.Http.Connections/1.1.0": {
      "sha512": "ZcwAM9rE5yjGC+vtiNAK0INybpKIqnvB+/rntZn2/CPtyiBAtovVrEp4UZOoC31zH5t0P78ix9gLNJzII/ODsA==",
      "type": "package",
      "path": "microsoft.aspnetcore.http.connections/1.1.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netcoreapp2.2/Microsoft.AspNetCore.Http.Connections.dll",
        "lib/netcoreapp2.2/Microsoft.AspNetCore.Http.Connections.xml",
        "lib/netstandard2.0/Microsoft.AspNetCore.Http.Connections.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.Http.Connections.xml",
        "microsoft.aspnetcore.http.connections.1.1.0.nupkg.sha512",
        "microsoft.aspnetcore.http.connections.nuspec"
      ]
    },
    "Microsoft.AspNetCore.Http.Connections.Common/1.1.0": {
      "sha512": "mYk5QUUjyXQmlyDHWDjkLYDArt97plwe6KsDsNVhDEQ+HgZMKGjISyM6YSA7BERQNR25kXBTbIYfSy1vePGQgg==",
      "type": "package",
      "path": "microsoft.aspnetcore.http.connections.common/1.1.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.Http.Connections.Common.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.Http.Connections.Common.xml",
        "microsoft.aspnetcore.http.connections.common.1.1.0.nupkg.sha512",
        "microsoft.aspnetcore.http.connections.common.nuspec"
      ]
    },
    "Microsoft.AspNetCore.Http.Extensions/2.2.0": {
      "sha512": "2DgZ9rWrJtuR7RYiew01nGRzuQBDaGHGmK56Rk54vsLLsCdzuFUPqbDTJCS1qJQWTbmbIQ9wGIOjpxA1t0l7/w==",
      "type": "package",
      "path": "microsoft.aspnetcore.http.extensions/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.Http.Extensions.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.Http.Extensions.xml",
        "microsoft.aspnetcore.http.extensions.2.2.0.nupkg.sha512",
        "microsoft.aspnetcore.http.extensions.nuspec"
      ]
    },
    "Microsoft.AspNetCore.Http.Features/5.0.6": {
      "sha512": "MfpLQRQK/iBZLiaRgPd4dNq4REVbycYH9apU0i18UWQsqZt2Oa0+gZRnz8j4eDCzzCwQSoVXtuCtuCdEnIk9vg==",
      "type": "package",
      "path": "microsoft.aspnetcore.http.features/5.0.6",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/Microsoft.AspNetCore.Http.Features.dll",
        "lib/net461/Microsoft.AspNetCore.Http.Features.xml",
        "lib/net5.0/Microsoft.AspNetCore.Http.Features.dll",
        "lib/net5.0/Microsoft.AspNetCore.Http.Features.xml",
        "lib/netstandard2.0/Microsoft.AspNetCore.Http.Features.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.Http.Features.xml",
        "microsoft.aspnetcore.http.features.5.0.6.nupkg.sha512",
        "microsoft.aspnetcore.http.features.nuspec"
      ]
    },
    "Microsoft.AspNetCore.Mvc.Abstractions/2.2.0": {
      "sha512": "ET6uZpfVbGR1NjCuLaLy197cQ3qZUjzl7EG5SL4GfJH/c9KRE89MMBrQegqWsh0w1iRUB/zQaK0anAjxa/pz4g==",
      "type": "package",
      "path": "microsoft.aspnetcore.mvc.abstractions/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.Mvc.Abstractions.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.Mvc.Abstractions.xml",
        "microsoft.aspnetcore.mvc.abstractions.2.2.0.nupkg.sha512",
        "microsoft.aspnetcore.mvc.abstractions.nuspec"
      ]
    },
    "Microsoft.AspNetCore.Mvc.Core/2.2.5": {
      "sha512": "/8sr8ixIUD57UFwUntha9bOwex7/AkZfdk1f9oNJG1Ek7p/uuKVa7fuHmYZpQOf35Oxrt+2Ku4WPwMSbNxOuWg==",
      "type": "package",
      "path": "microsoft.aspnetcore.mvc.core/2.2.5",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.Mvc.Core.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.Mvc.Core.xml",
        "microsoft.aspnetcore.mvc.core.2.2.5.nupkg.sha512",
        "microsoft.aspnetcore.mvc.core.nuspec"
      ]
    },
    "Microsoft.AspNetCore.ResponseCaching.Abstractions/2.2.0": {
      "sha512": "CIHWEKrHzZfFp7t57UXsueiSA/raku56TgRYauV/W1+KAQq6vevz60zjEKaazt3BI76zwMz3B4jGWnCwd8kwQw==",
      "type": "package",
      "path": "microsoft.aspnetcore.responsecaching.abstractions/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.ResponseCaching.Abstractions.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.ResponseCaching.Abstractions.xml",
        "microsoft.aspnetcore.responsecaching.abstractions.2.2.0.nupkg.sha512",
        "microsoft.aspnetcore.responsecaching.abstractions.nuspec"
      ]
    },
    "Microsoft.AspNetCore.Routing/2.2.0": {
      "sha512": "jAhDBy0wryOnMhhZTtT9z63gJbvCzFuLm8yC6pHzuVu9ZD1dzg0ltxIwT4cfwuNkIL/TixdKsm3vpVOpG8euWQ==",
      "type": "package",
      "path": "microsoft.aspnetcore.routing/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netcoreapp2.2/Microsoft.AspNetCore.Routing.dll",
        "lib/netcoreapp2.2/Microsoft.AspNetCore.Routing.xml",
        "lib/netstandard2.0/Microsoft.AspNetCore.Routing.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.Routing.xml",
        "microsoft.aspnetcore.routing.2.2.0.nupkg.sha512",
        "microsoft.aspnetcore.routing.nuspec"
      ]
    },
    "Microsoft.AspNetCore.Routing.Abstractions/2.2.0": {
      "sha512": "lRRaPN7jDlUCVCp9i0W+PB0trFaKB0bgMJD7hEJS9Uo4R9MXaMC8X2tJhPLmeVE3SGDdYI4QNKdVmhNvMJGgPQ==",
      "type": "package",
      "path": "microsoft.aspnetcore.routing.abstractions/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.Routing.Abstractions.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.Routing.Abstractions.xml",
        "microsoft.aspnetcore.routing.abstractions.2.2.0.nupkg.sha512",
        "microsoft.aspnetcore.routing.abstractions.nuspec"
      ]
    },
    "Microsoft.AspNetCore.SignalR/1.1.0": {
      "sha512": "V5X5XkeAHaFyyBOGPrddVeqTNo6zRPJNS5PRhlzEyBXiNG9AtqUbMyWFdZahQyMiIWJau550z59A4kdC9g5I9A==",
      "type": "package",
      "path": "microsoft.aspnetcore.signalr/1.1.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.SignalR.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.SignalR.xml",
        "microsoft.aspnetcore.signalr.1.1.0.nupkg.sha512",
        "microsoft.aspnetcore.signalr.nuspec"
      ]
    },
    "Microsoft.AspNetCore.SignalR.Common/1.1.0": {
      "sha512": "TyLgQ4y4RVUIxiYFnHT181/rJ33/tL/NcBWC9BwLpulDt5/yGCG4EvsToZ49EBQ7256zj+R6OGw6JF+jj6MdPQ==",
      "type": "package",
      "path": "microsoft.aspnetcore.signalr.common/1.1.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netcoreapp2.2/Microsoft.AspNetCore.SignalR.Common.dll",
        "lib/netcoreapp2.2/Microsoft.AspNetCore.SignalR.Common.xml",
        "lib/netstandard2.0/Microsoft.AspNetCore.SignalR.Common.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.SignalR.Common.xml",
        "microsoft.aspnetcore.signalr.common.1.1.0.nupkg.sha512",
        "microsoft.aspnetcore.signalr.common.nuspec"
      ]
    },
    "Microsoft.AspNetCore.SignalR.Core/1.1.0": {
      "sha512": "mk69z50oFk2e89d3F/AfKeAvP3kvGG7MHG4ErydZiUd3ncSRq0kl0czq/COn/QVKYua9yGr2LIDwuR1C6/pu8Q==",
      "type": "package",
      "path": "microsoft.aspnetcore.signalr.core/1.1.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.SignalR.Core.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.SignalR.Core.xml",
        "microsoft.aspnetcore.signalr.core.1.1.0.nupkg.sha512",
        "microsoft.aspnetcore.signalr.core.nuspec"
      ]
    },
    "Microsoft.AspNetCore.SignalR.Protocols.Json/1.1.0": {
      "sha512": "BOsjatDJnvnnXCMajOlC0ISmiFnJi/EyJzMo0i//5fZJVCLrQ4fyV/HzrhhAhSJuwJOQDdDozKQ9MB9jHq84pg==",
      "type": "package",
      "path": "microsoft.aspnetcore.signalr.protocols.json/1.1.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.SignalR.Protocols.Json.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.SignalR.Protocols.Json.xml",
        "microsoft.aspnetcore.signalr.protocols.json.1.1.0.nupkg.sha512",
        "microsoft.aspnetcore.signalr.protocols.json.nuspec"
      ]
    },
    "Microsoft.AspNetCore.WebSockets/2.2.0": {
      "sha512": "ZpOcg2V0rCwU9ErfDb9y3Hcjoe7rU42XlmUS0mO4pVZQSgJVqR+DfyZtYd5LDa11F7bFNS2eezI9cBM3CmfGhw==",
      "type": "package",
      "path": "microsoft.aspnetcore.websockets/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.WebSockets.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.WebSockets.xml",
        "microsoft.aspnetcore.websockets.2.2.0.nupkg.sha512",
        "microsoft.aspnetcore.websockets.nuspec"
      ]
    },
    "Microsoft.AspNetCore.WebUtilities/2.2.0": {
      "sha512": "9ErxAAKaDzxXASB/b5uLEkLgUWv1QbeVxyJYEHQwMaxXOeFFVkQxiq8RyfVcifLU7NR0QY0p3acqx4ZpYfhHDg==",
      "type": "package",
      "path": "microsoft.aspnetcore.webutilities/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.AspNetCore.WebUtilities.dll",
        "lib/netstandard2.0/Microsoft.AspNetCore.WebUtilities.xml",
        "microsoft.aspnetcore.webutilities.2.2.0.nupkg.sha512",
        "microsoft.aspnetcore.webutilities.nuspec"
      ]
    },
    "Microsoft.CSharp/4.7.0": {
      "sha512": "pTj+D3uJWyN3My70i2Hqo+OXixq3Os2D1nJ2x92FFo6sk8fYS1m1WLNTs0Dc1uPaViH0YvEEwvzddQ7y4rhXmA==",
      "type": "package",
      "path": "microsoft.csharp/4.7.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/netcore50/Microsoft.CSharp.dll",
        "lib/netcoreapp2.0/_._",
        "lib/netstandard1.3/Microsoft.CSharp.dll",
        "lib/netstandard2.0/Microsoft.CSharp.dll",
        "lib/netstandard2.0/Microsoft.CSharp.xml",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/uap10.0.16299/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "microsoft.csharp.4.7.0.nupkg.sha512",
        "microsoft.csharp.nuspec",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/netcore50/Microsoft.CSharp.dll",
        "ref/netcore50/Microsoft.CSharp.xml",
        "ref/netcore50/de/Microsoft.CSharp.xml",
        "ref/netcore50/es/Microsoft.CSharp.xml",
        "ref/netcore50/fr/Microsoft.CSharp.xml",
        "ref/netcore50/it/Microsoft.CSharp.xml",
        "ref/netcore50/ja/Microsoft.CSharp.xml",
        "ref/netcore50/ko/Microsoft.CSharp.xml",
        "ref/netcore50/ru/Microsoft.CSharp.xml",
        "ref/netcore50/zh-hans/Microsoft.CSharp.xml",
        "ref/netcore50/zh-hant/Microsoft.CSharp.xml",
        "ref/netcoreapp2.0/_._",
        "ref/netstandard1.0/Microsoft.CSharp.dll",
        "ref/netstandard1.0/Microsoft.CSharp.xml",
        "ref/netstandard1.0/de/Microsoft.CSharp.xml",
        "ref/netstandard1.0/es/Microsoft.CSharp.xml",
        "ref/netstandard1.0/fr/Microsoft.CSharp.xml",
        "ref/netstandard1.0/it/Microsoft.CSharp.xml",
        "ref/netstandard1.0/ja/Microsoft.CSharp.xml",
        "ref/netstandard1.0/ko/Microsoft.CSharp.xml",
        "ref/netstandard1.0/ru/Microsoft.CSharp.xml",
        "ref/netstandard1.0/zh-hans/Microsoft.CSharp.xml",
        "ref/netstandard1.0/zh-hant/Microsoft.CSharp.xml",
        "ref/netstandard2.0/Microsoft.CSharp.dll",
        "ref/netstandard2.0/Microsoft.CSharp.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/uap10.0.16299/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "Microsoft.DotNet.PlatformAbstractions/2.1.0": {
      "sha512": "9KPDwvb/hLEVXYruVHVZ8BkebC8j17DmPb56LnqRF74HqSPLjCkrlFUjOtFpQPA2DeADBRTI/e69aCfRBfrhxw==",
      "type": "package",
      "path": "microsoft.dotnet.platformabstractions/2.1.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net45/Microsoft.DotNet.PlatformAbstractions.dll",
        "lib/netstandard1.3/Microsoft.DotNet.PlatformAbstractions.dll",
        "microsoft.dotnet.platformabstractions.2.1.0.nupkg.sha512",
        "microsoft.dotnet.platformabstractions.nuspec"
      ]
    },
    "Microsoft.EntityFrameworkCore/5.0.9": {
      "sha512": "mA+W/zpJZMp802xt2D+qBXrme4VFN+FlsrHdU6WG5HKDAnezClRksJhJicUR8XojnSPp9SgZKa1aIAasB5G67g==",
      "type": "package",
      "path": "microsoft.entityframeworkcore/5.0.9",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "lib/netstandard2.1/Microsoft.EntityFrameworkCore.dll",
        "lib/netstandard2.1/Microsoft.EntityFrameworkCore.xml",
        "microsoft.entityframeworkcore.5.0.9.nupkg.sha512",
        "microsoft.entityframeworkcore.nuspec"
      ]
    },
    "Microsoft.EntityFrameworkCore.Abstractions/5.0.9": {
      "sha512": "csbpDaXe9iQUkvDS3JZRAFfkgcRA7BlHE3u8feBLlYervmTAS1WIWPBZKMtH0a2GO5njwAABU3j+hZMCPYBrzQ==",
      "type": "package",
      "path": "microsoft.entityframeworkcore.abstractions/5.0.9",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "lib/netstandard2.1/Microsoft.EntityFrameworkCore.Abstractions.dll",
        "lib/netstandard2.1/Microsoft.EntityFrameworkCore.Abstractions.xml",
        "microsoft.entityframeworkcore.abstractions.5.0.9.nupkg.sha512",
        "microsoft.entityframeworkcore.abstractions.nuspec"
      ]
    },
    "Microsoft.EntityFrameworkCore.Analyzers/5.0.9": {
      "sha512": "eyuPLRFjcF7VWH8qy1uUuMrO02W15n9EXAXnYjCTWgH0SDIeZAa2XZXMZ9U3dvOPtvllMBy0obYA5SSbnpaNoQ==",
      "type": "package",
      "path": "microsoft.entityframeworkcore.analyzers/5.0.9",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "analyzers/dotnet/cs/Microsoft.EntityFrameworkCore.Analyzers.dll",
        "lib/netstandard2.0/_._",
        "microsoft.entityframeworkcore.analyzers.5.0.9.nupkg.sha512",
        "microsoft.entityframeworkcore.analyzers.nuspec"
      ]
    },
    "Microsoft.EntityFrameworkCore.Design/5.0.6": {
      "sha512": "2hjMovtUx3zvMMJDNjFFtYbiYRg7SNAyRe3JQzCYy7kXfADcyr7tuf9meq0lxGZBf8qvilYcDaBj5M+iq90krQ==",
      "type": "package",
      "path": "microsoft.entityframeworkcore.design/5.0.6",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "build/netcoreapp3.0/Microsoft.EntityFrameworkCore.Design.props",
        "lib/netstandard2.1/Microsoft.EntityFrameworkCore.Design.dll",
        "lib/netstandard2.1/Microsoft.EntityFrameworkCore.Design.xml",
        "microsoft.entityframeworkcore.design.5.0.6.nupkg.sha512",
        "microsoft.entityframeworkcore.design.nuspec"
      ]
    },
    "Microsoft.EntityFrameworkCore.Relational/5.0.6": {
      "sha512": "zzmO/cAcvsFeU3Ey6643GiLl4hCgGpWdcCW8LHsHP35zmfTirnjm2PrB+wf1wYQlPNyGT9+uypbVSoOopg58Mg==",
      "type": "package",
      "path": "microsoft.entityframeworkcore.relational/5.0.6",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "lib/netstandard2.1/Microsoft.EntityFrameworkCore.Relational.dll",
        "lib/netstandard2.1/Microsoft.EntityFrameworkCore.Relational.xml",
        "microsoft.entityframeworkcore.relational.5.0.6.nupkg.sha512",
        "microsoft.entityframeworkcore.relational.nuspec"
      ]
    },
    "Microsoft.EntityFrameworkCore.Tools/5.0.6": {
      "sha512": "eh3jspEKaDu/q3+YqdZ6V1Htwjn/eMp5rT9KGHFw4GEKUIg7CVNzGtZ57ZV5HwBus4A/6OcGUGa6/J72UU8ZUg==",
      "type": "package",
      "path": "microsoft.entityframeworkcore.tools/5.0.6",
      "hasTools": true,
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "lib/netstandard2.1/_._",
        "microsoft.entityframeworkcore.tools.5.0.6.nupkg.sha512",
        "microsoft.entityframeworkcore.tools.nuspec",
        "tools/EntityFrameworkCore.PS2.psd1",
        "tools/EntityFrameworkCore.PS2.psm1",
        "tools/EntityFrameworkCore.psd1",
        "tools/EntityFrameworkCore.psm1",
        "tools/about_EntityFrameworkCore.help.txt",
        "tools/init.ps1",
        "tools/net461/any/ef.exe",
        "tools/net461/win-x86/ef.exe",
        "tools/netcoreapp2.0/any/ef.dll",
        "tools/netcoreapp2.0/any/ef.runtimeconfig.json"
      ]
    },
    "Microsoft.Extensions.Caching.Abstractions/5.0.0": {
      "sha512": "bu8As90/SBAouMZ6fJ+qRNo1X+KgHGrVueFhhYi+E5WqEhcnp2HoWRFnMzXQ6g4RdZbvPowFerSbKNH4Dtg5yg==",
      "type": "package",
      "path": "microsoft.extensions.caching.abstractions/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/Microsoft.Extensions.Caching.Abstractions.dll",
        "lib/net461/Microsoft.Extensions.Caching.Abstractions.xml",
        "lib/netstandard2.0/Microsoft.Extensions.Caching.Abstractions.dll",
        "lib/netstandard2.0/Microsoft.Extensions.Caching.Abstractions.xml",
        "microsoft.extensions.caching.abstractions.5.0.0.nupkg.sha512",
        "microsoft.extensions.caching.abstractions.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "Microsoft.Extensions.Caching.Memory/5.0.0": {
      "sha512": "/1qPCleFOkJe0O+xmFqCNLFYQZTJz965sVw8CUB/BQgsApBwzAUsL2BUkDvQW+geRUVTXUS9zLa0pBjC2VJ1gA==",
      "type": "package",
      "path": "microsoft.extensions.caching.memory/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/Microsoft.Extensions.Caching.Memory.dll",
        "lib/net461/Microsoft.Extensions.Caching.Memory.xml",
        "lib/netstandard2.0/Microsoft.Extensions.Caching.Memory.dll",
        "lib/netstandard2.0/Microsoft.Extensions.Caching.Memory.xml",
        "microsoft.extensions.caching.memory.5.0.0.nupkg.sha512",
        "microsoft.extensions.caching.memory.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "Microsoft.Extensions.Configuration/5.0.0": {
      "sha512": "LN322qEKHjuVEhhXueTUe7RNePooZmS8aGid5aK2woX3NPjSnONFyKUc6+JknOS6ce6h2tCLfKPTBXE3mN/6Ag==",
      "type": "package",
      "path": "microsoft.extensions.configuration/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/Microsoft.Extensions.Configuration.dll",
        "lib/net461/Microsoft.Extensions.Configuration.xml",
        "lib/netstandard2.0/Microsoft.Extensions.Configuration.dll",
        "lib/netstandard2.0/Microsoft.Extensions.Configuration.xml",
        "microsoft.extensions.configuration.5.0.0.nupkg.sha512",
        "microsoft.extensions.configuration.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "Microsoft.Extensions.Configuration.Abstractions/5.0.0": {
      "sha512": "ETjSBHMp3OAZ4HxGQYpwyGsD8Sw5FegQXphi0rpoGMT74S4+I2mm7XJEswwn59XAaKOzC15oDSOWEE8SzDCd6Q==",
      "type": "package",
      "path": "microsoft.extensions.configuration.abstractions/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/Microsoft.Extensions.Configuration.Abstractions.dll",
        "lib/net461/Microsoft.Extensions.Configuration.Abstractions.xml",
        "lib/netstandard2.0/Microsoft.Extensions.Configuration.Abstractions.dll",
        "lib/netstandard2.0/Microsoft.Extensions.Configuration.Abstractions.xml",
        "microsoft.extensions.configuration.abstractions.5.0.0.nupkg.sha512",
        "microsoft.extensions.configuration.abstractions.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "Microsoft.Extensions.Configuration.Binder/5.0.0": {
      "sha512": "Of1Irt1+NzWO+yEYkuDh5TpT4On7LKl98Q9iLqCdOZps6XXEWDj3AKtmyvzJPVXZe4apmkJJIiDL7rR1yC+hjQ==",
      "type": "package",
      "path": "microsoft.extensions.configuration.binder/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/Microsoft.Extensions.Configuration.Binder.dll",
        "lib/net461/Microsoft.Extensions.Configuration.Binder.xml",
        "lib/netstandard2.0/Microsoft.Extensions.Configuration.Binder.dll",
        "lib/netstandard2.0/Microsoft.Extensions.Configuration.Binder.xml",
        "microsoft.extensions.configuration.binder.5.0.0.nupkg.sha512",
        "microsoft.extensions.configuration.binder.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "Microsoft.Extensions.DependencyInjection/5.0.2": {
      "sha512": "xzFW00AZEvOXM1OX+0+AYH5op/Hf3u//e6wszBd/rK72sypD+jx5CtsHxM4BVuFBEs8SajfO4QzSJtrQaHDr4A==",
      "type": "package",
      "path": "microsoft.extensions.dependencyinjection/5.0.2",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/Microsoft.Extensions.DependencyInjection.dll",
        "lib/net461/Microsoft.Extensions.DependencyInjection.xml",
        "lib/net5.0/Microsoft.Extensions.DependencyInjection.dll",
        "lib/net5.0/Microsoft.Extensions.DependencyInjection.xml",
        "lib/netstandard2.0/Microsoft.Extensions.DependencyInjection.dll",
        "lib/netstandard2.0/Microsoft.Extensions.DependencyInjection.xml",
        "lib/netstandard2.1/Microsoft.Extensions.DependencyInjection.dll",
        "lib/netstandard2.1/Microsoft.Extensions.DependencyInjection.xml",
        "microsoft.extensions.dependencyinjection.5.0.2.nupkg.sha512",
        "microsoft.extensions.dependencyinjection.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "Microsoft.Extensions.DependencyInjection.Abstractions/5.0.0": {
      "sha512": "ORj7Zh81gC69TyvmcUm9tSzytcy8AVousi+IVRAI8nLieQjOFryRusSFh7+aLk16FN9pQNqJAiMd7BTKINK0kA==",
      "type": "package",
      "path": "microsoft.extensions.dependencyinjection.abstractions/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/Microsoft.Extensions.DependencyInjection.Abstractions.dll",
        "lib/net461/Microsoft.Extensions.DependencyInjection.Abstractions.xml",
        "lib/netstandard2.0/Microsoft.Extensions.DependencyInjection.Abstractions.dll",
        "lib/netstandard2.0/Microsoft.Extensions.DependencyInjection.Abstractions.xml",
        "microsoft.extensions.dependencyinjection.abstractions.5.0.0.nupkg.sha512",
        "microsoft.extensions.dependencyinjection.abstractions.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "Microsoft.Extensions.DependencyModel/2.1.0": {
      "sha512": "nS2XKqi+1A1umnYNLX2Fbm/XnzCxs5i+zXVJ3VC6r9t2z0NZr9FLnJN4VQpKigdcWH/iFTbMuX6M6WQJcTjVIg==",
      "type": "package",
      "path": "microsoft.extensions.dependencymodel/2.1.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net451/Microsoft.Extensions.DependencyModel.dll",
        "lib/netstandard1.3/Microsoft.Extensions.DependencyModel.dll",
        "lib/netstandard1.6/Microsoft.Extensions.DependencyModel.dll",
        "microsoft.extensions.dependencymodel.2.1.0.nupkg.sha512",
        "microsoft.extensions.dependencymodel.nuspec"
      ]
    },
    "Microsoft.Extensions.FileProviders.Abstractions/2.2.0": {
      "sha512": "EcnaSsPTqx2MGnHrmWOD0ugbuuqVT8iICqSqPzi45V5/MA1LjUNb0kwgcxBGqizV1R+WeBK7/Gw25Jzkyk9bIw==",
      "type": "package",
      "path": "microsoft.extensions.fileproviders.abstractions/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.Extensions.FileProviders.Abstractions.dll",
        "lib/netstandard2.0/Microsoft.Extensions.FileProviders.Abstractions.xml",
        "microsoft.extensions.fileproviders.abstractions.2.2.0.nupkg.sha512",
        "microsoft.extensions.fileproviders.abstractions.nuspec"
      ]
    },
    "Microsoft.Extensions.Hosting.Abstractions/2.2.0": {
      "sha512": "+k4AEn68HOJat5gj1TWa6X28WlirNQO9sPIIeQbia+91n03esEtMSSoekSTpMjUzjqtJWQN3McVx0GvSPFHF/Q==",
      "type": "package",
      "path": "microsoft.extensions.hosting.abstractions/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.Extensions.Hosting.Abstractions.dll",
        "lib/netstandard2.0/Microsoft.Extensions.Hosting.Abstractions.xml",
        "microsoft.extensions.hosting.abstractions.2.2.0.nupkg.sha512",
        "microsoft.extensions.hosting.abstractions.nuspec"
      ]
    },
    "Microsoft.Extensions.Logging/5.0.0": {
      "sha512": "MgOwK6tPzB6YNH21wssJcw/2MKwee8b2gI7SllYfn6rvTpIrVvVS5HAjSU2vqSku1fwqRvWP0MdIi14qjd93Aw==",
      "type": "package",
      "path": "microsoft.extensions.logging/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/Microsoft.Extensions.Logging.dll",
        "lib/net461/Microsoft.Extensions.Logging.xml",
        "lib/netstandard2.0/Microsoft.Extensions.Logging.dll",
        "lib/netstandard2.0/Microsoft.Extensions.Logging.xml",
        "lib/netstandard2.1/Microsoft.Extensions.Logging.dll",
        "lib/netstandard2.1/Microsoft.Extensions.Logging.xml",
        "microsoft.extensions.logging.5.0.0.nupkg.sha512",
        "microsoft.extensions.logging.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "Microsoft.Extensions.Logging.Abstractions/5.0.0": {
      "sha512": "NxP6ahFcBnnSfwNBi2KH2Oz8Xl5Sm2krjId/jRR3I7teFphwiUoUeZPwTNA21EX+5PtjqmyAvKaOeBXcJjcH/w==",
      "type": "package",
      "path": "microsoft.extensions.logging.abstractions/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/Microsoft.Extensions.Logging.Abstractions.dll",
        "lib/net461/Microsoft.Extensions.Logging.Abstractions.xml",
        "lib/netstandard2.0/Microsoft.Extensions.Logging.Abstractions.dll",
        "lib/netstandard2.0/Microsoft.Extensions.Logging.Abstractions.xml",
        "microsoft.extensions.logging.abstractions.5.0.0.nupkg.sha512",
        "microsoft.extensions.logging.abstractions.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "Microsoft.Extensions.Logging.Configuration/5.0.0": {
      "sha512": "N3/d0HeMRnBekadbZlmbp+In8EvNNkQHSdbtRzjrGVckdZWpYs5GNrAfaYqVplDFW0WUedSaFJ3khB50BWYGsw==",
      "type": "package",
      "path": "microsoft.extensions.logging.configuration/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/Microsoft.Extensions.Logging.Configuration.dll",
        "lib/net461/Microsoft.Extensions.Logging.Configuration.xml",
        "lib/netstandard2.0/Microsoft.Extensions.Logging.Configuration.dll",
        "lib/netstandard2.0/Microsoft.Extensions.Logging.Configuration.xml",
        "microsoft.extensions.logging.configuration.5.0.0.nupkg.sha512",
        "microsoft.extensions.logging.configuration.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "Microsoft.Extensions.Logging.Console/5.0.0": {
      "sha512": "jH0wbWhfvXjOVmCkbra4vbiovDtTUIWLQjCeJ7Xun3h4AHvwfzm7V7wlsXKs3tNnPrsCxZ9oaV0vUAgGY1JxOA==",
      "type": "package",
      "path": "microsoft.extensions.logging.console/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/Microsoft.Extensions.Logging.Console.dll",
        "lib/net461/Microsoft.Extensions.Logging.Console.xml",
        "lib/netcoreapp3.0/Microsoft.Extensions.Logging.Console.dll",
        "lib/netcoreapp3.0/Microsoft.Extensions.Logging.Console.xml",
        "lib/netstandard2.0/Microsoft.Extensions.Logging.Console.dll",
        "lib/netstandard2.0/Microsoft.Extensions.Logging.Console.xml",
        "microsoft.extensions.logging.console.5.0.0.nupkg.sha512",
        "microsoft.extensions.logging.console.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "Microsoft.Extensions.ObjectPool/2.2.0": {
      "sha512": "gA8H7uQOnM5gb+L0uTNjViHYr+hRDqCdfugheGo/MxQnuHzmhhzCBTIPm19qL1z1Xe0NEMabfcOBGv9QghlZ8g==",
      "type": "package",
      "path": "microsoft.extensions.objectpool/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.Extensions.ObjectPool.dll",
        "lib/netstandard2.0/Microsoft.Extensions.ObjectPool.xml",
        "microsoft.extensions.objectpool.2.2.0.nupkg.sha512",
        "microsoft.extensions.objectpool.nuspec"
      ]
    },
    "Microsoft.Extensions.Options/5.0.0": {
      "sha512": "CBvR92TCJ5uBIdd9/HzDSrxYak+0W/3+yxrNg8Qm6Bmrkh5L+nu6m3WeazQehcZ5q1/6dDA7J5YdQjim0165zg==",
      "type": "package",
      "path": "microsoft.extensions.options/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/Microsoft.Extensions.Options.dll",
        "lib/net461/Microsoft.Extensions.Options.xml",
        "lib/net5.0/Microsoft.Extensions.Options.dll",
        "lib/net5.0/Microsoft.Extensions.Options.xml",
        "lib/netstandard2.0/Microsoft.Extensions.Options.dll",
        "lib/netstandard2.0/Microsoft.Extensions.Options.xml",
        "microsoft.extensions.options.5.0.0.nupkg.sha512",
        "microsoft.extensions.options.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "Microsoft.Extensions.Options.ConfigurationExtensions/5.0.0": {
      "sha512": "280RxNJqOeQqq47aJLy5D9LN61CAWeuRA83gPToQ8B9jl9SNdQ5EXjlfvF66zQI5AXMl+C/3hGnbtIEN+X3mqA==",
      "type": "package",
      "path": "microsoft.extensions.options.configurationextensions/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/Microsoft.Extensions.Options.ConfigurationExtensions.dll",
        "lib/net461/Microsoft.Extensions.Options.ConfigurationExtensions.xml",
        "lib/netstandard2.0/Microsoft.Extensions.Options.ConfigurationExtensions.dll",
        "lib/netstandard2.0/Microsoft.Extensions.Options.ConfigurationExtensions.xml",
        "microsoft.extensions.options.configurationextensions.5.0.0.nupkg.sha512",
        "microsoft.extensions.options.configurationextensions.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "Microsoft.Extensions.Primitives/5.0.1": {
      "sha512": "5WPSmL4YeP7eW+Vc8XZ4DwjYWBAiSwDV9Hm63JJWcz1Ie3Xjv4KuJXzgCstj48LkLfVCYa7mLcx7y+q6yqVvtw==",
      "type": "package",
      "path": "microsoft.extensions.primitives/5.0.1",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/Microsoft.Extensions.Primitives.dll",
        "lib/net461/Microsoft.Extensions.Primitives.xml",
        "lib/netcoreapp3.0/Microsoft.Extensions.Primitives.dll",
        "lib/netcoreapp3.0/Microsoft.Extensions.Primitives.xml",
        "lib/netstandard2.0/Microsoft.Extensions.Primitives.dll",
        "lib/netstandard2.0/Microsoft.Extensions.Primitives.xml",
        "microsoft.extensions.primitives.5.0.1.nupkg.sha512",
        "microsoft.extensions.primitives.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "Microsoft.Net.Http.Headers/2.2.0": {
      "sha512": "iZNkjYqlo8sIOI0bQfpsSoMTmB/kyvmV2h225ihyZT33aTp48ZpF6qYnXxzSXmHt8DpBAwBTX+1s1UFLbYfZKg==",
      "type": "package",
      "path": "microsoft.net.http.headers/2.2.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.0/Microsoft.Net.Http.Headers.dll",
        "lib/netstandard2.0/Microsoft.Net.Http.Headers.xml",
        "microsoft.net.http.headers.2.2.0.nupkg.sha512",
        "microsoft.net.http.headers.nuspec"
      ]
    },
    "Microsoft.NETCore.Platforms/5.0.0": {
      "sha512": "VyPlqzH2wavqquTcYpkIIAQ6WdenuKoFN0BdYBbCWsclXacSOHNQn66Gt4z5NBqEYW0FAPm5rlvki9ZiCij5xQ==",
      "type": "package",
      "path": "microsoft.netcore.platforms/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/netstandard1.0/_._",
        "microsoft.netcore.platforms.5.0.0.nupkg.sha512",
        "microsoft.netcore.platforms.nuspec",
        "runtime.json",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "Microsoft.NETCore.Targets/1.1.0": {
      "sha512": "aOZA3BWfz9RXjpzt0sRJJMjAscAUm3Hoa4UWAfceV9UTYxgwZ1lZt5nO2myFf+/jetYQo4uTP7zS8sJY67BBxg==",
      "type": "package",
      "path": "microsoft.netcore.targets/1.1.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/netstandard1.0/_._",
        "microsoft.netcore.targets.1.1.0.nupkg.sha512",
        "microsoft.netcore.targets.nuspec",
        "runtime.json"
      ]
    },
    "Microsoft.Win32.SystemEvents/5.0.0": {
      "sha512": "Bh6blKG8VAKvXiLe2L+sEsn62nc1Ij34MrNxepD2OCrS5cpCwQa9MeLyhVQPQ/R4Wlzwuy6wMK8hLb11QPDRsQ==",
      "type": "package",
      "path": "microsoft.win32.systemevents/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/Microsoft.Win32.SystemEvents.dll",
        "lib/net461/Microsoft.Win32.SystemEvents.xml",
        "lib/netstandard2.0/Microsoft.Win32.SystemEvents.dll",
        "lib/netstandard2.0/Microsoft.Win32.SystemEvents.xml",
        "microsoft.win32.systemevents.5.0.0.nupkg.sha512",
        "microsoft.win32.systemevents.nuspec",
        "ref/net461/Microsoft.Win32.SystemEvents.dll",
        "ref/net461/Microsoft.Win32.SystemEvents.xml",
        "ref/netstandard2.0/Microsoft.Win32.SystemEvents.dll",
        "ref/netstandard2.0/Microsoft.Win32.SystemEvents.xml",
        "runtimes/win/lib/netcoreapp2.0/Microsoft.Win32.SystemEvents.dll",
        "runtimes/win/lib/netcoreapp2.0/Microsoft.Win32.SystemEvents.xml",
        "runtimes/win/lib/netcoreapp3.0/Microsoft.Win32.SystemEvents.dll",
        "runtimes/win/lib/netcoreapp3.0/Microsoft.Win32.SystemEvents.xml",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "NETStandard.Library/2.0.0": {
      "sha512": "7jnbRU+L08FXKMxqUflxEXtVymWvNOrS8yHgu9s6EM8Anr6T/wIX4nZ08j/u3Asz+tCufp3YVwFSEvFTPYmBPA==",
      "type": "package",
      "path": "netstandard.library/2.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "build/NETStandard.Library.targets",
        "build/netstandard2.0/NETStandard.Library.targets",
        "build/netstandard2.0/ref/Microsoft.Win32.Primitives.dll",
        "build/netstandard2.0/ref/System.AppContext.dll",
        "build/netstandard2.0/ref/System.Collections.Concurrent.dll",
        "build/netstandard2.0/ref/System.Collections.NonGeneric.dll",
        "build/netstandard2.0/ref/System.Collections.Specialized.dll",
        "build/netstandard2.0/ref/System.Collections.dll",
        "build/netstandard2.0/ref/System.ComponentModel.Composition.dll",
        "build/netstandard2.0/ref/System.ComponentModel.EventBasedAsync.dll",
        "build/netstandard2.0/ref/System.ComponentModel.Primitives.dll",
        "build/netstandard2.0/ref/System.ComponentModel.TypeConverter.dll",
        "build/netstandard2.0/ref/System.ComponentModel.dll",
        "build/netstandard2.0/ref/System.Console.dll",
        "build/netstandard2.0/ref/System.Core.dll",
        "build/netstandard2.0/ref/System.Data.Common.dll",
        "build/netstandard2.0/ref/System.Data.dll",
        "build/netstandard2.0/ref/System.Diagnostics.Contracts.dll",
        "build/netstandard2.0/ref/System.Diagnostics.Debug.dll",
        "build/netstandard2.0/ref/System.Diagnostics.FileVersionInfo.dll",
        "build/netstandard2.0/ref/System.Diagnostics.Process.dll",
        "build/netstandard2.0/ref/System.Diagnostics.StackTrace.dll",
        "build/netstandard2.0/ref/System.Diagnostics.TextWriterTraceListener.dll",
        "build/netstandard2.0/ref/System.Diagnostics.Tools.dll",
        "build/netstandard2.0/ref/System.Diagnostics.TraceSource.dll",
        "build/netstandard2.0/ref/System.Diagnostics.Tracing.dll",
        "build/netstandard2.0/ref/System.Drawing.Primitives.dll",
        "build/netstandard2.0/ref/System.Drawing.dll",
        "build/netstandard2.0/ref/System.Dynamic.Runtime.dll",
        "build/netstandard2.0/ref/System.Globalization.Calendars.dll",
        "build/netstandard2.0/ref/System.Globalization.Extensions.dll",
        "build/netstandard2.0/ref/System.Globalization.dll",
        "build/netstandard2.0/ref/System.IO.Compression.FileSystem.dll",
        "build/netstandard2.0/ref/System.IO.Compression.ZipFile.dll",
        "build/netstandard2.0/ref/System.IO.Compression.dll",
        "build/netstandard2.0/ref/System.IO.FileSystem.DriveInfo.dll",
        "build/netstandard2.0/ref/System.IO.FileSystem.Primitives.dll",
        "build/netstandard2.0/ref/System.IO.FileSystem.Watcher.dll",
        "build/netstandard2.0/ref/System.IO.FileSystem.dll",
        "build/netstandard2.0/ref/System.IO.IsolatedStorage.dll",
        "build/netstandard2.0/ref/System.IO.MemoryMappedFiles.dll",
        "build/netstandard2.0/ref/System.IO.Pipes.dll",
        "build/netstandard2.0/ref/System.IO.UnmanagedMemoryStream.dll",
        "build/netstandard2.0/ref/System.IO.dll",
        "build/netstandard2.0/ref/System.Linq.Expressions.dll",
        "build/netstandard2.0/ref/System.Linq.Parallel.dll",
        "build/netstandard2.0/ref/System.Linq.Queryable.dll",
        "build/netstandard2.0/ref/System.Linq.dll",
        "build/netstandard2.0/ref/System.Net.Http.dll",
        "build/netstandard2.0/ref/System.Net.NameResolution.dll",
        "build/netstandard2.0/ref/System.Net.NetworkInformation.dll",
        "build/netstandard2.0/ref/System.Net.Ping.dll",
        "build/netstandard2.0/ref/System.Net.Primitives.dll",
        "build/netstandard2.0/ref/System.Net.Requests.dll",
        "build/netstandard2.0/ref/System.Net.Security.dll",
        "build/netstandard2.0/ref/System.Net.Sockets.dll",
        "build/netstandard2.0/ref/System.Net.WebHeaderCollection.dll",
        "build/netstandard2.0/ref/System.Net.WebSockets.Client.dll",
        "build/netstandard2.0/ref/System.Net.WebSockets.dll",
        "build/netstandard2.0/ref/System.Net.dll",
        "build/netstandard2.0/ref/System.Numerics.dll",
        "build/netstandard2.0/ref/System.ObjectModel.dll",
        "build/netstandard2.0/ref/System.Reflection.Extensions.dll",
        "build/netstandard2.0/ref/System.Reflection.Primitives.dll",
        "build/netstandard2.0/ref/System.Reflection.dll",
        "build/netstandard2.0/ref/System.Resources.Reader.dll",
        "build/netstandard2.0/ref/System.Resources.ResourceManager.dll",
        "build/netstandard2.0/ref/System.Resources.Writer.dll",
        "build/netstandard2.0/ref/System.Runtime.CompilerServices.VisualC.dll",
        "build/netstandard2.0/ref/System.Runtime.Extensions.dll",
        "build/netstandard2.0/ref/System.Runtime.Handles.dll",
        "build/netstandard2.0/ref/System.Runtime.InteropServices.RuntimeInformation.dll",
        "build/netstandard2.0/ref/System.Runtime.InteropServices.dll",
        "build/netstandard2.0/ref/System.Runtime.Numerics.dll",
        "build/netstandard2.0/ref/System.Runtime.Serialization.Formatters.dll",
        "build/netstandard2.0/ref/System.Runtime.Serialization.Json.dll",
        "build/netstandard2.0/ref/System.Runtime.Serialization.Primitives.dll",
        "build/netstandard2.0/ref/System.Runtime.Serialization.Xml.dll",
        "build/netstandard2.0/ref/System.Runtime.Serialization.dll",
        "build/netstandard2.0/ref/System.Runtime.dll",
        "build/netstandard2.0/ref/System.Security.Claims.dll",
        "build/netstandard2.0/ref/System.Security.Cryptography.Algorithms.dll",
        "build/netstandard2.0/ref/System.Security.Cryptography.Csp.dll",
        "build/netstandard2.0/ref/System.Security.Cryptography.Encoding.dll",
        "build/netstandard2.0/ref/System.Security.Cryptography.Primitives.dll",
        "build/netstandard2.0/ref/System.Security.Cryptography.X509Certificates.dll",
        "build/netstandard2.0/ref/System.Security.Principal.dll",
        "build/netstandard2.0/ref/System.Security.SecureString.dll",
        "build/netstandard2.0/ref/System.ServiceModel.Web.dll",
        "build/netstandard2.0/ref/System.Text.Encoding.Extensions.dll",
        "build/netstandard2.0/ref/System.Text.Encoding.dll",
        "build/netstandard2.0/ref/System.Text.RegularExpressions.dll",
        "build/netstandard2.0/ref/System.Threading.Overlapped.dll",
        "build/netstandard2.0/ref/System.Threading.Tasks.Parallel.dll",
        "build/netstandard2.0/ref/System.Threading.Tasks.dll",
        "build/netstandard2.0/ref/System.Threading.Thread.dll",
        "build/netstandard2.0/ref/System.Threading.ThreadPool.dll",
        "build/netstandard2.0/ref/System.Threading.Timer.dll",
        "build/netstandard2.0/ref/System.Threading.dll",
        "build/netstandard2.0/ref/System.Transactions.dll",
        "build/netstandard2.0/ref/System.ValueTuple.dll",
        "build/netstandard2.0/ref/System.Web.dll",
        "build/netstandard2.0/ref/System.Windows.dll",
        "build/netstandard2.0/ref/System.Xml.Linq.dll",
        "build/netstandard2.0/ref/System.Xml.ReaderWriter.dll",
        "build/netstandard2.0/ref/System.Xml.Serialization.dll",
        "build/netstandard2.0/ref/System.Xml.XDocument.dll",
        "build/netstandard2.0/ref/System.Xml.XPath.XDocument.dll",
        "build/netstandard2.0/ref/System.Xml.XPath.dll",
        "build/netstandard2.0/ref/System.Xml.XmlDocument.dll",
        "build/netstandard2.0/ref/System.Xml.XmlSerializer.dll",
        "build/netstandard2.0/ref/System.Xml.dll",
        "build/netstandard2.0/ref/System.dll",
        "build/netstandard2.0/ref/mscorlib.dll",
        "build/netstandard2.0/ref/netstandard.dll",
        "build/netstandard2.0/ref/netstandard.xml",
        "lib/netstandard1.0/_._",
        "netstandard.library.2.0.0.nupkg.sha512",
        "netstandard.library.nuspec"
      ]
    },
    "Newtonsoft.Json/11.0.2": {
      "sha512": "IvJe1pj7JHEsP8B8J8DwlMEx8UInrs/x+9oVY+oCD13jpLu4JbJU2WCIsMRn5C4yW9+DgkaO8uiVE5VHKjpmdQ==",
      "type": "package",
      "path": "newtonsoft.json/11.0.2",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "LICENSE.md",
        "lib/net20/Newtonsoft.Json.dll",
        "lib/net20/Newtonsoft.Json.xml",
        "lib/net35/Newtonsoft.Json.dll",
        "lib/net35/Newtonsoft.Json.xml",
        "lib/net40/Newtonsoft.Json.dll",
        "lib/net40/Newtonsoft.Json.xml",
        "lib/net45/Newtonsoft.Json.dll",
        "lib/net45/Newtonsoft.Json.xml",
        "lib/netstandard1.0/Newtonsoft.Json.dll",
        "lib/netstandard1.0/Newtonsoft.Json.xml",
        "lib/netstandard1.3/Newtonsoft.Json.dll",
        "lib/netstandard1.3/Newtonsoft.Json.xml",
        "lib/netstandard2.0/Newtonsoft.Json.dll",
        "lib/netstandard2.0/Newtonsoft.Json.xml",
        "lib/portable-net40+sl5+win8+wp8+wpa81/Newtonsoft.Json.dll",
        "lib/portable-net40+sl5+win8+wp8+wpa81/Newtonsoft.Json.xml",
        "lib/portable-net45+win8+wp8+wpa81/Newtonsoft.Json.dll",
        "lib/portable-net45+win8+wp8+wpa81/Newtonsoft.Json.xml",
        "newtonsoft.json.11.0.2.nupkg.sha512",
        "newtonsoft.json.nuspec"
      ]
    },
    "Npgsql/5.0.5": {
      "sha512": "cvqU1o/gTeX9ynzCEa1NkBEAtGFxLwROw1KweG/giNEYSSw/6W3G7hvYIFIyrdgTorEbLu/AaI2Lxs5TRB4goQ==",
      "type": "package",
      "path": "npgsql/5.0.5",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/net5.0/Npgsql.dll",
        "lib/net5.0/Npgsql.xml",
        "lib/netcoreapp3.1/Npgsql.dll",
        "lib/netcoreapp3.1/Npgsql.xml",
        "lib/netstandard2.0/Npgsql.dll",
        "lib/netstandard2.0/Npgsql.xml",
        "lib/netstandard2.1/Npgsql.dll",
        "lib/netstandard2.1/Npgsql.xml",
        "npgsql.5.0.5.nupkg.sha512",
        "npgsql.nuspec",
        "postgresql.png"
      ]
    },
    "Npgsql.EntityFrameworkCore.PostgreSQL/5.0.6": {
      "sha512": "wX7ikYxbZDrcdiFw6dbG7MnoIaExR0QoOkqveZSrKdpkONxefKpXdtmZMUfzJbdE63qTaKzHsh+7kcCCF1gwqA==",
      "type": "package",
      "path": "npgsql.entityframeworkcore.postgresql/5.0.6",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.1/Npgsql.EntityFrameworkCore.PostgreSQL.dll",
        "npgsql.entityframeworkcore.postgresql.5.0.6.nupkg.sha512",
        "npgsql.entityframeworkcore.postgresql.nuspec",
        "postgresql.png"
      ]
    },
    "Portable.BouncyCastle/1.8.1.3": {
      "sha512": "1jUpszv0ETm+hl78HKnYgY3wPzt6qRtjxaPENNrGCuB8nondbR/j75WAKdd6sxXzOzBcX07WMZhZEYc4s5jVWg==",
      "type": "package",
      "path": "portable.bouncycastle/1.8.1.3",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/net40/BouncyCastle.Crypto.dll",
        "lib/net40/BouncyCastle.Crypto.xml",
        "lib/netstandard1.0/BouncyCastle.Crypto.dll",
        "lib/netstandard1.0/BouncyCastle.Crypto.xml",
        "lib/netstandard1.3/BouncyCastle.Crypto.dll",
        "lib/netstandard1.3/BouncyCastle.Crypto.xml",
        "lib/netstandard2.0/BouncyCastle.Crypto.dll",
        "lib/netstandard2.0/BouncyCastle.Crypto.xml",
        "lib/portable-net40+sl5+win8+wp8+wpa81/BouncyCastle.Crypto.dll",
        "lib/portable-net40+sl5+win8+wp8+wpa81/BouncyCastle.Crypto.xml",
        "portable.bouncycastle.1.8.1.3.nupkg.sha512",
        "portable.bouncycastle.nuspec"
      ]
    },
    "runtime.native.System/4.0.0": {
      "sha512": "QfS/nQI7k/BLgmLrw7qm7YBoULEvgWnPI+cYsbfCVFTW8Aj+i8JhccxcFMu1RWms0YZzF+UHguNBK4Qn89e2Sg==",
      "type": "package",
      "path": "runtime.native.system/4.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/netstandard1.0/_._",
        "runtime.native.system.4.0.0.nupkg.sha512",
        "runtime.native.system.nuspec"
      ]
    },
    "System.AppContext/4.1.0": {
      "sha512": "3QjO4jNV7PdKkmQAVp9atA+usVnKRwI3Kx1nMwJ93T0LcQfx7pKAYk0nKz5wn1oP5iqlhZuy6RXOFdhr7rDwow==",
      "type": "package",
      "path": "system.appcontext/4.1.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net46/System.AppContext.dll",
        "lib/net463/System.AppContext.dll",
        "lib/netcore50/System.AppContext.dll",
        "lib/netstandard1.6/System.AppContext.dll",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net46/System.AppContext.dll",
        "ref/net463/System.AppContext.dll",
        "ref/netstandard/_._",
        "ref/netstandard1.3/System.AppContext.dll",
        "ref/netstandard1.3/System.AppContext.xml",
        "ref/netstandard1.3/de/System.AppContext.xml",
        "ref/netstandard1.3/es/System.AppContext.xml",
        "ref/netstandard1.3/fr/System.AppContext.xml",
        "ref/netstandard1.3/it/System.AppContext.xml",
        "ref/netstandard1.3/ja/System.AppContext.xml",
        "ref/netstandard1.3/ko/System.AppContext.xml",
        "ref/netstandard1.3/ru/System.AppContext.xml",
        "ref/netstandard1.3/zh-hans/System.AppContext.xml",
        "ref/netstandard1.3/zh-hant/System.AppContext.xml",
        "ref/netstandard1.6/System.AppContext.dll",
        "ref/netstandard1.6/System.AppContext.xml",
        "ref/netstandard1.6/de/System.AppContext.xml",
        "ref/netstandard1.6/es/System.AppContext.xml",
        "ref/netstandard1.6/fr/System.AppContext.xml",
        "ref/netstandard1.6/it/System.AppContext.xml",
        "ref/netstandard1.6/ja/System.AppContext.xml",
        "ref/netstandard1.6/ko/System.AppContext.xml",
        "ref/netstandard1.6/ru/System.AppContext.xml",
        "ref/netstandard1.6/zh-hans/System.AppContext.xml",
        "ref/netstandard1.6/zh-hant/System.AppContext.xml",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "runtimes/aot/lib/netcore50/System.AppContext.dll",
        "system.appcontext.4.1.0.nupkg.sha512",
        "system.appcontext.nuspec"
      ]
    },
    "System.Buffers/4.5.0": {
      "sha512": "pL2ChpaRRWI/p4LXyy4RgeWlYF2sgfj/pnVMvBqwNFr5cXg7CXNnWZWxrOONLg8VGdFB8oB+EG2Qw4MLgTOe+A==",
      "type": "package",
      "path": "system.buffers/4.5.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/netcoreapp2.0/_._",
        "lib/netstandard1.1/System.Buffers.dll",
        "lib/netstandard1.1/System.Buffers.xml",
        "lib/netstandard2.0/System.Buffers.dll",
        "lib/netstandard2.0/System.Buffers.xml",
        "lib/uap10.0.16299/_._",
        "ref/net45/System.Buffers.dll",
        "ref/net45/System.Buffers.xml",
        "ref/netcoreapp2.0/_._",
        "ref/netstandard1.1/System.Buffers.dll",
        "ref/netstandard1.1/System.Buffers.xml",
        "ref/netstandard2.0/System.Buffers.dll",
        "ref/netstandard2.0/System.Buffers.xml",
        "ref/uap10.0.16299/_._",
        "system.buffers.4.5.0.nupkg.sha512",
        "system.buffers.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.Collections/4.3.0": {
      "sha512": "3Dcj85/TBdVpL5Zr+gEEBUuFe2icOnLalmEh9hfck1PTYbbyWuZgh4fmm2ysCLTrqLQw6t3TgTyJ+VLp+Qb+Lw==",
      "type": "package",
      "path": "system.collections/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/netcore50/System.Collections.dll",
        "ref/netcore50/System.Collections.xml",
        "ref/netcore50/de/System.Collections.xml",
        "ref/netcore50/es/System.Collections.xml",
        "ref/netcore50/fr/System.Collections.xml",
        "ref/netcore50/it/System.Collections.xml",
        "ref/netcore50/ja/System.Collections.xml",
        "ref/netcore50/ko/System.Collections.xml",
        "ref/netcore50/ru/System.Collections.xml",
        "ref/netcore50/zh-hans/System.Collections.xml",
        "ref/netcore50/zh-hant/System.Collections.xml",
        "ref/netstandard1.0/System.Collections.dll",
        "ref/netstandard1.0/System.Collections.xml",
        "ref/netstandard1.0/de/System.Collections.xml",
        "ref/netstandard1.0/es/System.Collections.xml",
        "ref/netstandard1.0/fr/System.Collections.xml",
        "ref/netstandard1.0/it/System.Collections.xml",
        "ref/netstandard1.0/ja/System.Collections.xml",
        "ref/netstandard1.0/ko/System.Collections.xml",
        "ref/netstandard1.0/ru/System.Collections.xml",
        "ref/netstandard1.0/zh-hans/System.Collections.xml",
        "ref/netstandard1.0/zh-hant/System.Collections.xml",
        "ref/netstandard1.3/System.Collections.dll",
        "ref/netstandard1.3/System.Collections.xml",
        "ref/netstandard1.3/de/System.Collections.xml",
        "ref/netstandard1.3/es/System.Collections.xml",
        "ref/netstandard1.3/fr/System.Collections.xml",
        "ref/netstandard1.3/it/System.Collections.xml",
        "ref/netstandard1.3/ja/System.Collections.xml",
        "ref/netstandard1.3/ko/System.Collections.xml",
        "ref/netstandard1.3/ru/System.Collections.xml",
        "ref/netstandard1.3/zh-hans/System.Collections.xml",
        "ref/netstandard1.3/zh-hant/System.Collections.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.collections.4.3.0.nupkg.sha512",
        "system.collections.nuspec"
      ]
    },
    "System.Collections.Concurrent/4.3.0": {
      "sha512": "ztl69Xp0Y/UXCL+3v3tEU+lIy+bvjKNUmopn1wep/a291pVPK7dxBd6T7WnlQqRog+d1a/hSsgRsmFnIBKTPLQ==",
      "type": "package",
      "path": "system.collections.concurrent/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/netcore50/System.Collections.Concurrent.dll",
        "lib/netstandard1.3/System.Collections.Concurrent.dll",
        "lib/portable-net45+win8+wpa81/_._",
        "lib/win8/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/netcore50/System.Collections.Concurrent.dll",
        "ref/netcore50/System.Collections.Concurrent.xml",
        "ref/netcore50/de/System.Collections.Concurrent.xml",
        "ref/netcore50/es/System.Collections.Concurrent.xml",
        "ref/netcore50/fr/System.Collections.Concurrent.xml",
        "ref/netcore50/it/System.Collections.Concurrent.xml",
        "ref/netcore50/ja/System.Collections.Concurrent.xml",
        "ref/netcore50/ko/System.Collections.Concurrent.xml",
        "ref/netcore50/ru/System.Collections.Concurrent.xml",
        "ref/netcore50/zh-hans/System.Collections.Concurrent.xml",
        "ref/netcore50/zh-hant/System.Collections.Concurrent.xml",
        "ref/netstandard1.1/System.Collections.Concurrent.dll",
        "ref/netstandard1.1/System.Collections.Concurrent.xml",
        "ref/netstandard1.1/de/System.Collections.Concurrent.xml",
        "ref/netstandard1.1/es/System.Collections.Concurrent.xml",
        "ref/netstandard1.1/fr/System.Collections.Concurrent.xml",
        "ref/netstandard1.1/it/System.Collections.Concurrent.xml",
        "ref/netstandard1.1/ja/System.Collections.Concurrent.xml",
        "ref/netstandard1.1/ko/System.Collections.Concurrent.xml",
        "ref/netstandard1.1/ru/System.Collections.Concurrent.xml",
        "ref/netstandard1.1/zh-hans/System.Collections.Concurrent.xml",
        "ref/netstandard1.1/zh-hant/System.Collections.Concurrent.xml",
        "ref/netstandard1.3/System.Collections.Concurrent.dll",
        "ref/netstandard1.3/System.Collections.Concurrent.xml",
        "ref/netstandard1.3/de/System.Collections.Concurrent.xml",
        "ref/netstandard1.3/es/System.Collections.Concurrent.xml",
        "ref/netstandard1.3/fr/System.Collections.Concurrent.xml",
        "ref/netstandard1.3/it/System.Collections.Concurrent.xml",
        "ref/netstandard1.3/ja/System.Collections.Concurrent.xml",
        "ref/netstandard1.3/ko/System.Collections.Concurrent.xml",
        "ref/netstandard1.3/ru/System.Collections.Concurrent.xml",
        "ref/netstandard1.3/zh-hans/System.Collections.Concurrent.xml",
        "ref/netstandard1.3/zh-hant/System.Collections.Concurrent.xml",
        "ref/portable-net45+win8+wpa81/_._",
        "ref/win8/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.collections.concurrent.4.3.0.nupkg.sha512",
        "system.collections.concurrent.nuspec"
      ]
    },
    "System.Collections.Immutable/5.0.0": {
      "sha512": "FXkLXiK0sVVewcso0imKQoOxjoPAj42R8HtjjbSjVPAzwDfzoyoznWxgA3c38LDbN9SJux1xXoXYAhz98j7r2g==",
      "type": "package",
      "path": "system.collections.immutable/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/System.Collections.Immutable.dll",
        "lib/net461/System.Collections.Immutable.xml",
        "lib/netstandard1.0/System.Collections.Immutable.dll",
        "lib/netstandard1.0/System.Collections.Immutable.xml",
        "lib/netstandard1.3/System.Collections.Immutable.dll",
        "lib/netstandard1.3/System.Collections.Immutable.xml",
        "lib/netstandard2.0/System.Collections.Immutable.dll",
        "lib/netstandard2.0/System.Collections.Immutable.xml",
        "lib/portable-net45+win8+wp8+wpa81/System.Collections.Immutable.dll",
        "lib/portable-net45+win8+wp8+wpa81/System.Collections.Immutable.xml",
        "system.collections.immutable.5.0.0.nupkg.sha512",
        "system.collections.immutable.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.Collections.NonGeneric/4.3.0": {
      "sha512": "prtjIEMhGUnQq6RnPEYLpFt8AtLbp9yq2zxOSrY7KJJZrw25Fi97IzBqY7iqssbM61Ek5b8f3MG/sG1N2sN5KA==",
      "type": "package",
      "path": "system.collections.nongeneric/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net46/System.Collections.NonGeneric.dll",
        "lib/netstandard1.3/System.Collections.NonGeneric.dll",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net46/System.Collections.NonGeneric.dll",
        "ref/netstandard1.3/System.Collections.NonGeneric.dll",
        "ref/netstandard1.3/System.Collections.NonGeneric.xml",
        "ref/netstandard1.3/de/System.Collections.NonGeneric.xml",
        "ref/netstandard1.3/es/System.Collections.NonGeneric.xml",
        "ref/netstandard1.3/fr/System.Collections.NonGeneric.xml",
        "ref/netstandard1.3/it/System.Collections.NonGeneric.xml",
        "ref/netstandard1.3/ja/System.Collections.NonGeneric.xml",
        "ref/netstandard1.3/ko/System.Collections.NonGeneric.xml",
        "ref/netstandard1.3/ru/System.Collections.NonGeneric.xml",
        "ref/netstandard1.3/zh-hans/System.Collections.NonGeneric.xml",
        "ref/netstandard1.3/zh-hant/System.Collections.NonGeneric.xml",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.collections.nongeneric.4.3.0.nupkg.sha512",
        "system.collections.nongeneric.nuspec"
      ]
    },
    "System.ComponentModel.Annotations/5.0.0": {
      "sha512": "dMkqfy2el8A8/I76n2Hi1oBFEbG1SfxD2l5nhwXV3XjlnOmwxJlQbYpJH4W51odnU9sARCSAgv7S3CyAFMkpYg==",
      "type": "package",
      "path": "system.componentmodel.annotations/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/net461/System.ComponentModel.Annotations.dll",
        "lib/netcore50/System.ComponentModel.Annotations.dll",
        "lib/netstandard1.4/System.ComponentModel.Annotations.dll",
        "lib/netstandard2.0/System.ComponentModel.Annotations.dll",
        "lib/netstandard2.1/System.ComponentModel.Annotations.dll",
        "lib/netstandard2.1/System.ComponentModel.Annotations.xml",
        "lib/portable-net45+win8/_._",
        "lib/win8/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/net461/System.ComponentModel.Annotations.dll",
        "ref/net461/System.ComponentModel.Annotations.xml",
        "ref/netcore50/System.ComponentModel.Annotations.dll",
        "ref/netcore50/System.ComponentModel.Annotations.xml",
        "ref/netcore50/de/System.ComponentModel.Annotations.xml",
        "ref/netcore50/es/System.ComponentModel.Annotations.xml",
        "ref/netcore50/fr/System.ComponentModel.Annotations.xml",
        "ref/netcore50/it/System.ComponentModel.Annotations.xml",
        "ref/netcore50/ja/System.ComponentModel.Annotations.xml",
        "ref/netcore50/ko/System.ComponentModel.Annotations.xml",
        "ref/netcore50/ru/System.ComponentModel.Annotations.xml",
        "ref/netcore50/zh-hans/System.ComponentModel.Annotations.xml",
        "ref/netcore50/zh-hant/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.1/System.ComponentModel.Annotations.dll",
        "ref/netstandard1.1/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.1/de/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.1/es/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.1/fr/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.1/it/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.1/ja/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.1/ko/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.1/ru/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.1/zh-hans/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.1/zh-hant/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.3/System.ComponentModel.Annotations.dll",
        "ref/netstandard1.3/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.3/de/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.3/es/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.3/fr/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.3/it/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.3/ja/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.3/ko/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.3/ru/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.3/zh-hans/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.3/zh-hant/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.4/System.ComponentModel.Annotations.dll",
        "ref/netstandard1.4/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.4/de/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.4/es/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.4/fr/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.4/it/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.4/ja/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.4/ko/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.4/ru/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.4/zh-hans/System.ComponentModel.Annotations.xml",
        "ref/netstandard1.4/zh-hant/System.ComponentModel.Annotations.xml",
        "ref/netstandard2.0/System.ComponentModel.Annotations.dll",
        "ref/netstandard2.0/System.ComponentModel.Annotations.xml",
        "ref/netstandard2.1/System.ComponentModel.Annotations.dll",
        "ref/netstandard2.1/System.ComponentModel.Annotations.xml",
        "ref/portable-net45+win8/_._",
        "ref/win8/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.componentmodel.annotations.5.0.0.nupkg.sha512",
        "system.componentmodel.annotations.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.Configuration.ConfigurationManager/5.0.0": {
      "sha512": "aM7cbfEfVNlEEOj3DsZP+2g9NRwbkyiAv2isQEzw7pnkDg9ekCU2m1cdJLM02Uq691OaCS91tooaxcEn8d0q5w==",
      "type": "package",
      "path": "system.configuration.configurationmanager/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/System.Configuration.ConfigurationManager.dll",
        "lib/net461/System.Configuration.ConfigurationManager.xml",
        "lib/netstandard2.0/System.Configuration.ConfigurationManager.dll",
        "lib/netstandard2.0/System.Configuration.ConfigurationManager.xml",
        "ref/net461/System.Configuration.ConfigurationManager.dll",
        "ref/net461/System.Configuration.ConfigurationManager.xml",
        "ref/netstandard2.0/System.Configuration.ConfigurationManager.dll",
        "ref/netstandard2.0/System.Configuration.ConfigurationManager.xml",
        "system.configuration.configurationmanager.5.0.0.nupkg.sha512",
        "system.configuration.configurationmanager.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.Data.Common/4.3.0": {
      "sha512": "lm6E3T5u7BOuEH0u18JpbJHxBfOJPuCyl4Kg1RH10ktYLp5uEEE1xKrHW56/We4SnZpGAuCc9N0MJpSDhTHZGQ==",
      "type": "package",
      "path": "system.data.common/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net451/System.Data.Common.dll",
        "lib/netstandard1.2/System.Data.Common.dll",
        "lib/portable-net451+win8+wp8+wpa81/System.Data.Common.dll",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net451/System.Data.Common.dll",
        "ref/netstandard1.2/System.Data.Common.dll",
        "ref/netstandard1.2/System.Data.Common.xml",
        "ref/netstandard1.2/de/System.Data.Common.xml",
        "ref/netstandard1.2/es/System.Data.Common.xml",
        "ref/netstandard1.2/fr/System.Data.Common.xml",
        "ref/netstandard1.2/it/System.Data.Common.xml",
        "ref/netstandard1.2/ja/System.Data.Common.xml",
        "ref/netstandard1.2/ko/System.Data.Common.xml",
        "ref/netstandard1.2/ru/System.Data.Common.xml",
        "ref/netstandard1.2/zh-hans/System.Data.Common.xml",
        "ref/netstandard1.2/zh-hant/System.Data.Common.xml",
        "ref/portable-net451+win8+wp8+wpa81/System.Data.Common.dll",
        "ref/portable-net451+win8+wp8+wpa81/System.Data.Common.xml",
        "ref/portable-net451+win8+wp8+wpa81/de/System.Data.Common.xml",
        "ref/portable-net451+win8+wp8+wpa81/es/System.Data.Common.xml",
        "ref/portable-net451+win8+wp8+wpa81/fr/System.Data.Common.xml",
        "ref/portable-net451+win8+wp8+wpa81/it/System.Data.Common.xml",
        "ref/portable-net451+win8+wp8+wpa81/ja/System.Data.Common.xml",
        "ref/portable-net451+win8+wp8+wpa81/ko/System.Data.Common.xml",
        "ref/portable-net451+win8+wp8+wpa81/ru/System.Data.Common.xml",
        "ref/portable-net451+win8+wp8+wpa81/zh-hans/System.Data.Common.xml",
        "ref/portable-net451+win8+wp8+wpa81/zh-hant/System.Data.Common.xml",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.data.common.4.3.0.nupkg.sha512",
        "system.data.common.nuspec"
      ]
    },
    "System.Diagnostics.Debug/4.3.0": {
      "sha512": "ZUhUOdqmaG5Jk3Xdb8xi5kIyQYAA4PnTNlHx1mu9ZY3qv4ELIdKbnL/akbGaKi2RnNUWaZsAs31rvzFdewTj2g==",
      "type": "package",
      "path": "system.diagnostics.debug/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/netcore50/System.Diagnostics.Debug.dll",
        "ref/netcore50/System.Diagnostics.Debug.xml",
        "ref/netcore50/de/System.Diagnostics.Debug.xml",
        "ref/netcore50/es/System.Diagnostics.Debug.xml",
        "ref/netcore50/fr/System.Diagnostics.Debug.xml",
        "ref/netcore50/it/System.Diagnostics.Debug.xml",
        "ref/netcore50/ja/System.Diagnostics.Debug.xml",
        "ref/netcore50/ko/System.Diagnostics.Debug.xml",
        "ref/netcore50/ru/System.Diagnostics.Debug.xml",
        "ref/netcore50/zh-hans/System.Diagnostics.Debug.xml",
        "ref/netcore50/zh-hant/System.Diagnostics.Debug.xml",
        "ref/netstandard1.0/System.Diagnostics.Debug.dll",
        "ref/netstandard1.0/System.Diagnostics.Debug.xml",
        "ref/netstandard1.0/de/System.Diagnostics.Debug.xml",
        "ref/netstandard1.0/es/System.Diagnostics.Debug.xml",
        "ref/netstandard1.0/fr/System.Diagnostics.Debug.xml",
        "ref/netstandard1.0/it/System.Diagnostics.Debug.xml",
        "ref/netstandard1.0/ja/System.Diagnostics.Debug.xml",
        "ref/netstandard1.0/ko/System.Diagnostics.Debug.xml",
        "ref/netstandard1.0/ru/System.Diagnostics.Debug.xml",
        "ref/netstandard1.0/zh-hans/System.Diagnostics.Debug.xml",
        "ref/netstandard1.0/zh-hant/System.Diagnostics.Debug.xml",
        "ref/netstandard1.3/System.Diagnostics.Debug.dll",
        "ref/netstandard1.3/System.Diagnostics.Debug.xml",
        "ref/netstandard1.3/de/System.Diagnostics.Debug.xml",
        "ref/netstandard1.3/es/System.Diagnostics.Debug.xml",
        "ref/netstandard1.3/fr/System.Diagnostics.Debug.xml",
        "ref/netstandard1.3/it/System.Diagnostics.Debug.xml",
        "ref/netstandard1.3/ja/System.Diagnostics.Debug.xml",
        "ref/netstandard1.3/ko/System.Diagnostics.Debug.xml",
        "ref/netstandard1.3/ru/System.Diagnostics.Debug.xml",
        "ref/netstandard1.3/zh-hans/System.Diagnostics.Debug.xml",
        "ref/netstandard1.3/zh-hant/System.Diagnostics.Debug.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.diagnostics.debug.4.3.0.nupkg.sha512",
        "system.diagnostics.debug.nuspec"
      ]
    },
    "System.Diagnostics.DiagnosticSource/5.0.1": {
      "sha512": "uXQEYqav2V3zP6OwkOKtLv+qIi6z3m1hsGyKwXX7ZA7htT4shoVccGxnJ9kVRFPNAsi1ArZTq2oh7WOto6GbkQ==",
      "type": "package",
      "path": "system.diagnostics.diagnosticsource/5.0.1",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net45/System.Diagnostics.DiagnosticSource.dll",
        "lib/net45/System.Diagnostics.DiagnosticSource.xml",
        "lib/net46/System.Diagnostics.DiagnosticSource.dll",
        "lib/net46/System.Diagnostics.DiagnosticSource.xml",
        "lib/net5.0/System.Diagnostics.DiagnosticSource.dll",
        "lib/net5.0/System.Diagnostics.DiagnosticSource.xml",
        "lib/netstandard1.1/System.Diagnostics.DiagnosticSource.dll",
        "lib/netstandard1.1/System.Diagnostics.DiagnosticSource.xml",
        "lib/netstandard1.3/System.Diagnostics.DiagnosticSource.dll",
        "lib/netstandard1.3/System.Diagnostics.DiagnosticSource.xml",
        "lib/portable-net45+win8+wpa81/System.Diagnostics.DiagnosticSource.dll",
        "lib/portable-net45+win8+wpa81/System.Diagnostics.DiagnosticSource.xml",
        "system.diagnostics.diagnosticsource.5.0.1.nupkg.sha512",
        "system.diagnostics.diagnosticsource.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.Diagnostics.Tracing/4.3.0": {
      "sha512": "rswfv0f/Cqkh78rA5S8eN8Neocz234+emGCtTF3lxPY96F+mmmUen6tbn0glN6PMvlKQb9bPAY5e9u7fgPTkKw==",
      "type": "package",
      "path": "system.diagnostics.tracing/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/net462/System.Diagnostics.Tracing.dll",
        "lib/portable-net45+win8+wpa81/_._",
        "lib/win8/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/net462/System.Diagnostics.Tracing.dll",
        "ref/netcore50/System.Diagnostics.Tracing.dll",
        "ref/netcore50/System.Diagnostics.Tracing.xml",
        "ref/netcore50/de/System.Diagnostics.Tracing.xml",
        "ref/netcore50/es/System.Diagnostics.Tracing.xml",
        "ref/netcore50/fr/System.Diagnostics.Tracing.xml",
        "ref/netcore50/it/System.Diagnostics.Tracing.xml",
        "ref/netcore50/ja/System.Diagnostics.Tracing.xml",
        "ref/netcore50/ko/System.Diagnostics.Tracing.xml",
        "ref/netcore50/ru/System.Diagnostics.Tracing.xml",
        "ref/netcore50/zh-hans/System.Diagnostics.Tracing.xml",
        "ref/netcore50/zh-hant/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.1/System.Diagnostics.Tracing.dll",
        "ref/netstandard1.1/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.1/de/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.1/es/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.1/fr/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.1/it/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.1/ja/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.1/ko/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.1/ru/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.1/zh-hans/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.1/zh-hant/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.2/System.Diagnostics.Tracing.dll",
        "ref/netstandard1.2/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.2/de/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.2/es/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.2/fr/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.2/it/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.2/ja/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.2/ko/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.2/ru/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.2/zh-hans/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.2/zh-hant/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.3/System.Diagnostics.Tracing.dll",
        "ref/netstandard1.3/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.3/de/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.3/es/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.3/fr/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.3/it/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.3/ja/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.3/ko/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.3/ru/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.3/zh-hans/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.3/zh-hant/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.5/System.Diagnostics.Tracing.dll",
        "ref/netstandard1.5/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.5/de/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.5/es/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.5/fr/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.5/it/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.5/ja/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.5/ko/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.5/ru/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.5/zh-hans/System.Diagnostics.Tracing.xml",
        "ref/netstandard1.5/zh-hant/System.Diagnostics.Tracing.xml",
        "ref/portable-net45+win8+wpa81/_._",
        "ref/win8/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.diagnostics.tracing.4.3.0.nupkg.sha512",
        "system.diagnostics.tracing.nuspec"
      ]
    },
    "System.Drawing.Common/5.0.0": {
      "sha512": "SztFwAnpfKC8+sEKXAFxCBWhKQaEd97EiOL7oZJZP56zbqnLpmxACWA8aGseaUExciuEAUuR9dY8f7HkTRAdnw==",
      "type": "package",
      "path": "system.drawing.common/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net461/System.Drawing.Common.dll",
        "lib/netcoreapp3.0/System.Drawing.Common.dll",
        "lib/netcoreapp3.0/System.Drawing.Common.xml",
        "lib/netstandard2.0/System.Drawing.Common.dll",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net461/System.Drawing.Common.dll",
        "ref/netcoreapp3.0/System.Drawing.Common.dll",
        "ref/netcoreapp3.0/System.Drawing.Common.xml",
        "ref/netstandard2.0/System.Drawing.Common.dll",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "runtimes/unix/lib/netcoreapp2.0/System.Drawing.Common.dll",
        "runtimes/unix/lib/netcoreapp3.0/System.Drawing.Common.dll",
        "runtimes/unix/lib/netcoreapp3.0/System.Drawing.Common.xml",
        "runtimes/win/lib/netcoreapp2.0/System.Drawing.Common.dll",
        "runtimes/win/lib/netcoreapp3.0/System.Drawing.Common.dll",
        "runtimes/win/lib/netcoreapp3.0/System.Drawing.Common.xml",
        "system.drawing.common.5.0.0.nupkg.sha512",
        "system.drawing.common.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.Dynamic.Runtime/4.0.11": {
      "sha512": "db34f6LHYM0U0JpE+sOmjar27BnqTVkbLJhgfwMpTdgTigG/Hna3m2MYVwnFzGGKnEJk2UXFuoVTr8WUbU91/A==",
      "type": "package",
      "path": "system.dynamic.runtime/4.0.11",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/netcore50/System.Dynamic.Runtime.dll",
        "lib/netstandard1.3/System.Dynamic.Runtime.dll",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/netcore50/System.Dynamic.Runtime.dll",
        "ref/netcore50/System.Dynamic.Runtime.xml",
        "ref/netcore50/de/System.Dynamic.Runtime.xml",
        "ref/netcore50/es/System.Dynamic.Runtime.xml",
        "ref/netcore50/fr/System.Dynamic.Runtime.xml",
        "ref/netcore50/it/System.Dynamic.Runtime.xml",
        "ref/netcore50/ja/System.Dynamic.Runtime.xml",
        "ref/netcore50/ko/System.Dynamic.Runtime.xml",
        "ref/netcore50/ru/System.Dynamic.Runtime.xml",
        "ref/netcore50/zh-hans/System.Dynamic.Runtime.xml",
        "ref/netcore50/zh-hant/System.Dynamic.Runtime.xml",
        "ref/netstandard1.0/System.Dynamic.Runtime.dll",
        "ref/netstandard1.0/System.Dynamic.Runtime.xml",
        "ref/netstandard1.0/de/System.Dynamic.Runtime.xml",
        "ref/netstandard1.0/es/System.Dynamic.Runtime.xml",
        "ref/netstandard1.0/fr/System.Dynamic.Runtime.xml",
        "ref/netstandard1.0/it/System.Dynamic.Runtime.xml",
        "ref/netstandard1.0/ja/System.Dynamic.Runtime.xml",
        "ref/netstandard1.0/ko/System.Dynamic.Runtime.xml",
        "ref/netstandard1.0/ru/System.Dynamic.Runtime.xml",
        "ref/netstandard1.0/zh-hans/System.Dynamic.Runtime.xml",
        "ref/netstandard1.0/zh-hant/System.Dynamic.Runtime.xml",
        "ref/netstandard1.3/System.Dynamic.Runtime.dll",
        "ref/netstandard1.3/System.Dynamic.Runtime.xml",
        "ref/netstandard1.3/de/System.Dynamic.Runtime.xml",
        "ref/netstandard1.3/es/System.Dynamic.Runtime.xml",
        "ref/netstandard1.3/fr/System.Dynamic.Runtime.xml",
        "ref/netstandard1.3/it/System.Dynamic.Runtime.xml",
        "ref/netstandard1.3/ja/System.Dynamic.Runtime.xml",
        "ref/netstandard1.3/ko/System.Dynamic.Runtime.xml",
        "ref/netstandard1.3/ru/System.Dynamic.Runtime.xml",
        "ref/netstandard1.3/zh-hans/System.Dynamic.Runtime.xml",
        "ref/netstandard1.3/zh-hant/System.Dynamic.Runtime.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "runtimes/aot/lib/netcore50/System.Dynamic.Runtime.dll",
        "system.dynamic.runtime.4.0.11.nupkg.sha512",
        "system.dynamic.runtime.nuspec"
      ]
    },
    "System.Globalization/4.3.0": {
      "sha512": "kYdVd2f2PAdFGblzFswE4hkNANJBKRmsfa2X5LG2AcWE1c7/4t0pYae1L8vfZ5xvE2nK/R9JprtToA61OSHWIg==",
      "type": "package",
      "path": "system.globalization/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/netcore50/System.Globalization.dll",
        "ref/netcore50/System.Globalization.xml",
        "ref/netcore50/de/System.Globalization.xml",
        "ref/netcore50/es/System.Globalization.xml",
        "ref/netcore50/fr/System.Globalization.xml",
        "ref/netcore50/it/System.Globalization.xml",
        "ref/netcore50/ja/System.Globalization.xml",
        "ref/netcore50/ko/System.Globalization.xml",
        "ref/netcore50/ru/System.Globalization.xml",
        "ref/netcore50/zh-hans/System.Globalization.xml",
        "ref/netcore50/zh-hant/System.Globalization.xml",
        "ref/netstandard1.0/System.Globalization.dll",
        "ref/netstandard1.0/System.Globalization.xml",
        "ref/netstandard1.0/de/System.Globalization.xml",
        "ref/netstandard1.0/es/System.Globalization.xml",
        "ref/netstandard1.0/fr/System.Globalization.xml",
        "ref/netstandard1.0/it/System.Globalization.xml",
        "ref/netstandard1.0/ja/System.Globalization.xml",
        "ref/netstandard1.0/ko/System.Globalization.xml",
        "ref/netstandard1.0/ru/System.Globalization.xml",
        "ref/netstandard1.0/zh-hans/System.Globalization.xml",
        "ref/netstandard1.0/zh-hant/System.Globalization.xml",
        "ref/netstandard1.3/System.Globalization.dll",
        "ref/netstandard1.3/System.Globalization.xml",
        "ref/netstandard1.3/de/System.Globalization.xml",
        "ref/netstandard1.3/es/System.Globalization.xml",
        "ref/netstandard1.3/fr/System.Globalization.xml",
        "ref/netstandard1.3/it/System.Globalization.xml",
        "ref/netstandard1.3/ja/System.Globalization.xml",
        "ref/netstandard1.3/ko/System.Globalization.xml",
        "ref/netstandard1.3/ru/System.Globalization.xml",
        "ref/netstandard1.3/zh-hans/System.Globalization.xml",
        "ref/netstandard1.3/zh-hant/System.Globalization.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.globalization.4.3.0.nupkg.sha512",
        "system.globalization.nuspec"
      ]
    },
    "System.IO/4.3.0": {
      "sha512": "3qjaHvxQPDpSOYICjUoTsmoq5u6QJAFRUITgeT/4gqkF1bajbSmb1kwSxEA8AHlofqgcKJcM8udgieRNhaJ5Cg==",
      "type": "package",
      "path": "system.io/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/net462/System.IO.dll",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/net462/System.IO.dll",
        "ref/netcore50/System.IO.dll",
        "ref/netcore50/System.IO.xml",
        "ref/netcore50/de/System.IO.xml",
        "ref/netcore50/es/System.IO.xml",
        "ref/netcore50/fr/System.IO.xml",
        "ref/netcore50/it/System.IO.xml",
        "ref/netcore50/ja/System.IO.xml",
        "ref/netcore50/ko/System.IO.xml",
        "ref/netcore50/ru/System.IO.xml",
        "ref/netcore50/zh-hans/System.IO.xml",
        "ref/netcore50/zh-hant/System.IO.xml",
        "ref/netstandard1.0/System.IO.dll",
        "ref/netstandard1.0/System.IO.xml",
        "ref/netstandard1.0/de/System.IO.xml",
        "ref/netstandard1.0/es/System.IO.xml",
        "ref/netstandard1.0/fr/System.IO.xml",
        "ref/netstandard1.0/it/System.IO.xml",
        "ref/netstandard1.0/ja/System.IO.xml",
        "ref/netstandard1.0/ko/System.IO.xml",
        "ref/netstandard1.0/ru/System.IO.xml",
        "ref/netstandard1.0/zh-hans/System.IO.xml",
        "ref/netstandard1.0/zh-hant/System.IO.xml",
        "ref/netstandard1.3/System.IO.dll",
        "ref/netstandard1.3/System.IO.xml",
        "ref/netstandard1.3/de/System.IO.xml",
        "ref/netstandard1.3/es/System.IO.xml",
        "ref/netstandard1.3/fr/System.IO.xml",
        "ref/netstandard1.3/it/System.IO.xml",
        "ref/netstandard1.3/ja/System.IO.xml",
        "ref/netstandard1.3/ko/System.IO.xml",
        "ref/netstandard1.3/ru/System.IO.xml",
        "ref/netstandard1.3/zh-hans/System.IO.xml",
        "ref/netstandard1.3/zh-hant/System.IO.xml",
        "ref/netstandard1.5/System.IO.dll",
        "ref/netstandard1.5/System.IO.xml",
        "ref/netstandard1.5/de/System.IO.xml",
        "ref/netstandard1.5/es/System.IO.xml",
        "ref/netstandard1.5/fr/System.IO.xml",
        "ref/netstandard1.5/it/System.IO.xml",
        "ref/netstandard1.5/ja/System.IO.xml",
        "ref/netstandard1.5/ko/System.IO.xml",
        "ref/netstandard1.5/ru/System.IO.xml",
        "ref/netstandard1.5/zh-hans/System.IO.xml",
        "ref/netstandard1.5/zh-hant/System.IO.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.io.4.3.0.nupkg.sha512",
        "system.io.nuspec"
      ]
    },
    "System.IO.FileSystem/4.3.0": {
      "sha512": "3wEMARTnuio+ulnvi+hkRNROYwa1kylvYahhcLk4HSoVdl+xxTFVeVlYOfLwrDPImGls0mDqbMhrza8qnWPTdA==",
      "type": "package",
      "path": "system.io.filesystem/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net46/System.IO.FileSystem.dll",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net46/System.IO.FileSystem.dll",
        "ref/netstandard1.3/System.IO.FileSystem.dll",
        "ref/netstandard1.3/System.IO.FileSystem.xml",
        "ref/netstandard1.3/de/System.IO.FileSystem.xml",
        "ref/netstandard1.3/es/System.IO.FileSystem.xml",
        "ref/netstandard1.3/fr/System.IO.FileSystem.xml",
        "ref/netstandard1.3/it/System.IO.FileSystem.xml",
        "ref/netstandard1.3/ja/System.IO.FileSystem.xml",
        "ref/netstandard1.3/ko/System.IO.FileSystem.xml",
        "ref/netstandard1.3/ru/System.IO.FileSystem.xml",
        "ref/netstandard1.3/zh-hans/System.IO.FileSystem.xml",
        "ref/netstandard1.3/zh-hant/System.IO.FileSystem.xml",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.io.filesystem.4.3.0.nupkg.sha512",
        "system.io.filesystem.nuspec"
      ]
    },
    "System.IO.FileSystem.Primitives/4.3.0": {
      "sha512": "6QOb2XFLch7bEc4lIcJH49nJN2HV+OC3fHDgsLVsBVBk3Y4hFAnOBGzJ2lUu7CyDDFo9IBWkSsnbkT6IBwwiMw==",
      "type": "package",
      "path": "system.io.filesystem.primitives/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net46/System.IO.FileSystem.Primitives.dll",
        "lib/netstandard1.3/System.IO.FileSystem.Primitives.dll",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net46/System.IO.FileSystem.Primitives.dll",
        "ref/netstandard1.3/System.IO.FileSystem.Primitives.dll",
        "ref/netstandard1.3/System.IO.FileSystem.Primitives.xml",
        "ref/netstandard1.3/de/System.IO.FileSystem.Primitives.xml",
        "ref/netstandard1.3/es/System.IO.FileSystem.Primitives.xml",
        "ref/netstandard1.3/fr/System.IO.FileSystem.Primitives.xml",
        "ref/netstandard1.3/it/System.IO.FileSystem.Primitives.xml",
        "ref/netstandard1.3/ja/System.IO.FileSystem.Primitives.xml",
        "ref/netstandard1.3/ko/System.IO.FileSystem.Primitives.xml",
        "ref/netstandard1.3/ru/System.IO.FileSystem.Primitives.xml",
        "ref/netstandard1.3/zh-hans/System.IO.FileSystem.Primitives.xml",
        "ref/netstandard1.3/zh-hant/System.IO.FileSystem.Primitives.xml",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.io.filesystem.primitives.4.3.0.nupkg.sha512",
        "system.io.filesystem.primitives.nuspec"
      ]
    },
    "System.IO.Pipelines/5.0.1": {
      "sha512": "qEePWsaq9LoEEIqhbGe6D5J8c9IqQOUuTzzV6wn1POlfdLkJliZY3OlB0j0f17uMWlqZYjH7txj+2YbyrIA8Yg==",
      "type": "package",
      "path": "system.io.pipelines/5.0.1",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/System.IO.Pipelines.dll",
        "lib/net461/System.IO.Pipelines.xml",
        "lib/netcoreapp3.0/System.IO.Pipelines.dll",
        "lib/netcoreapp3.0/System.IO.Pipelines.xml",
        "lib/netstandard1.3/System.IO.Pipelines.dll",
        "lib/netstandard1.3/System.IO.Pipelines.xml",
        "lib/netstandard2.0/System.IO.Pipelines.dll",
        "lib/netstandard2.0/System.IO.Pipelines.xml",
        "ref/netcoreapp2.0/System.IO.Pipelines.dll",
        "ref/netcoreapp2.0/System.IO.Pipelines.xml",
        "system.io.pipelines.5.0.1.nupkg.sha512",
        "system.io.pipelines.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.Linq/4.3.0": {
      "sha512": "5DbqIUpsDp0dFftytzuMmc0oeMdQwjcP/EWxsksIz/w1TcFRkZ3yKKz0PqiYFMmEwPSWw+qNVqD7PJ889JzHbw==",
      "type": "package",
      "path": "system.linq/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/net463/System.Linq.dll",
        "lib/netcore50/System.Linq.dll",
        "lib/netstandard1.6/System.Linq.dll",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/net463/System.Linq.dll",
        "ref/netcore50/System.Linq.dll",
        "ref/netcore50/System.Linq.xml",
        "ref/netcore50/de/System.Linq.xml",
        "ref/netcore50/es/System.Linq.xml",
        "ref/netcore50/fr/System.Linq.xml",
        "ref/netcore50/it/System.Linq.xml",
        "ref/netcore50/ja/System.Linq.xml",
        "ref/netcore50/ko/System.Linq.xml",
        "ref/netcore50/ru/System.Linq.xml",
        "ref/netcore50/zh-hans/System.Linq.xml",
        "ref/netcore50/zh-hant/System.Linq.xml",
        "ref/netstandard1.0/System.Linq.dll",
        "ref/netstandard1.0/System.Linq.xml",
        "ref/netstandard1.0/de/System.Linq.xml",
        "ref/netstandard1.0/es/System.Linq.xml",
        "ref/netstandard1.0/fr/System.Linq.xml",
        "ref/netstandard1.0/it/System.Linq.xml",
        "ref/netstandard1.0/ja/System.Linq.xml",
        "ref/netstandard1.0/ko/System.Linq.xml",
        "ref/netstandard1.0/ru/System.Linq.xml",
        "ref/netstandard1.0/zh-hans/System.Linq.xml",
        "ref/netstandard1.0/zh-hant/System.Linq.xml",
        "ref/netstandard1.6/System.Linq.dll",
        "ref/netstandard1.6/System.Linq.xml",
        "ref/netstandard1.6/de/System.Linq.xml",
        "ref/netstandard1.6/es/System.Linq.xml",
        "ref/netstandard1.6/fr/System.Linq.xml",
        "ref/netstandard1.6/it/System.Linq.xml",
        "ref/netstandard1.6/ja/System.Linq.xml",
        "ref/netstandard1.6/ko/System.Linq.xml",
        "ref/netstandard1.6/ru/System.Linq.xml",
        "ref/netstandard1.6/zh-hans/System.Linq.xml",
        "ref/netstandard1.6/zh-hant/System.Linq.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.linq.4.3.0.nupkg.sha512",
        "system.linq.nuspec"
      ]
    },
    "System.Linq.Expressions/4.3.0": {
      "sha512": "PGKkrd2khG4CnlyJwxwwaWWiSiWFNBGlgXvJpeO0xCXrZ89ODrQ6tjEWS/kOqZ8GwEOUATtKtzp1eRgmYNfclg==",
      "type": "package",
      "path": "system.linq.expressions/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/net463/System.Linq.Expressions.dll",
        "lib/netcore50/System.Linq.Expressions.dll",
        "lib/netstandard1.6/System.Linq.Expressions.dll",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/net463/System.Linq.Expressions.dll",
        "ref/netcore50/System.Linq.Expressions.dll",
        "ref/netcore50/System.Linq.Expressions.xml",
        "ref/netcore50/de/System.Linq.Expressions.xml",
        "ref/netcore50/es/System.Linq.Expressions.xml",
        "ref/netcore50/fr/System.Linq.Expressions.xml",
        "ref/netcore50/it/System.Linq.Expressions.xml",
        "ref/netcore50/ja/System.Linq.Expressions.xml",
        "ref/netcore50/ko/System.Linq.Expressions.xml",
        "ref/netcore50/ru/System.Linq.Expressions.xml",
        "ref/netcore50/zh-hans/System.Linq.Expressions.xml",
        "ref/netcore50/zh-hant/System.Linq.Expressions.xml",
        "ref/netstandard1.0/System.Linq.Expressions.dll",
        "ref/netstandard1.0/System.Linq.Expressions.xml",
        "ref/netstandard1.0/de/System.Linq.Expressions.xml",
        "ref/netstandard1.0/es/System.Linq.Expressions.xml",
        "ref/netstandard1.0/fr/System.Linq.Expressions.xml",
        "ref/netstandard1.0/it/System.Linq.Expressions.xml",
        "ref/netstandard1.0/ja/System.Linq.Expressions.xml",
        "ref/netstandard1.0/ko/System.Linq.Expressions.xml",
        "ref/netstandard1.0/ru/System.Linq.Expressions.xml",
        "ref/netstandard1.0/zh-hans/System.Linq.Expressions.xml",
        "ref/netstandard1.0/zh-hant/System.Linq.Expressions.xml",
        "ref/netstandard1.3/System.Linq.Expressions.dll",
        "ref/netstandard1.3/System.Linq.Expressions.xml",
        "ref/netstandard1.3/de/System.Linq.Expressions.xml",
        "ref/netstandard1.3/es/System.Linq.Expressions.xml",
        "ref/netstandard1.3/fr/System.Linq.Expressions.xml",
        "ref/netstandard1.3/it/System.Linq.Expressions.xml",
        "ref/netstandard1.3/ja/System.Linq.Expressions.xml",
        "ref/netstandard1.3/ko/System.Linq.Expressions.xml",
        "ref/netstandard1.3/ru/System.Linq.Expressions.xml",
        "ref/netstandard1.3/zh-hans/System.Linq.Expressions.xml",
        "ref/netstandard1.3/zh-hant/System.Linq.Expressions.xml",
        "ref/netstandard1.6/System.Linq.Expressions.dll",
        "ref/netstandard1.6/System.Linq.Expressions.xml",
        "ref/netstandard1.6/de/System.Linq.Expressions.xml",
        "ref/netstandard1.6/es/System.Linq.Expressions.xml",
        "ref/netstandard1.6/fr/System.Linq.Expressions.xml",
        "ref/netstandard1.6/it/System.Linq.Expressions.xml",
        "ref/netstandard1.6/ja/System.Linq.Expressions.xml",
        "ref/netstandard1.6/ko/System.Linq.Expressions.xml",
        "ref/netstandard1.6/ru/System.Linq.Expressions.xml",
        "ref/netstandard1.6/zh-hans/System.Linq.Expressions.xml",
        "ref/netstandard1.6/zh-hant/System.Linq.Expressions.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "runtimes/aot/lib/netcore50/System.Linq.Expressions.dll",
        "system.linq.expressions.4.3.0.nupkg.sha512",
        "system.linq.expressions.nuspec"
      ]
    },
    "System.Linq.Queryable/4.3.0": {
      "sha512": "In1Bmmvl/j52yPu3xgakQSI0YIckPUr870w4K5+Lak3JCCa8hl+my65lABOuKfYs4ugmZy25ScFerC4nz8+b6g==",
      "type": "package",
      "path": "system.linq.queryable/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/monoandroid10/_._",
        "lib/monotouch10/_._",
        "lib/net45/_._",
        "lib/netcore50/System.Linq.Queryable.dll",
        "lib/netstandard1.3/System.Linq.Queryable.dll",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/monoandroid10/_._",
        "ref/monotouch10/_._",
        "ref/net45/_._",
        "ref/netcore50/System.Linq.Queryable.dll",
        "ref/netcore50/System.Linq.Queryable.xml",
        "ref/netcore50/de/System.Linq.Queryable.xml",
        "ref/netcore50/es/System.Linq.Queryable.xml",
        "ref/netcore50/fr/System.Linq.Queryable.xml",
        "ref/netcore50/it/System.Linq.Queryable.xml",
        "ref/netcore50/ja/System.Linq.Queryable.xml",
        "ref/netcore50/ko/System.Linq.Queryable.xml",
        "ref/netcore50/ru/System.Linq.Queryable.xml",
        "ref/netcore50/zh-hans/System.Linq.Queryable.xml",
        "ref/netcore50/zh-hant/System.Linq.Queryable.xml",
        "ref/netstandard1.0/System.Linq.Queryable.dll",
        "ref/netstandard1.0/System.Linq.Queryable.xml",
        "ref/netstandard1.0/de/System.Linq.Queryable.xml",
        "ref/netstandard1.0/es/System.Linq.Queryable.xml",
        "ref/netstandard1.0/fr/System.Linq.Queryable.xml",
        "ref/netstandard1.0/it/System.Linq.Queryable.xml",
        "ref/netstandard1.0/ja/System.Linq.Queryable.xml",
        "ref/netstandard1.0/ko/System.Linq.Queryable.xml",
        "ref/netstandard1.0/ru/System.Linq.Queryable.xml",
        "ref/netstandard1.0/zh-hans/System.Linq.Queryable.xml",
        "ref/netstandard1.0/zh-hant/System.Linq.Queryable.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.linq.queryable.4.3.0.nupkg.sha512",
        "system.linq.queryable.nuspec"
      ]
    },
    "System.Net.WebSockets.WebSocketProtocol/4.5.1": {
      "sha512": "FquLjdb/0CeMqb15u9Px6TwnyFl306WztKWu6sKKc5kWPYMdpi5BFEkdxzGoieYFp9UksyGwJnCw4KKAUfJjrw==",
      "type": "package",
      "path": "system.net.websockets.websocketprotocol/4.5.1",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/netcoreapp2.1/System.Net.WebSockets.WebSocketProtocol.dll",
        "lib/netstandard2.0/System.Net.WebSockets.WebSocketProtocol.dll",
        "ref/netstandard2.0/System.Net.WebSockets.WebSocketProtocol.dll",
        "system.net.websockets.websocketprotocol.4.5.1.nupkg.sha512",
        "system.net.websockets.websocketprotocol.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.ObjectModel/4.3.0": {
      "sha512": "bdX+80eKv9bN6K4N+d77OankKHGn6CH711a6fcOpMQu2Fckp/Ft4L/kW9WznHpyR0NRAvJutzOMHNNlBGvxQzQ==",
      "type": "package",
      "path": "system.objectmodel/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/netcore50/System.ObjectModel.dll",
        "lib/netstandard1.3/System.ObjectModel.dll",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/netcore50/System.ObjectModel.dll",
        "ref/netcore50/System.ObjectModel.xml",
        "ref/netcore50/de/System.ObjectModel.xml",
        "ref/netcore50/es/System.ObjectModel.xml",
        "ref/netcore50/fr/System.ObjectModel.xml",
        "ref/netcore50/it/System.ObjectModel.xml",
        "ref/netcore50/ja/System.ObjectModel.xml",
        "ref/netcore50/ko/System.ObjectModel.xml",
        "ref/netcore50/ru/System.ObjectModel.xml",
        "ref/netcore50/zh-hans/System.ObjectModel.xml",
        "ref/netcore50/zh-hant/System.ObjectModel.xml",
        "ref/netstandard1.0/System.ObjectModel.dll",
        "ref/netstandard1.0/System.ObjectModel.xml",
        "ref/netstandard1.0/de/System.ObjectModel.xml",
        "ref/netstandard1.0/es/System.ObjectModel.xml",
        "ref/netstandard1.0/fr/System.ObjectModel.xml",
        "ref/netstandard1.0/it/System.ObjectModel.xml",
        "ref/netstandard1.0/ja/System.ObjectModel.xml",
        "ref/netstandard1.0/ko/System.ObjectModel.xml",
        "ref/netstandard1.0/ru/System.ObjectModel.xml",
        "ref/netstandard1.0/zh-hans/System.ObjectModel.xml",
        "ref/netstandard1.0/zh-hant/System.ObjectModel.xml",
        "ref/netstandard1.3/System.ObjectModel.dll",
        "ref/netstandard1.3/System.ObjectModel.xml",
        "ref/netstandard1.3/de/System.ObjectModel.xml",
        "ref/netstandard1.3/es/System.ObjectModel.xml",
        "ref/netstandard1.3/fr/System.ObjectModel.xml",
        "ref/netstandard1.3/it/System.ObjectModel.xml",
        "ref/netstandard1.3/ja/System.ObjectModel.xml",
        "ref/netstandard1.3/ko/System.ObjectModel.xml",
        "ref/netstandard1.3/ru/System.ObjectModel.xml",
        "ref/netstandard1.3/zh-hans/System.ObjectModel.xml",
        "ref/netstandard1.3/zh-hant/System.ObjectModel.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.objectmodel.4.3.0.nupkg.sha512",
        "system.objectmodel.nuspec"
      ]
    },
    "System.Reflection/4.3.0": {
      "sha512": "KMiAFoW7MfJGa9nDFNcfu+FpEdiHpWgTcS2HdMpDvt9saK3y/G4GwprPyzqjFH9NTaGPQeWNHU+iDlDILj96aQ==",
      "type": "package",
      "path": "system.reflection/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/net462/System.Reflection.dll",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/net462/System.Reflection.dll",
        "ref/netcore50/System.Reflection.dll",
        "ref/netcore50/System.Reflection.xml",
        "ref/netcore50/de/System.Reflection.xml",
        "ref/netcore50/es/System.Reflection.xml",
        "ref/netcore50/fr/System.Reflection.xml",
        "ref/netcore50/it/System.Reflection.xml",
        "ref/netcore50/ja/System.Reflection.xml",
        "ref/netcore50/ko/System.Reflection.xml",
        "ref/netcore50/ru/System.Reflection.xml",
        "ref/netcore50/zh-hans/System.Reflection.xml",
        "ref/netcore50/zh-hant/System.Reflection.xml",
        "ref/netstandard1.0/System.Reflection.dll",
        "ref/netstandard1.0/System.Reflection.xml",
        "ref/netstandard1.0/de/System.Reflection.xml",
        "ref/netstandard1.0/es/System.Reflection.xml",
        "ref/netstandard1.0/fr/System.Reflection.xml",
        "ref/netstandard1.0/it/System.Reflection.xml",
        "ref/netstandard1.0/ja/System.Reflection.xml",
        "ref/netstandard1.0/ko/System.Reflection.xml",
        "ref/netstandard1.0/ru/System.Reflection.xml",
        "ref/netstandard1.0/zh-hans/System.Reflection.xml",
        "ref/netstandard1.0/zh-hant/System.Reflection.xml",
        "ref/netstandard1.3/System.Reflection.dll",
        "ref/netstandard1.3/System.Reflection.xml",
        "ref/netstandard1.3/de/System.Reflection.xml",
        "ref/netstandard1.3/es/System.Reflection.xml",
        "ref/netstandard1.3/fr/System.Reflection.xml",
        "ref/netstandard1.3/it/System.Reflection.xml",
        "ref/netstandard1.3/ja/System.Reflection.xml",
        "ref/netstandard1.3/ko/System.Reflection.xml",
        "ref/netstandard1.3/ru/System.Reflection.xml",
        "ref/netstandard1.3/zh-hans/System.Reflection.xml",
        "ref/netstandard1.3/zh-hant/System.Reflection.xml",
        "ref/netstandard1.5/System.Reflection.dll",
        "ref/netstandard1.5/System.Reflection.xml",
        "ref/netstandard1.5/de/System.Reflection.xml",
        "ref/netstandard1.5/es/System.Reflection.xml",
        "ref/netstandard1.5/fr/System.Reflection.xml",
        "ref/netstandard1.5/it/System.Reflection.xml",
        "ref/netstandard1.5/ja/System.Reflection.xml",
        "ref/netstandard1.5/ko/System.Reflection.xml",
        "ref/netstandard1.5/ru/System.Reflection.xml",
        "ref/netstandard1.5/zh-hans/System.Reflection.xml",
        "ref/netstandard1.5/zh-hant/System.Reflection.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.reflection.4.3.0.nupkg.sha512",
        "system.reflection.nuspec"
      ]
    },
    "System.Reflection.Emit/4.7.0": {
      "sha512": "VR4kk8XLKebQ4MZuKuIni/7oh+QGFmZW3qORd1GvBq/8026OpW501SzT/oypwiQl4TvT8ErnReh/NzY9u+C6wQ==",
      "type": "package",
      "path": "system.reflection.emit/4.7.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/netcore50/System.Reflection.Emit.dll",
        "lib/netcoreapp2.0/_._",
        "lib/netstandard1.1/System.Reflection.Emit.dll",
        "lib/netstandard1.1/System.Reflection.Emit.xml",
        "lib/netstandard1.3/System.Reflection.Emit.dll",
        "lib/netstandard2.0/System.Reflection.Emit.dll",
        "lib/netstandard2.0/System.Reflection.Emit.xml",
        "lib/netstandard2.1/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/netcoreapp2.0/_._",
        "ref/netstandard1.1/System.Reflection.Emit.dll",
        "ref/netstandard1.1/System.Reflection.Emit.xml",
        "ref/netstandard1.1/de/System.Reflection.Emit.xml",
        "ref/netstandard1.1/es/System.Reflection.Emit.xml",
        "ref/netstandard1.1/fr/System.Reflection.Emit.xml",
        "ref/netstandard1.1/it/System.Reflection.Emit.xml",
        "ref/netstandard1.1/ja/System.Reflection.Emit.xml",
        "ref/netstandard1.1/ko/System.Reflection.Emit.xml",
        "ref/netstandard1.1/ru/System.Reflection.Emit.xml",
        "ref/netstandard1.1/zh-hans/System.Reflection.Emit.xml",
        "ref/netstandard1.1/zh-hant/System.Reflection.Emit.xml",
        "ref/netstandard2.0/System.Reflection.Emit.dll",
        "ref/netstandard2.0/System.Reflection.Emit.xml",
        "ref/netstandard2.1/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "runtimes/aot/lib/netcore50/System.Reflection.Emit.dll",
        "runtimes/aot/lib/netcore50/System.Reflection.Emit.xml",
        "system.reflection.emit.4.7.0.nupkg.sha512",
        "system.reflection.emit.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.Reflection.Emit.ILGeneration/4.3.0": {
      "sha512": "59tBslAk9733NXLrUJrwNZEzbMAcu8k344OYo+wfSVygcgZ9lgBdGIzH/nrg3LYhXceynyvTc8t5/GD4Ri0/ng==",
      "type": "package",
      "path": "system.reflection.emit.ilgeneration/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/netcore50/System.Reflection.Emit.ILGeneration.dll",
        "lib/netstandard1.3/System.Reflection.Emit.ILGeneration.dll",
        "lib/portable-net45+wp8/_._",
        "lib/wp80/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/netstandard1.0/System.Reflection.Emit.ILGeneration.dll",
        "ref/netstandard1.0/System.Reflection.Emit.ILGeneration.xml",
        "ref/netstandard1.0/de/System.Reflection.Emit.ILGeneration.xml",
        "ref/netstandard1.0/es/System.Reflection.Emit.ILGeneration.xml",
        "ref/netstandard1.0/fr/System.Reflection.Emit.ILGeneration.xml",
        "ref/netstandard1.0/it/System.Reflection.Emit.ILGeneration.xml",
        "ref/netstandard1.0/ja/System.Reflection.Emit.ILGeneration.xml",
        "ref/netstandard1.0/ko/System.Reflection.Emit.ILGeneration.xml",
        "ref/netstandard1.0/ru/System.Reflection.Emit.ILGeneration.xml",
        "ref/netstandard1.0/zh-hans/System.Reflection.Emit.ILGeneration.xml",
        "ref/netstandard1.0/zh-hant/System.Reflection.Emit.ILGeneration.xml",
        "ref/portable-net45+wp8/_._",
        "ref/wp80/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "runtimes/aot/lib/netcore50/_._",
        "system.reflection.emit.ilgeneration.4.3.0.nupkg.sha512",
        "system.reflection.emit.ilgeneration.nuspec"
      ]
    },
    "System.Reflection.Emit.Lightweight/4.3.0": {
      "sha512": "oadVHGSMsTmZsAF864QYN1t1QzZjIcuKU3l2S9cZOwDdDueNTrqq1yRj7koFfIGEnKpt6NjpL3rOzRhs4ryOgA==",
      "type": "package",
      "path": "system.reflection.emit.lightweight/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/netcore50/System.Reflection.Emit.Lightweight.dll",
        "lib/netstandard1.3/System.Reflection.Emit.Lightweight.dll",
        "lib/portable-net45+wp8/_._",
        "lib/wp80/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/netstandard1.0/System.Reflection.Emit.Lightweight.dll",
        "ref/netstandard1.0/System.Reflection.Emit.Lightweight.xml",
        "ref/netstandard1.0/de/System.Reflection.Emit.Lightweight.xml",
        "ref/netstandard1.0/es/System.Reflection.Emit.Lightweight.xml",
        "ref/netstandard1.0/fr/System.Reflection.Emit.Lightweight.xml",
        "ref/netstandard1.0/it/System.Reflection.Emit.Lightweight.xml",
        "ref/netstandard1.0/ja/System.Reflection.Emit.Lightweight.xml",
        "ref/netstandard1.0/ko/System.Reflection.Emit.Lightweight.xml",
        "ref/netstandard1.0/ru/System.Reflection.Emit.Lightweight.xml",
        "ref/netstandard1.0/zh-hans/System.Reflection.Emit.Lightweight.xml",
        "ref/netstandard1.0/zh-hant/System.Reflection.Emit.Lightweight.xml",
        "ref/portable-net45+wp8/_._",
        "ref/wp80/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "runtimes/aot/lib/netcore50/_._",
        "system.reflection.emit.lightweight.4.3.0.nupkg.sha512",
        "system.reflection.emit.lightweight.nuspec"
      ]
    },
    "System.Reflection.Extensions/4.3.0": {
      "sha512": "rJkrJD3kBI5B712aRu4DpSIiHRtr6QlfZSQsb0hYHrDCZORXCFjQfoipo2LaMUHoT9i1B7j7MnfaEKWDFmFQNQ==",
      "type": "package",
      "path": "system.reflection.extensions/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/netcore50/System.Reflection.Extensions.dll",
        "ref/netcore50/System.Reflection.Extensions.xml",
        "ref/netcore50/de/System.Reflection.Extensions.xml",
        "ref/netcore50/es/System.Reflection.Extensions.xml",
        "ref/netcore50/fr/System.Reflection.Extensions.xml",
        "ref/netcore50/it/System.Reflection.Extensions.xml",
        "ref/netcore50/ja/System.Reflection.Extensions.xml",
        "ref/netcore50/ko/System.Reflection.Extensions.xml",
        "ref/netcore50/ru/System.Reflection.Extensions.xml",
        "ref/netcore50/zh-hans/System.Reflection.Extensions.xml",
        "ref/netcore50/zh-hant/System.Reflection.Extensions.xml",
        "ref/netstandard1.0/System.Reflection.Extensions.dll",
        "ref/netstandard1.0/System.Reflection.Extensions.xml",
        "ref/netstandard1.0/de/System.Reflection.Extensions.xml",
        "ref/netstandard1.0/es/System.Reflection.Extensions.xml",
        "ref/netstandard1.0/fr/System.Reflection.Extensions.xml",
        "ref/netstandard1.0/it/System.Reflection.Extensions.xml",
        "ref/netstandard1.0/ja/System.Reflection.Extensions.xml",
        "ref/netstandard1.0/ko/System.Reflection.Extensions.xml",
        "ref/netstandard1.0/ru/System.Reflection.Extensions.xml",
        "ref/netstandard1.0/zh-hans/System.Reflection.Extensions.xml",
        "ref/netstandard1.0/zh-hant/System.Reflection.Extensions.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.reflection.extensions.4.3.0.nupkg.sha512",
        "system.reflection.extensions.nuspec"
      ]
    },
    "System.Reflection.Primitives/4.3.0": {
      "sha512": "5RXItQz5As4xN2/YUDxdpsEkMhvw3e6aNveFXUn4Hl/udNTCNhnKp8lT9fnc3MhvGKh1baak5CovpuQUXHAlIA==",
      "type": "package",
      "path": "system.reflection.primitives/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/netcore50/System.Reflection.Primitives.dll",
        "ref/netcore50/System.Reflection.Primitives.xml",
        "ref/netcore50/de/System.Reflection.Primitives.xml",
        "ref/netcore50/es/System.Reflection.Primitives.xml",
        "ref/netcore50/fr/System.Reflection.Primitives.xml",
        "ref/netcore50/it/System.Reflection.Primitives.xml",
        "ref/netcore50/ja/System.Reflection.Primitives.xml",
        "ref/netcore50/ko/System.Reflection.Primitives.xml",
        "ref/netcore50/ru/System.Reflection.Primitives.xml",
        "ref/netcore50/zh-hans/System.Reflection.Primitives.xml",
        "ref/netcore50/zh-hant/System.Reflection.Primitives.xml",
        "ref/netstandard1.0/System.Reflection.Primitives.dll",
        "ref/netstandard1.0/System.Reflection.Primitives.xml",
        "ref/netstandard1.0/de/System.Reflection.Primitives.xml",
        "ref/netstandard1.0/es/System.Reflection.Primitives.xml",
        "ref/netstandard1.0/fr/System.Reflection.Primitives.xml",
        "ref/netstandard1.0/it/System.Reflection.Primitives.xml",
        "ref/netstandard1.0/ja/System.Reflection.Primitives.xml",
        "ref/netstandard1.0/ko/System.Reflection.Primitives.xml",
        "ref/netstandard1.0/ru/System.Reflection.Primitives.xml",
        "ref/netstandard1.0/zh-hans/System.Reflection.Primitives.xml",
        "ref/netstandard1.0/zh-hant/System.Reflection.Primitives.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.reflection.primitives.4.3.0.nupkg.sha512",
        "system.reflection.primitives.nuspec"
      ]
    },
    "System.Reflection.TypeExtensions/4.7.0": {
      "sha512": "VybpaOQQhqE6siHppMktjfGBw1GCwvCqiufqmP8F1nj7fTUNtW35LOEt3UZTEsECfo+ELAl/9o9nJx3U91i7vA==",
      "type": "package",
      "path": "system.reflection.typeextensions/4.7.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net46/System.Reflection.TypeExtensions.dll",
        "lib/net461/System.Reflection.TypeExtensions.dll",
        "lib/net461/System.Reflection.TypeExtensions.xml",
        "lib/netcore50/System.Reflection.TypeExtensions.dll",
        "lib/netcoreapp1.0/System.Reflection.TypeExtensions.dll",
        "lib/netcoreapp2.0/_._",
        "lib/netstandard1.3/System.Reflection.TypeExtensions.dll",
        "lib/netstandard1.3/System.Reflection.TypeExtensions.xml",
        "lib/netstandard1.5/System.Reflection.TypeExtensions.dll",
        "lib/netstandard1.5/System.Reflection.TypeExtensions.xml",
        "lib/netstandard2.0/System.Reflection.TypeExtensions.dll",
        "lib/netstandard2.0/System.Reflection.TypeExtensions.xml",
        "lib/uap10.0.16299/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net46/System.Reflection.TypeExtensions.dll",
        "ref/net461/System.Reflection.TypeExtensions.dll",
        "ref/net461/System.Reflection.TypeExtensions.xml",
        "ref/net472/System.Reflection.TypeExtensions.dll",
        "ref/net472/System.Reflection.TypeExtensions.xml",
        "ref/netcoreapp2.0/_._",
        "ref/netstandard1.3/System.Reflection.TypeExtensions.dll",
        "ref/netstandard1.3/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.3/de/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.3/es/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.3/fr/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.3/it/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.3/ja/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.3/ko/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.3/ru/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.3/zh-hans/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.3/zh-hant/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.5/System.Reflection.TypeExtensions.dll",
        "ref/netstandard1.5/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.5/de/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.5/es/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.5/fr/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.5/it/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.5/ja/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.5/ko/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.5/ru/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.5/zh-hans/System.Reflection.TypeExtensions.xml",
        "ref/netstandard1.5/zh-hant/System.Reflection.TypeExtensions.xml",
        "ref/netstandard2.0/System.Reflection.TypeExtensions.dll",
        "ref/netstandard2.0/System.Reflection.TypeExtensions.xml",
        "ref/uap10.0.16299/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "runtimes/aot/lib/netcore50/System.Reflection.TypeExtensions.dll",
        "runtimes/aot/lib/uap10.0.16299/_._",
        "system.reflection.typeextensions.4.7.0.nupkg.sha512",
        "system.reflection.typeextensions.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.Resources.ResourceManager/4.3.0": {
      "sha512": "/zrcPkkWdZmI4F92gL/TPumP98AVDu/Wxr3CSJGQQ+XN6wbRZcyfSKVoPo17ilb3iOr0cCRqJInGwNMolqhS8A==",
      "type": "package",
      "path": "system.resources.resourcemanager/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/netcore50/System.Resources.ResourceManager.dll",
        "ref/netcore50/System.Resources.ResourceManager.xml",
        "ref/netcore50/de/System.Resources.ResourceManager.xml",
        "ref/netcore50/es/System.Resources.ResourceManager.xml",
        "ref/netcore50/fr/System.Resources.ResourceManager.xml",
        "ref/netcore50/it/System.Resources.ResourceManager.xml",
        "ref/netcore50/ja/System.Resources.ResourceManager.xml",
        "ref/netcore50/ko/System.Resources.ResourceManager.xml",
        "ref/netcore50/ru/System.Resources.ResourceManager.xml",
        "ref/netcore50/zh-hans/System.Resources.ResourceManager.xml",
        "ref/netcore50/zh-hant/System.Resources.ResourceManager.xml",
        "ref/netstandard1.0/System.Resources.ResourceManager.dll",
        "ref/netstandard1.0/System.Resources.ResourceManager.xml",
        "ref/netstandard1.0/de/System.Resources.ResourceManager.xml",
        "ref/netstandard1.0/es/System.Resources.ResourceManager.xml",
        "ref/netstandard1.0/fr/System.Resources.ResourceManager.xml",
        "ref/netstandard1.0/it/System.Resources.ResourceManager.xml",
        "ref/netstandard1.0/ja/System.Resources.ResourceManager.xml",
        "ref/netstandard1.0/ko/System.Resources.ResourceManager.xml",
        "ref/netstandard1.0/ru/System.Resources.ResourceManager.xml",
        "ref/netstandard1.0/zh-hans/System.Resources.ResourceManager.xml",
        "ref/netstandard1.0/zh-hant/System.Resources.ResourceManager.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.resources.resourcemanager.4.3.0.nupkg.sha512",
        "system.resources.resourcemanager.nuspec"
      ]
    },
    "System.Runtime/4.3.0": {
      "sha512": "JufQi0vPQ0xGnAczR13AUFglDyVYt4Kqnz1AZaiKZ5+GICq0/1MH/mO/eAJHt/mHW1zjKBJd7kV26SrxddAhiw==",
      "type": "package",
      "path": "system.runtime/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/net462/System.Runtime.dll",
        "lib/portable-net45+win8+wp80+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/net462/System.Runtime.dll",
        "ref/netcore50/System.Runtime.dll",
        "ref/netcore50/System.Runtime.xml",
        "ref/netcore50/de/System.Runtime.xml",
        "ref/netcore50/es/System.Runtime.xml",
        "ref/netcore50/fr/System.Runtime.xml",
        "ref/netcore50/it/System.Runtime.xml",
        "ref/netcore50/ja/System.Runtime.xml",
        "ref/netcore50/ko/System.Runtime.xml",
        "ref/netcore50/ru/System.Runtime.xml",
        "ref/netcore50/zh-hans/System.Runtime.xml",
        "ref/netcore50/zh-hant/System.Runtime.xml",
        "ref/netstandard1.0/System.Runtime.dll",
        "ref/netstandard1.0/System.Runtime.xml",
        "ref/netstandard1.0/de/System.Runtime.xml",
        "ref/netstandard1.0/es/System.Runtime.xml",
        "ref/netstandard1.0/fr/System.Runtime.xml",
        "ref/netstandard1.0/it/System.Runtime.xml",
        "ref/netstandard1.0/ja/System.Runtime.xml",
        "ref/netstandard1.0/ko/System.Runtime.xml",
        "ref/netstandard1.0/ru/System.Runtime.xml",
        "ref/netstandard1.0/zh-hans/System.Runtime.xml",
        "ref/netstandard1.0/zh-hant/System.Runtime.xml",
        "ref/netstandard1.2/System.Runtime.dll",
        "ref/netstandard1.2/System.Runtime.xml",
        "ref/netstandard1.2/de/System.Runtime.xml",
        "ref/netstandard1.2/es/System.Runtime.xml",
        "ref/netstandard1.2/fr/System.Runtime.xml",
        "ref/netstandard1.2/it/System.Runtime.xml",
        "ref/netstandard1.2/ja/System.Runtime.xml",
        "ref/netstandard1.2/ko/System.Runtime.xml",
        "ref/netstandard1.2/ru/System.Runtime.xml",
        "ref/netstandard1.2/zh-hans/System.Runtime.xml",
        "ref/netstandard1.2/zh-hant/System.Runtime.xml",
        "ref/netstandard1.3/System.Runtime.dll",
        "ref/netstandard1.3/System.Runtime.xml",
        "ref/netstandard1.3/de/System.Runtime.xml",
        "ref/netstandard1.3/es/System.Runtime.xml",
        "ref/netstandard1.3/fr/System.Runtime.xml",
        "ref/netstandard1.3/it/System.Runtime.xml",
        "ref/netstandard1.3/ja/System.Runtime.xml",
        "ref/netstandard1.3/ko/System.Runtime.xml",
        "ref/netstandard1.3/ru/System.Runtime.xml",
        "ref/netstandard1.3/zh-hans/System.Runtime.xml",
        "ref/netstandard1.3/zh-hant/System.Runtime.xml",
        "ref/netstandard1.5/System.Runtime.dll",
        "ref/netstandard1.5/System.Runtime.xml",
        "ref/netstandard1.5/de/System.Runtime.xml",
        "ref/netstandard1.5/es/System.Runtime.xml",
        "ref/netstandard1.5/fr/System.Runtime.xml",
        "ref/netstandard1.5/it/System.Runtime.xml",
        "ref/netstandard1.5/ja/System.Runtime.xml",
        "ref/netstandard1.5/ko/System.Runtime.xml",
        "ref/netstandard1.5/ru/System.Runtime.xml",
        "ref/netstandard1.5/zh-hans/System.Runtime.xml",
        "ref/netstandard1.5/zh-hant/System.Runtime.xml",
        "ref/portable-net45+win8+wp80+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.runtime.4.3.0.nupkg.sha512",
        "system.runtime.nuspec"
      ]
    },
    "System.Runtime.CompilerServices.Unsafe/4.6.0": {
      "sha512": "HxozeSlipUK7dAroTYwIcGwKDeOVpQnJlpVaOkBz7CM4TsE5b/tKlQBZecTjh6FzcSbxndYaxxpsBMz+wMJeyw==",
      "type": "package",
      "path": "system.runtime.compilerservices.unsafe/4.6.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/netcoreapp2.0/System.Runtime.CompilerServices.Unsafe.dll",
        "lib/netcoreapp2.0/System.Runtime.CompilerServices.Unsafe.xml",
        "lib/netstandard1.0/System.Runtime.CompilerServices.Unsafe.dll",
        "lib/netstandard1.0/System.Runtime.CompilerServices.Unsafe.xml",
        "lib/netstandard2.0/System.Runtime.CompilerServices.Unsafe.dll",
        "lib/netstandard2.0/System.Runtime.CompilerServices.Unsafe.xml",
        "ref/netstandard1.0/System.Runtime.CompilerServices.Unsafe.dll",
        "ref/netstandard1.0/System.Runtime.CompilerServices.Unsafe.xml",
        "ref/netstandard2.0/System.Runtime.CompilerServices.Unsafe.dll",
        "ref/netstandard2.0/System.Runtime.CompilerServices.Unsafe.xml",
        "system.runtime.compilerservices.unsafe.4.6.0.nupkg.sha512",
        "system.runtime.compilerservices.unsafe.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.Runtime.Extensions/4.3.0": {
      "sha512": "guW0uK0fn5fcJJ1tJVXYd7/1h5F+pea1r7FLSOz/f8vPEqbR2ZAknuRDvTQ8PzAilDveOxNjSfr0CHfIQfFk8g==",
      "type": "package",
      "path": "system.runtime.extensions/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/net462/System.Runtime.Extensions.dll",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/net462/System.Runtime.Extensions.dll",
        "ref/netcore50/System.Runtime.Extensions.dll",
        "ref/netcore50/System.Runtime.Extensions.xml",
        "ref/netcore50/de/System.Runtime.Extensions.xml",
        "ref/netcore50/es/System.Runtime.Extensions.xml",
        "ref/netcore50/fr/System.Runtime.Extensions.xml",
        "ref/netcore50/it/System.Runtime.Extensions.xml",
        "ref/netcore50/ja/System.Runtime.Extensions.xml",
        "ref/netcore50/ko/System.Runtime.Extensions.xml",
        "ref/netcore50/ru/System.Runtime.Extensions.xml",
        "ref/netcore50/zh-hans/System.Runtime.Extensions.xml",
        "ref/netcore50/zh-hant/System.Runtime.Extensions.xml",
        "ref/netstandard1.0/System.Runtime.Extensions.dll",
        "ref/netstandard1.0/System.Runtime.Extensions.xml",
        "ref/netstandard1.0/de/System.Runtime.Extensions.xml",
        "ref/netstandard1.0/es/System.Runtime.Extensions.xml",
        "ref/netstandard1.0/fr/System.Runtime.Extensions.xml",
        "ref/netstandard1.0/it/System.Runtime.Extensions.xml",
        "ref/netstandard1.0/ja/System.Runtime.Extensions.xml",
        "ref/netstandard1.0/ko/System.Runtime.Extensions.xml",
        "ref/netstandard1.0/ru/System.Runtime.Extensions.xml",
        "ref/netstandard1.0/zh-hans/System.Runtime.Extensions.xml",
        "ref/netstandard1.0/zh-hant/System.Runtime.Extensions.xml",
        "ref/netstandard1.3/System.Runtime.Extensions.dll",
        "ref/netstandard1.3/System.Runtime.Extensions.xml",
        "ref/netstandard1.3/de/System.Runtime.Extensions.xml",
        "ref/netstandard1.3/es/System.Runtime.Extensions.xml",
        "ref/netstandard1.3/fr/System.Runtime.Extensions.xml",
        "ref/netstandard1.3/it/System.Runtime.Extensions.xml",
        "ref/netstandard1.3/ja/System.Runtime.Extensions.xml",
        "ref/netstandard1.3/ko/System.Runtime.Extensions.xml",
        "ref/netstandard1.3/ru/System.Runtime.Extensions.xml",
        "ref/netstandard1.3/zh-hans/System.Runtime.Extensions.xml",
        "ref/netstandard1.3/zh-hant/System.Runtime.Extensions.xml",
        "ref/netstandard1.5/System.Runtime.Extensions.dll",
        "ref/netstandard1.5/System.Runtime.Extensions.xml",
        "ref/netstandard1.5/de/System.Runtime.Extensions.xml",
        "ref/netstandard1.5/es/System.Runtime.Extensions.xml",
        "ref/netstandard1.5/fr/System.Runtime.Extensions.xml",
        "ref/netstandard1.5/it/System.Runtime.Extensions.xml",
        "ref/netstandard1.5/ja/System.Runtime.Extensions.xml",
        "ref/netstandard1.5/ko/System.Runtime.Extensions.xml",
        "ref/netstandard1.5/ru/System.Runtime.Extensions.xml",
        "ref/netstandard1.5/zh-hans/System.Runtime.Extensions.xml",
        "ref/netstandard1.5/zh-hant/System.Runtime.Extensions.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.runtime.extensions.4.3.0.nupkg.sha512",
        "system.runtime.extensions.nuspec"
      ]
    },
    "System.Runtime.Handles/4.3.0": {
      "sha512": "OKiSUN7DmTWeYb3l51A7EYaeNMnvxwE249YtZz7yooT4gOZhmTjIn48KgSsw2k2lYdLgTKNJw/ZIfSElwDRVgg==",
      "type": "package",
      "path": "system.runtime.handles/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net46/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net46/_._",
        "ref/netstandard1.3/System.Runtime.Handles.dll",
        "ref/netstandard1.3/System.Runtime.Handles.xml",
        "ref/netstandard1.3/de/System.Runtime.Handles.xml",
        "ref/netstandard1.3/es/System.Runtime.Handles.xml",
        "ref/netstandard1.3/fr/System.Runtime.Handles.xml",
        "ref/netstandard1.3/it/System.Runtime.Handles.xml",
        "ref/netstandard1.3/ja/System.Runtime.Handles.xml",
        "ref/netstandard1.3/ko/System.Runtime.Handles.xml",
        "ref/netstandard1.3/ru/System.Runtime.Handles.xml",
        "ref/netstandard1.3/zh-hans/System.Runtime.Handles.xml",
        "ref/netstandard1.3/zh-hant/System.Runtime.Handles.xml",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.runtime.handles.4.3.0.nupkg.sha512",
        "system.runtime.handles.nuspec"
      ]
    },
    "System.Runtime.InteropServices/4.3.0": {
      "sha512": "uv1ynXqiMK8mp1GM3jDqPCFN66eJ5w5XNomaK2XD+TuCroNTLFGeZ+WCmBMcBDyTFKou3P6cR6J/QsaqDp7fGQ==",
      "type": "package",
      "path": "system.runtime.interopservices/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/net462/System.Runtime.InteropServices.dll",
        "lib/net463/System.Runtime.InteropServices.dll",
        "lib/portable-net45+win8+wpa81/_._",
        "lib/win8/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/net462/System.Runtime.InteropServices.dll",
        "ref/net463/System.Runtime.InteropServices.dll",
        "ref/netcore50/System.Runtime.InteropServices.dll",
        "ref/netcore50/System.Runtime.InteropServices.xml",
        "ref/netcore50/de/System.Runtime.InteropServices.xml",
        "ref/netcore50/es/System.Runtime.InteropServices.xml",
        "ref/netcore50/fr/System.Runtime.InteropServices.xml",
        "ref/netcore50/it/System.Runtime.InteropServices.xml",
        "ref/netcore50/ja/System.Runtime.InteropServices.xml",
        "ref/netcore50/ko/System.Runtime.InteropServices.xml",
        "ref/netcore50/ru/System.Runtime.InteropServices.xml",
        "ref/netcore50/zh-hans/System.Runtime.InteropServices.xml",
        "ref/netcore50/zh-hant/System.Runtime.InteropServices.xml",
        "ref/netcoreapp1.1/System.Runtime.InteropServices.dll",
        "ref/netstandard1.1/System.Runtime.InteropServices.dll",
        "ref/netstandard1.1/System.Runtime.InteropServices.xml",
        "ref/netstandard1.1/de/System.Runtime.InteropServices.xml",
        "ref/netstandard1.1/es/System.Runtime.InteropServices.xml",
        "ref/netstandard1.1/fr/System.Runtime.InteropServices.xml",
        "ref/netstandard1.1/it/System.Runtime.InteropServices.xml",
        "ref/netstandard1.1/ja/System.Runtime.InteropServices.xml",
        "ref/netstandard1.1/ko/System.Runtime.InteropServices.xml",
        "ref/netstandard1.1/ru/System.Runtime.InteropServices.xml",
        "ref/netstandard1.1/zh-hans/System.Runtime.InteropServices.xml",
        "ref/netstandard1.1/zh-hant/System.Runtime.InteropServices.xml",
        "ref/netstandard1.2/System.Runtime.InteropServices.dll",
        "ref/netstandard1.2/System.Runtime.InteropServices.xml",
        "ref/netstandard1.2/de/System.Runtime.InteropServices.xml",
        "ref/netstandard1.2/es/System.Runtime.InteropServices.xml",
        "ref/netstandard1.2/fr/System.Runtime.InteropServices.xml",
        "ref/netstandard1.2/it/System.Runtime.InteropServices.xml",
        "ref/netstandard1.2/ja/System.Runtime.InteropServices.xml",
        "ref/netstandard1.2/ko/System.Runtime.InteropServices.xml",
        "ref/netstandard1.2/ru/System.Runtime.InteropServices.xml",
        "ref/netstandard1.2/zh-hans/System.Runtime.InteropServices.xml",
        "ref/netstandard1.2/zh-hant/System.Runtime.InteropServices.xml",
        "ref/netstandard1.3/System.Runtime.InteropServices.dll",
        "ref/netstandard1.3/System.Runtime.InteropServices.xml",
        "ref/netstandard1.3/de/System.Runtime.InteropServices.xml",
        "ref/netstandard1.3/es/System.Runtime.InteropServices.xml",
        "ref/netstandard1.3/fr/System.Runtime.InteropServices.xml",
        "ref/netstandard1.3/it/System.Runtime.InteropServices.xml",
        "ref/netstandard1.3/ja/System.Runtime.InteropServices.xml",
        "ref/netstandard1.3/ko/System.Runtime.InteropServices.xml",
        "ref/netstandard1.3/ru/System.Runtime.InteropServices.xml",
        "ref/netstandard1.3/zh-hans/System.Runtime.InteropServices.xml",
        "ref/netstandard1.3/zh-hant/System.Runtime.InteropServices.xml",
        "ref/netstandard1.5/System.Runtime.InteropServices.dll",
        "ref/netstandard1.5/System.Runtime.InteropServices.xml",
        "ref/netstandard1.5/de/System.Runtime.InteropServices.xml",
        "ref/netstandard1.5/es/System.Runtime.InteropServices.xml",
        "ref/netstandard1.5/fr/System.Runtime.InteropServices.xml",
        "ref/netstandard1.5/it/System.Runtime.InteropServices.xml",
        "ref/netstandard1.5/ja/System.Runtime.InteropServices.xml",
        "ref/netstandard1.5/ko/System.Runtime.InteropServices.xml",
        "ref/netstandard1.5/ru/System.Runtime.InteropServices.xml",
        "ref/netstandard1.5/zh-hans/System.Runtime.InteropServices.xml",
        "ref/netstandard1.5/zh-hant/System.Runtime.InteropServices.xml",
        "ref/portable-net45+win8+wpa81/_._",
        "ref/win8/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.runtime.interopservices.4.3.0.nupkg.sha512",
        "system.runtime.interopservices.nuspec"
      ]
    },
    "System.Runtime.InteropServices.RuntimeInformation/4.0.0": {
      "sha512": "hWPhJxc453RCa8Z29O91EmfGeZIHX1ZH2A8L6lYQVSaKzku2DfArSfMEb1/MYYzPQRJZeu0c9dmYeJKxW5Fgng==",
      "type": "package",
      "path": "system.runtime.interopservices.runtimeinformation/4.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/System.Runtime.InteropServices.RuntimeInformation.dll",
        "lib/win8/System.Runtime.InteropServices.RuntimeInformation.dll",
        "lib/wpa81/System.Runtime.InteropServices.RuntimeInformation.dll",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/netstandard1.1/System.Runtime.InteropServices.RuntimeInformation.dll",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "runtimes/aot/lib/netcore50/System.Runtime.InteropServices.RuntimeInformation.dll",
        "runtimes/unix/lib/netstandard1.1/System.Runtime.InteropServices.RuntimeInformation.dll",
        "runtimes/win/lib/net45/System.Runtime.InteropServices.RuntimeInformation.dll",
        "runtimes/win/lib/netcore50/System.Runtime.InteropServices.RuntimeInformation.dll",
        "runtimes/win/lib/netstandard1.1/System.Runtime.InteropServices.RuntimeInformation.dll",
        "system.runtime.interopservices.runtimeinformation.4.0.0.nupkg.sha512",
        "system.runtime.interopservices.runtimeinformation.nuspec"
      ]
    },
    "System.Security.AccessControl/5.0.0": {
      "sha512": "dagJ1mHZO3Ani8GH0PHpPEe/oYO+rVdbQjvjJkBRNQkX4t0r1iaeGn8+/ybkSLEan3/slM0t59SVdHzuHf2jmw==",
      "type": "package",
      "path": "system.security.accesscontrol/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net46/System.Security.AccessControl.dll",
        "lib/net461/System.Security.AccessControl.dll",
        "lib/net461/System.Security.AccessControl.xml",
        "lib/netstandard1.3/System.Security.AccessControl.dll",
        "lib/netstandard2.0/System.Security.AccessControl.dll",
        "lib/netstandard2.0/System.Security.AccessControl.xml",
        "lib/uap10.0.16299/_._",
        "ref/net46/System.Security.AccessControl.dll",
        "ref/net461/System.Security.AccessControl.dll",
        "ref/net461/System.Security.AccessControl.xml",
        "ref/netstandard1.3/System.Security.AccessControl.dll",
        "ref/netstandard1.3/System.Security.AccessControl.xml",
        "ref/netstandard1.3/de/System.Security.AccessControl.xml",
        "ref/netstandard1.3/es/System.Security.AccessControl.xml",
        "ref/netstandard1.3/fr/System.Security.AccessControl.xml",
        "ref/netstandard1.3/it/System.Security.AccessControl.xml",
        "ref/netstandard1.3/ja/System.Security.AccessControl.xml",
        "ref/netstandard1.3/ko/System.Security.AccessControl.xml",
        "ref/netstandard1.3/ru/System.Security.AccessControl.xml",
        "ref/netstandard1.3/zh-hans/System.Security.AccessControl.xml",
        "ref/netstandard1.3/zh-hant/System.Security.AccessControl.xml",
        "ref/netstandard2.0/System.Security.AccessControl.dll",
        "ref/netstandard2.0/System.Security.AccessControl.xml",
        "ref/uap10.0.16299/_._",
        "runtimes/win/lib/net46/System.Security.AccessControl.dll",
        "runtimes/win/lib/net461/System.Security.AccessControl.dll",
        "runtimes/win/lib/net461/System.Security.AccessControl.xml",
        "runtimes/win/lib/netcoreapp2.0/System.Security.AccessControl.dll",
        "runtimes/win/lib/netcoreapp2.0/System.Security.AccessControl.xml",
        "runtimes/win/lib/netstandard1.3/System.Security.AccessControl.dll",
        "runtimes/win/lib/uap10.0.16299/_._",
        "system.security.accesscontrol.5.0.0.nupkg.sha512",
        "system.security.accesscontrol.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.Security.Cryptography.ProtectedData/5.0.0": {
      "sha512": "HGxMSAFAPLNoxBvSfW08vHde0F9uh7BjASwu6JF9JnXuEPhCY3YUqURn0+bQV/4UWeaqymmrHWV+Aw9riQCtCA==",
      "type": "package",
      "path": "system.security.cryptography.protecteddata/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net46/System.Security.Cryptography.ProtectedData.dll",
        "lib/net461/System.Security.Cryptography.ProtectedData.dll",
        "lib/net461/System.Security.Cryptography.ProtectedData.xml",
        "lib/netstandard1.3/System.Security.Cryptography.ProtectedData.dll",
        "lib/netstandard2.0/System.Security.Cryptography.ProtectedData.dll",
        "lib/netstandard2.0/System.Security.Cryptography.ProtectedData.xml",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net46/System.Security.Cryptography.ProtectedData.dll",
        "ref/net461/System.Security.Cryptography.ProtectedData.dll",
        "ref/net461/System.Security.Cryptography.ProtectedData.xml",
        "ref/netstandard1.3/System.Security.Cryptography.ProtectedData.dll",
        "ref/netstandard2.0/System.Security.Cryptography.ProtectedData.dll",
        "ref/netstandard2.0/System.Security.Cryptography.ProtectedData.xml",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "runtimes/win/lib/net46/System.Security.Cryptography.ProtectedData.dll",
        "runtimes/win/lib/net461/System.Security.Cryptography.ProtectedData.dll",
        "runtimes/win/lib/net461/System.Security.Cryptography.ProtectedData.xml",
        "runtimes/win/lib/netstandard1.3/System.Security.Cryptography.ProtectedData.dll",
        "runtimes/win/lib/netstandard2.0/System.Security.Cryptography.ProtectedData.dll",
        "runtimes/win/lib/netstandard2.0/System.Security.Cryptography.ProtectedData.xml",
        "system.security.cryptography.protecteddata.5.0.0.nupkg.sha512",
        "system.security.cryptography.protecteddata.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.Security.Permissions/5.0.0": {
      "sha512": "uE8juAhEkp7KDBCdjDIE3H9R1HJuEHqeqX8nLX9gmYKWwsqk3T5qZlPx8qle5DPKimC/Fy3AFTdV7HamgCh9qQ==",
      "type": "package",
      "path": "system.security.permissions/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net461/System.Security.Permissions.dll",
        "lib/net461/System.Security.Permissions.xml",
        "lib/net5.0/System.Security.Permissions.dll",
        "lib/net5.0/System.Security.Permissions.xml",
        "lib/netcoreapp3.0/System.Security.Permissions.dll",
        "lib/netcoreapp3.0/System.Security.Permissions.xml",
        "lib/netstandard2.0/System.Security.Permissions.dll",
        "lib/netstandard2.0/System.Security.Permissions.xml",
        "ref/net461/System.Security.Permissions.dll",
        "ref/net461/System.Security.Permissions.xml",
        "ref/net5.0/System.Security.Permissions.dll",
        "ref/net5.0/System.Security.Permissions.xml",
        "ref/netcoreapp3.0/System.Security.Permissions.dll",
        "ref/netcoreapp3.0/System.Security.Permissions.xml",
        "ref/netstandard2.0/System.Security.Permissions.dll",
        "ref/netstandard2.0/System.Security.Permissions.xml",
        "system.security.permissions.5.0.0.nupkg.sha512",
        "system.security.permissions.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.Security.Principal.Windows/5.0.0": {
      "sha512": "t0MGLukB5WAVU9bO3MGzvlGnyJPgUlcwerXn1kzBRjwLKixT96XV0Uza41W49gVd8zEMFu9vQEFlv0IOrytICA==",
      "type": "package",
      "path": "system.security.principal.windows/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/net46/System.Security.Principal.Windows.dll",
        "lib/net461/System.Security.Principal.Windows.dll",
        "lib/net461/System.Security.Principal.Windows.xml",
        "lib/netstandard1.3/System.Security.Principal.Windows.dll",
        "lib/netstandard2.0/System.Security.Principal.Windows.dll",
        "lib/netstandard2.0/System.Security.Principal.Windows.xml",
        "lib/uap10.0.16299/_._",
        "ref/net46/System.Security.Principal.Windows.dll",
        "ref/net461/System.Security.Principal.Windows.dll",
        "ref/net461/System.Security.Principal.Windows.xml",
        "ref/netcoreapp3.0/System.Security.Principal.Windows.dll",
        "ref/netcoreapp3.0/System.Security.Principal.Windows.xml",
        "ref/netstandard1.3/System.Security.Principal.Windows.dll",
        "ref/netstandard1.3/System.Security.Principal.Windows.xml",
        "ref/netstandard1.3/de/System.Security.Principal.Windows.xml",
        "ref/netstandard1.3/es/System.Security.Principal.Windows.xml",
        "ref/netstandard1.3/fr/System.Security.Principal.Windows.xml",
        "ref/netstandard1.3/it/System.Security.Principal.Windows.xml",
        "ref/netstandard1.3/ja/System.Security.Principal.Windows.xml",
        "ref/netstandard1.3/ko/System.Security.Principal.Windows.xml",
        "ref/netstandard1.3/ru/System.Security.Principal.Windows.xml",
        "ref/netstandard1.3/zh-hans/System.Security.Principal.Windows.xml",
        "ref/netstandard1.3/zh-hant/System.Security.Principal.Windows.xml",
        "ref/netstandard2.0/System.Security.Principal.Windows.dll",
        "ref/netstandard2.0/System.Security.Principal.Windows.xml",
        "ref/uap10.0.16299/_._",
        "runtimes/unix/lib/netcoreapp2.0/System.Security.Principal.Windows.dll",
        "runtimes/unix/lib/netcoreapp2.0/System.Security.Principal.Windows.xml",
        "runtimes/unix/lib/netcoreapp2.1/System.Security.Principal.Windows.dll",
        "runtimes/unix/lib/netcoreapp2.1/System.Security.Principal.Windows.xml",
        "runtimes/win/lib/net46/System.Security.Principal.Windows.dll",
        "runtimes/win/lib/net461/System.Security.Principal.Windows.dll",
        "runtimes/win/lib/net461/System.Security.Principal.Windows.xml",
        "runtimes/win/lib/netcoreapp2.0/System.Security.Principal.Windows.dll",
        "runtimes/win/lib/netcoreapp2.0/System.Security.Principal.Windows.xml",
        "runtimes/win/lib/netcoreapp2.1/System.Security.Principal.Windows.dll",
        "runtimes/win/lib/netcoreapp2.1/System.Security.Principal.Windows.xml",
        "runtimes/win/lib/netstandard1.3/System.Security.Principal.Windows.dll",
        "runtimes/win/lib/uap10.0.16299/_._",
        "system.security.principal.windows.5.0.0.nupkg.sha512",
        "system.security.principal.windows.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.Text.Encoding/4.3.0": {
      "sha512": "BiIg+KWaSDOITze6jGQynxg64naAPtqGHBwDrLaCtixsa5bKiR8dpPOHA7ge3C0JJQizJE+sfkz1wV+BAKAYZw==",
      "type": "package",
      "path": "system.text.encoding/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/netcore50/System.Text.Encoding.dll",
        "ref/netcore50/System.Text.Encoding.xml",
        "ref/netcore50/de/System.Text.Encoding.xml",
        "ref/netcore50/es/System.Text.Encoding.xml",
        "ref/netcore50/fr/System.Text.Encoding.xml",
        "ref/netcore50/it/System.Text.Encoding.xml",
        "ref/netcore50/ja/System.Text.Encoding.xml",
        "ref/netcore50/ko/System.Text.Encoding.xml",
        "ref/netcore50/ru/System.Text.Encoding.xml",
        "ref/netcore50/zh-hans/System.Text.Encoding.xml",
        "ref/netcore50/zh-hant/System.Text.Encoding.xml",
        "ref/netstandard1.0/System.Text.Encoding.dll",
        "ref/netstandard1.0/System.Text.Encoding.xml",
        "ref/netstandard1.0/de/System.Text.Encoding.xml",
        "ref/netstandard1.0/es/System.Text.Encoding.xml",
        "ref/netstandard1.0/fr/System.Text.Encoding.xml",
        "ref/netstandard1.0/it/System.Text.Encoding.xml",
        "ref/netstandard1.0/ja/System.Text.Encoding.xml",
        "ref/netstandard1.0/ko/System.Text.Encoding.xml",
        "ref/netstandard1.0/ru/System.Text.Encoding.xml",
        "ref/netstandard1.0/zh-hans/System.Text.Encoding.xml",
        "ref/netstandard1.0/zh-hant/System.Text.Encoding.xml",
        "ref/netstandard1.3/System.Text.Encoding.dll",
        "ref/netstandard1.3/System.Text.Encoding.xml",
        "ref/netstandard1.3/de/System.Text.Encoding.xml",
        "ref/netstandard1.3/es/System.Text.Encoding.xml",
        "ref/netstandard1.3/fr/System.Text.Encoding.xml",
        "ref/netstandard1.3/it/System.Text.Encoding.xml",
        "ref/netstandard1.3/ja/System.Text.Encoding.xml",
        "ref/netstandard1.3/ko/System.Text.Encoding.xml",
        "ref/netstandard1.3/ru/System.Text.Encoding.xml",
        "ref/netstandard1.3/zh-hans/System.Text.Encoding.xml",
        "ref/netstandard1.3/zh-hant/System.Text.Encoding.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.text.encoding.4.3.0.nupkg.sha512",
        "system.text.encoding.nuspec"
      ]
    },
    "System.Text.Encoding.Extensions/4.3.0": {
      "sha512": "YVMK0Bt/A43RmwizJoZ22ei2nmrhobgeiYwFzC4YAN+nue8RF6djXDMog0UCn+brerQoYVyaS+ghy9P/MUVcmw==",
      "type": "package",
      "path": "system.text.encoding.extensions/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/netcore50/System.Text.Encoding.Extensions.dll",
        "ref/netcore50/System.Text.Encoding.Extensions.xml",
        "ref/netcore50/de/System.Text.Encoding.Extensions.xml",
        "ref/netcore50/es/System.Text.Encoding.Extensions.xml",
        "ref/netcore50/fr/System.Text.Encoding.Extensions.xml",
        "ref/netcore50/it/System.Text.Encoding.Extensions.xml",
        "ref/netcore50/ja/System.Text.Encoding.Extensions.xml",
        "ref/netcore50/ko/System.Text.Encoding.Extensions.xml",
        "ref/netcore50/ru/System.Text.Encoding.Extensions.xml",
        "ref/netcore50/zh-hans/System.Text.Encoding.Extensions.xml",
        "ref/netcore50/zh-hant/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.0/System.Text.Encoding.Extensions.dll",
        "ref/netstandard1.0/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.0/de/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.0/es/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.0/fr/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.0/it/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.0/ja/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.0/ko/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.0/ru/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.0/zh-hans/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.0/zh-hant/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.3/System.Text.Encoding.Extensions.dll",
        "ref/netstandard1.3/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.3/de/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.3/es/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.3/fr/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.3/it/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.3/ja/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.3/ko/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.3/ru/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.3/zh-hans/System.Text.Encoding.Extensions.xml",
        "ref/netstandard1.3/zh-hant/System.Text.Encoding.Extensions.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.text.encoding.extensions.4.3.0.nupkg.sha512",
        "system.text.encoding.extensions.nuspec"
      ]
    },
    "System.Text.Encodings.Web/4.5.0": {
      "sha512": "Xg4G4Indi4dqP1iuAiMSwpiWS54ZghzR644OtsRCm/m/lBMG8dUBhLVN7hLm8NNrNTR+iGbshCPTwrvxZPlm4g==",
      "type": "package",
      "path": "system.text.encodings.web/4.5.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/netstandard1.0/System.Text.Encodings.Web.dll",
        "lib/netstandard1.0/System.Text.Encodings.Web.xml",
        "lib/netstandard2.0/System.Text.Encodings.Web.dll",
        "lib/netstandard2.0/System.Text.Encodings.Web.xml",
        "system.text.encodings.web.4.5.0.nupkg.sha512",
        "system.text.encodings.web.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.Text.RegularExpressions/4.3.0": {
      "sha512": "RpT2DA+L660cBt1FssIE9CAGpLFdFPuheB7pLpKpn6ZXNby7jDERe8Ua/Ne2xGiwLVG2JOqziiaVCGDon5sKFA==",
      "type": "package",
      "path": "system.text.regularexpressions/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/net463/System.Text.RegularExpressions.dll",
        "lib/netcore50/System.Text.RegularExpressions.dll",
        "lib/netstandard1.6/System.Text.RegularExpressions.dll",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/net463/System.Text.RegularExpressions.dll",
        "ref/netcore50/System.Text.RegularExpressions.dll",
        "ref/netcore50/System.Text.RegularExpressions.xml",
        "ref/netcore50/de/System.Text.RegularExpressions.xml",
        "ref/netcore50/es/System.Text.RegularExpressions.xml",
        "ref/netcore50/fr/System.Text.RegularExpressions.xml",
        "ref/netcore50/it/System.Text.RegularExpressions.xml",
        "ref/netcore50/ja/System.Text.RegularExpressions.xml",
        "ref/netcore50/ko/System.Text.RegularExpressions.xml",
        "ref/netcore50/ru/System.Text.RegularExpressions.xml",
        "ref/netcore50/zh-hans/System.Text.RegularExpressions.xml",
        "ref/netcore50/zh-hant/System.Text.RegularExpressions.xml",
        "ref/netcoreapp1.1/System.Text.RegularExpressions.dll",
        "ref/netstandard1.0/System.Text.RegularExpressions.dll",
        "ref/netstandard1.0/System.Text.RegularExpressions.xml",
        "ref/netstandard1.0/de/System.Text.RegularExpressions.xml",
        "ref/netstandard1.0/es/System.Text.RegularExpressions.xml",
        "ref/netstandard1.0/fr/System.Text.RegularExpressions.xml",
        "ref/netstandard1.0/it/System.Text.RegularExpressions.xml",
        "ref/netstandard1.0/ja/System.Text.RegularExpressions.xml",
        "ref/netstandard1.0/ko/System.Text.RegularExpressions.xml",
        "ref/netstandard1.0/ru/System.Text.RegularExpressions.xml",
        "ref/netstandard1.0/zh-hans/System.Text.RegularExpressions.xml",
        "ref/netstandard1.0/zh-hant/System.Text.RegularExpressions.xml",
        "ref/netstandard1.3/System.Text.RegularExpressions.dll",
        "ref/netstandard1.3/System.Text.RegularExpressions.xml",
        "ref/netstandard1.3/de/System.Text.RegularExpressions.xml",
        "ref/netstandard1.3/es/System.Text.RegularExpressions.xml",
        "ref/netstandard1.3/fr/System.Text.RegularExpressions.xml",
        "ref/netstandard1.3/it/System.Text.RegularExpressions.xml",
        "ref/netstandard1.3/ja/System.Text.RegularExpressions.xml",
        "ref/netstandard1.3/ko/System.Text.RegularExpressions.xml",
        "ref/netstandard1.3/ru/System.Text.RegularExpressions.xml",
        "ref/netstandard1.3/zh-hans/System.Text.RegularExpressions.xml",
        "ref/netstandard1.3/zh-hant/System.Text.RegularExpressions.xml",
        "ref/netstandard1.6/System.Text.RegularExpressions.dll",
        "ref/netstandard1.6/System.Text.RegularExpressions.xml",
        "ref/netstandard1.6/de/System.Text.RegularExpressions.xml",
        "ref/netstandard1.6/es/System.Text.RegularExpressions.xml",
        "ref/netstandard1.6/fr/System.Text.RegularExpressions.xml",
        "ref/netstandard1.6/it/System.Text.RegularExpressions.xml",
        "ref/netstandard1.6/ja/System.Text.RegularExpressions.xml",
        "ref/netstandard1.6/ko/System.Text.RegularExpressions.xml",
        "ref/netstandard1.6/ru/System.Text.RegularExpressions.xml",
        "ref/netstandard1.6/zh-hans/System.Text.RegularExpressions.xml",
        "ref/netstandard1.6/zh-hant/System.Text.RegularExpressions.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.text.regularexpressions.4.3.0.nupkg.sha512",
        "system.text.regularexpressions.nuspec"
      ]
    },
    "System.Threading/4.3.0": {
      "sha512": "VkUS0kOBcUf3Wwm0TSbrevDDZ6BlM+b/HRiapRFWjM5O0NS0LviG0glKmFK+hhPDd1XFeSdU1GmlLhb2CoVpIw==",
      "type": "package",
      "path": "system.threading/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/netcore50/System.Threading.dll",
        "lib/netstandard1.3/System.Threading.dll",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/netcore50/System.Threading.dll",
        "ref/netcore50/System.Threading.xml",
        "ref/netcore50/de/System.Threading.xml",
        "ref/netcore50/es/System.Threading.xml",
        "ref/netcore50/fr/System.Threading.xml",
        "ref/netcore50/it/System.Threading.xml",
        "ref/netcore50/ja/System.Threading.xml",
        "ref/netcore50/ko/System.Threading.xml",
        "ref/netcore50/ru/System.Threading.xml",
        "ref/netcore50/zh-hans/System.Threading.xml",
        "ref/netcore50/zh-hant/System.Threading.xml",
        "ref/netstandard1.0/System.Threading.dll",
        "ref/netstandard1.0/System.Threading.xml",
        "ref/netstandard1.0/de/System.Threading.xml",
        "ref/netstandard1.0/es/System.Threading.xml",
        "ref/netstandard1.0/fr/System.Threading.xml",
        "ref/netstandard1.0/it/System.Threading.xml",
        "ref/netstandard1.0/ja/System.Threading.xml",
        "ref/netstandard1.0/ko/System.Threading.xml",
        "ref/netstandard1.0/ru/System.Threading.xml",
        "ref/netstandard1.0/zh-hans/System.Threading.xml",
        "ref/netstandard1.0/zh-hant/System.Threading.xml",
        "ref/netstandard1.3/System.Threading.dll",
        "ref/netstandard1.3/System.Threading.xml",
        "ref/netstandard1.3/de/System.Threading.xml",
        "ref/netstandard1.3/es/System.Threading.xml",
        "ref/netstandard1.3/fr/System.Threading.xml",
        "ref/netstandard1.3/it/System.Threading.xml",
        "ref/netstandard1.3/ja/System.Threading.xml",
        "ref/netstandard1.3/ko/System.Threading.xml",
        "ref/netstandard1.3/ru/System.Threading.xml",
        "ref/netstandard1.3/zh-hans/System.Threading.xml",
        "ref/netstandard1.3/zh-hant/System.Threading.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "runtimes/aot/lib/netcore50/System.Threading.dll",
        "system.threading.4.3.0.nupkg.sha512",
        "system.threading.nuspec"
      ]
    },
    "System.Threading.Channels/4.5.0": {
      "sha512": "MEH06N0rIGmRT4LOKQ2BmUO0IxfvmIY/PaouSq+DFQku72OL8cxfw8W99uGpTCFf2vx2QHLRSh374iSM3asdTA==",
      "type": "package",
      "path": "system.threading.channels/4.5.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/netcoreapp2.1/System.Threading.Channels.dll",
        "lib/netcoreapp2.1/System.Threading.Channels.xml",
        "lib/netstandard1.3/System.Threading.Channels.dll",
        "lib/netstandard1.3/System.Threading.Channels.xml",
        "lib/netstandard2.0/System.Threading.Channels.dll",
        "lib/netstandard2.0/System.Threading.Channels.xml",
        "system.threading.channels.4.5.0.nupkg.sha512",
        "system.threading.channels.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.Threading.Tasks/4.3.0": {
      "sha512": "LbSxKEdOUhVe8BezB/9uOGGppt+nZf6e1VFyw6v3DN6lqitm0OSn2uXMOdtP0M3W4iMcqcivm2J6UgqiwwnXiA==",
      "type": "package",
      "path": "system.threading.tasks/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/netcore50/System.Threading.Tasks.dll",
        "ref/netcore50/System.Threading.Tasks.xml",
        "ref/netcore50/de/System.Threading.Tasks.xml",
        "ref/netcore50/es/System.Threading.Tasks.xml",
        "ref/netcore50/fr/System.Threading.Tasks.xml",
        "ref/netcore50/it/System.Threading.Tasks.xml",
        "ref/netcore50/ja/System.Threading.Tasks.xml",
        "ref/netcore50/ko/System.Threading.Tasks.xml",
        "ref/netcore50/ru/System.Threading.Tasks.xml",
        "ref/netcore50/zh-hans/System.Threading.Tasks.xml",
        "ref/netcore50/zh-hant/System.Threading.Tasks.xml",
        "ref/netstandard1.0/System.Threading.Tasks.dll",
        "ref/netstandard1.0/System.Threading.Tasks.xml",
        "ref/netstandard1.0/de/System.Threading.Tasks.xml",
        "ref/netstandard1.0/es/System.Threading.Tasks.xml",
        "ref/netstandard1.0/fr/System.Threading.Tasks.xml",
        "ref/netstandard1.0/it/System.Threading.Tasks.xml",
        "ref/netstandard1.0/ja/System.Threading.Tasks.xml",
        "ref/netstandard1.0/ko/System.Threading.Tasks.xml",
        "ref/netstandard1.0/ru/System.Threading.Tasks.xml",
        "ref/netstandard1.0/zh-hans/System.Threading.Tasks.xml",
        "ref/netstandard1.0/zh-hant/System.Threading.Tasks.xml",
        "ref/netstandard1.3/System.Threading.Tasks.dll",
        "ref/netstandard1.3/System.Threading.Tasks.xml",
        "ref/netstandard1.3/de/System.Threading.Tasks.xml",
        "ref/netstandard1.3/es/System.Threading.Tasks.xml",
        "ref/netstandard1.3/fr/System.Threading.Tasks.xml",
        "ref/netstandard1.3/it/System.Threading.Tasks.xml",
        "ref/netstandard1.3/ja/System.Threading.Tasks.xml",
        "ref/netstandard1.3/ko/System.Threading.Tasks.xml",
        "ref/netstandard1.3/ru/System.Threading.Tasks.xml",
        "ref/netstandard1.3/zh-hans/System.Threading.Tasks.xml",
        "ref/netstandard1.3/zh-hant/System.Threading.Tasks.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.threading.tasks.4.3.0.nupkg.sha512",
        "system.threading.tasks.nuspec"
      ]
    },
    "System.Threading.Tasks.Extensions/4.5.1": {
      "sha512": "WSKUTtLhPR8gllzIWO2x6l4lmAIfbyMAiTlyXAis4QBDonXK4b4S6F8zGARX4/P8wH3DH+sLdhamCiHn+fTU1A==",
      "type": "package",
      "path": "system.threading.tasks.extensions/4.5.1",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/netcoreapp2.1/_._",
        "lib/netstandard1.0/System.Threading.Tasks.Extensions.dll",
        "lib/netstandard1.0/System.Threading.Tasks.Extensions.xml",
        "lib/netstandard2.0/System.Threading.Tasks.Extensions.dll",
        "lib/netstandard2.0/System.Threading.Tasks.Extensions.xml",
        "lib/portable-net45+win8+wp8+wpa81/System.Threading.Tasks.Extensions.dll",
        "lib/portable-net45+win8+wp8+wpa81/System.Threading.Tasks.Extensions.xml",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/netcoreapp2.1/_._",
        "ref/netstandard1.0/System.Threading.Tasks.Extensions.dll",
        "ref/netstandard1.0/System.Threading.Tasks.Extensions.xml",
        "ref/netstandard2.0/System.Threading.Tasks.Extensions.dll",
        "ref/netstandard2.0/System.Threading.Tasks.Extensions.xml",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.threading.tasks.extensions.4.5.1.nupkg.sha512",
        "system.threading.tasks.extensions.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.Windows.Extensions/5.0.0": {
      "sha512": "c1ho9WU9ZxMZawML+ssPKZfdnrg/OjR3pe0m9v8230z3acqphwvPJqzAkH54xRYm5ntZHGG1EPP3sux9H3qSPg==",
      "type": "package",
      "path": "system.windows.extensions/5.0.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "Icon.png",
        "LICENSE.TXT",
        "THIRD-PARTY-NOTICES.TXT",
        "lib/netcoreapp3.0/System.Windows.Extensions.dll",
        "lib/netcoreapp3.0/System.Windows.Extensions.xml",
        "ref/netcoreapp3.0/System.Windows.Extensions.dll",
        "ref/netcoreapp3.0/System.Windows.Extensions.xml",
        "runtimes/win/lib/netcoreapp3.0/System.Windows.Extensions.dll",
        "runtimes/win/lib/netcoreapp3.0/System.Windows.Extensions.xml",
        "system.windows.extensions.5.0.0.nupkg.sha512",
        "system.windows.extensions.nuspec",
        "useSharedDesignerContext.txt",
        "version.txt"
      ]
    },
    "System.Xml.ReaderWriter/4.3.0": {
      "sha512": "GrprA+Z0RUXaR4N7/eW71j1rgMnEnEVlgii49GZyAjTH7uliMnrOU3HNFBr6fEDBCJCIdlVNq9hHbaDR621XBA==",
      "type": "package",
      "path": "system.xml.readerwriter/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net45/_._",
        "lib/net46/System.Xml.ReaderWriter.dll",
        "lib/netcore50/System.Xml.ReaderWriter.dll",
        "lib/netstandard1.3/System.Xml.ReaderWriter.dll",
        "lib/portable-net45+win8+wp8+wpa81/_._",
        "lib/win8/_._",
        "lib/wp80/_._",
        "lib/wpa81/_._",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net45/_._",
        "ref/net46/System.Xml.ReaderWriter.dll",
        "ref/netcore50/System.Xml.ReaderWriter.dll",
        "ref/netcore50/System.Xml.ReaderWriter.xml",
        "ref/netcore50/de/System.Xml.ReaderWriter.xml",
        "ref/netcore50/es/System.Xml.ReaderWriter.xml",
        "ref/netcore50/fr/System.Xml.ReaderWriter.xml",
        "ref/netcore50/it/System.Xml.ReaderWriter.xml",
        "ref/netcore50/ja/System.Xml.ReaderWriter.xml",
        "ref/netcore50/ko/System.Xml.ReaderWriter.xml",
        "ref/netcore50/ru/System.Xml.ReaderWriter.xml",
        "ref/netcore50/zh-hans/System.Xml.ReaderWriter.xml",
        "ref/netcore50/zh-hant/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.0/System.Xml.ReaderWriter.dll",
        "ref/netstandard1.0/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.0/de/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.0/es/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.0/fr/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.0/it/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.0/ja/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.0/ko/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.0/ru/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.0/zh-hans/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.0/zh-hant/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.3/System.Xml.ReaderWriter.dll",
        "ref/netstandard1.3/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.3/de/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.3/es/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.3/fr/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.3/it/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.3/ja/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.3/ko/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.3/ru/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.3/zh-hans/System.Xml.ReaderWriter.xml",
        "ref/netstandard1.3/zh-hant/System.Xml.ReaderWriter.xml",
        "ref/portable-net45+win8+wp8+wpa81/_._",
        "ref/win8/_._",
        "ref/wp80/_._",
        "ref/wpa81/_._",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.xml.readerwriter.4.3.0.nupkg.sha512",
        "system.xml.readerwriter.nuspec"
      ]
    },
    "System.Xml.XPath/4.3.0": {
      "sha512": "v1JQ5SETnQusqmS3RwStF7vwQ3L02imIzl++sewmt23VGygix04pEH+FCj1yWb+z4GDzKiljr1W7Wfvrx0YwgA==",
      "type": "package",
      "path": "system.xml.xpath/4.3.0",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "ThirdPartyNotices.txt",
        "dotnet_library_license.txt",
        "lib/MonoAndroid10/_._",
        "lib/MonoTouch10/_._",
        "lib/net46/System.Xml.XPath.dll",
        "lib/netstandard1.3/System.Xml.XPath.dll",
        "lib/xamarinios10/_._",
        "lib/xamarinmac20/_._",
        "lib/xamarintvos10/_._",
        "lib/xamarinwatchos10/_._",
        "ref/MonoAndroid10/_._",
        "ref/MonoTouch10/_._",
        "ref/net46/System.Xml.XPath.dll",
        "ref/netstandard1.3/System.Xml.XPath.dll",
        "ref/netstandard1.3/System.Xml.XPath.xml",
        "ref/netstandard1.3/de/System.Xml.XPath.xml",
        "ref/netstandard1.3/es/System.Xml.XPath.xml",
        "ref/netstandard1.3/fr/System.Xml.XPath.xml",
        "ref/netstandard1.3/it/System.Xml.XPath.xml",
        "ref/netstandard1.3/ja/System.Xml.XPath.xml",
        "ref/netstandard1.3/ko/System.Xml.XPath.xml",
        "ref/netstandard1.3/ru/System.Xml.XPath.xml",
        "ref/netstandard1.3/zh-hans/System.Xml.XPath.xml",
        "ref/netstandard1.3/zh-hant/System.Xml.XPath.xml",
        "ref/xamarinios10/_._",
        "ref/xamarinmac20/_._",
        "ref/xamarintvos10/_._",
        "ref/xamarinwatchos10/_._",
        "system.xml.xpath.4.3.0.nupkg.sha512",
        "system.xml.xpath.nuspec"
      ]
    },
    "Z.EntityFramework.Extensions.EFCore/5.2.12": {
      "sha512": "VOUAh55F3wCgXcl+zlRZULyoBRNT6QKY5rzOFLyLRC8NQ2wuKcpKf3rFM8+KnXVJ82yzLjrVJ7p3p0/UgTCO/A==",
      "type": "package",
      "path": "z.entityframework.extensions.efcore/5.2.12",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.1/Z.EntityFramework.Extensions.EFCore.dll",
        "lib/netstandard2.1/Z.EntityFramework.Extensions.EFCore.xml",
        "z.entityframework.extensions.efcore.5.2.12.nupkg.sha512",
        "z.entityframework.extensions.efcore.nuspec"
      ]
    },
    "Z.EntityFramework.Plus.EFCore/5.2.12": {
      "sha512": "FhrCNy5r0w0EkgpwF1pXlNrtxVtxiYlFwAE9Ge4JUPl/5vZVj/TjYoGUV9MkQCyOH9iRj3FuOPpkGqLGPhm1Qg==",
      "type": "package",
      "path": "z.entityframework.plus.efcore/5.2.12",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/netstandard2.1/Z.EntityFramework.Plus.EFCore.deps.json",
        "lib/netstandard2.1/Z.EntityFramework.Plus.EFCore.dll",
        "lib/netstandard2.1/Z.EntityFramework.Plus.EFCore.xml",
        "z.entityframework.plus.efcore.5.2.12.nupkg.sha512",
        "z.entityframework.plus.efcore.nuspec"
      ]
    },
    "Z.Expressions.Eval/4.0.54": {
      "sha512": "PSFHZVmSXNee//9T5Vdylo7T2cPBueit3dnjo9TeB9QKUdfgdH1XXiZMa/s8FMnWLM/dyMu5SachL4r0nl39RA==",
      "type": "package",
      "path": "z.expressions.eval/4.0.54",
      "files": [
        ".nupkg.metadata",
        ".signature.p7s",
        "lib/net40/Z.Expressions.Eval.dll",
        "lib/net40/Z.Expressions.Eval.xml",
        "lib/net45/Z.Expressions.Eval.dll",
        "lib/net45/Z.Expressions.Eval.xml",
        "lib/netstandard2.0/Z.Expressions.Eval.dll",
        "lib/netstandard2.0/Z.Expressions.Eval.xml",
        "lib/netstandard2.1/Z.Expressions.Eval.dll",
        "lib/netstandard2.1/Z.Expressions.Eval.xml",
        "z.expressions.eval.4.0.54.nupkg.sha512",
        "z.expressions.eval.nuspec"
      ]
    },
    "AllbertBackend.Application/1.0.0": {
      "type": "project",
      "path": "../../Core/AllbertBackend.Application/AllbertBackend.Application.csproj",
      "msbuildProject": "../../Core/AllbertBackend.Application/AllbertBackend.Application.csproj"
    },
    "AllbertBackend.Domain/1.0.0": {
      "type": "project",
      "path": "../../Core/AllbertBackend.Domain/AllbertBackend.Domain.csproj",
      "msbuildProject": "../../Core/AllbertBackend.Domain/AllbertBackend.Domain.csproj"
    }
  },
  "projectFileDependencyGroups": {
    "net5.0": [
      "AllbertBackend.Application >= 1.0.0",
      "AllbertBackend.Domain >= 1.0.0",
      "Microsoft.AspNetCore.SignalR >= 1.1.0",
      "Microsoft.EntityFrameworkCore >= 5.0.9",
      "Microsoft.EntityFrameworkCore.Tools >= 5.0.6",
      "Microsoft.Extensions.Configuration.Abstractions >= 5.0.0",
      "Microsoft.Extensions.Logging.Console >= 5.0.0",
      "Npgsql >= 5.0.5",
      "Npgsql.EntityFrameworkCore.PostgreSQL >= 5.0.6",
      "Z.EntityFramework.Extensions.EFCore >= 5.2.12",
      "Z.EntityFramework.Plus.EFCore >= 5.2.12"
    ]
  },
  "packageFolders": {
    "/Users/basicpreset/.nuget/packages/": {}
  },
  "project": {
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
