# Stage 1: Build
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copy source code
COPY . .

# Build executable
RUN dotnet new console -n HelloApp -o out -f net8.0
RUN mv Program.cs out/Program.cs
WORKDIR /app/out
RUN dotnet build -c Release -o /app/out/build

# Stage 2: Run
FROM mcr.microsoft.com/dotnet/runtime:8.0
WORKDIR /app
COPY --from=build /app/out/build .
CMD ["dotnet", "HelloApp.dll"]
