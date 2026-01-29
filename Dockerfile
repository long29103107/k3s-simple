FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

COPY src/HelloK3s/*.csproj ./HelloK3s/
RUN dotnet restore HelloK3s/HelloK3s.csproj

COPY src/HelloK3s ./HelloK3s
RUN dotnet publish HelloK3s/HelloK3s.csproj -c Release -o /app/publish


FROM mcr.microsoft.com/dotnet/aspnet:10.0
WORKDIR /app
EXPOSE 8080
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "HelloK3s.dll"]