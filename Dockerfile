# FROM microsoft/dotnet:1.0.0-preview2-sdk
FROM mcr.microsoft.com/dotnet/dotnet:1.0.0-preview2-sdk
COPY . /app
WORKDIR /app
RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]
# RUN ["dotnet", "tool", "install", "--global", "dotnet-ef"]
# RUN ["dotnet", "ef", "database", "update"]
EXPOSE 5000/tcp
ENTRYPOINT ["dotnet", "run", "--server.urls", "http://0.0.0.0:5000"]
