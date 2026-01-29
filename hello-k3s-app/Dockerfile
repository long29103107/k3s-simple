FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src


COPY HelloK3s/*.csproj ./HelloK3s/
RUN dotnet restore HelloK3s/HelloK3s.csproj


COPY . .
RUN dotnet publish HelloK3s/HelloK3s.csproj -c Release -o /app/publish


FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
EXPOSE 8080
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "HelloK3s.dll"]