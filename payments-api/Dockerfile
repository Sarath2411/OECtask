FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /source

COPY *.csproj .
RUN dotnet restore

COPY . .
RUN dotnet publish -c release -o /app

FROM mcr.microsoft.com/dotnet/aspnet:7.0
EXPOSE 5039
WORKDIR /app
COPY --from=build /app .

ENTRYPOINT ["dotnet", "/app/payments-api.dll", "--urls=http://0.0.0.0:5039"]