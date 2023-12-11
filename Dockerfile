FROM mcr.microsoft.com/dotnet/sdk:6.0-jammy-arm32v7
COPY . ./src
WORKDIR /src
RUN dotnet build -o /app
RUN dotnet publish -o /publish
WORKDIR /app
EXPOSE 80
CMD ["./myWebApp"]

