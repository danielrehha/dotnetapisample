FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 5000

ARG SQLCONNECTION
ENV CONNECTIONSTRINGS__SQLCONNECTION=${SQLCONNECTION}
ENV ASPNETCORE_URLS=http://+:5000

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY *.sln ./
COPY src/API/AllbertBackend.API/AllbertBackend.API.csproj src/API/AllbertBackend.API/
COPY src/Core/AllbertBackend.Application/AllbertBackend.Application.csproj src/Core/AllbertBackend.Application/
COPY src/Core/AllbertBackend.Domain/AllbertBackend.Domain.csproj src/Core/AllbertBackend.Domain/
COPY src/Infrastructure/AllbertBackend.Infrastructure/AllbertBackend.Infrastructure.csproj src/Infrastructure/AllbertBackend.Infrastructure/
COPY src/Infrastructure/AllbertBackend.Persistence/AllbertBackend.Persistence.csproj src/Infrastructure/AllbertBackend.Persistence/
COPY tests/AllbertBackend.Infrastructure.UnitTests/AllbertBackend.Infrastructure.UnitTests.csproj tests/AllbertBackend.Infrastructure.UnitTests/
COPY tests/AllbertBackend.Persistence.UnitTests/AllbertBackend.Persistence.UnitTests.csproj tests/AllbertBackend.Persistence.UnitTests/
COPY tests/AllbertBackend.Application.UnitTests/AllbertBackend.Application.UnitTests.csproj tests/AllbertBackend.Application.UnitTests/
COPY tests/AllbertBackend.Domain.UnitTests/AllbertBackend.Domain.UnitTests.csproj tests/AllbertBackend.Domain.UnitTests/
COPY tests/AllbertBackend.API.IntegrationTests/AllbertBackend.API.IntegrationTests.csproj tests/AllbertBackend.API.IntegrationTests/

RUN dotnet restore
COPY . .
WORKDIR /src/src/API/AllbertBackend.API
RUN dotnet build -c Release -o /app

FROM build AS publish
RUN dotnet publish -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "AllbertBackend.API.dll"]
