:: Generated by: https://openapi-generator.tech
::

@echo off

dotnet restore src\traveltimeplatform
dotnet build src\traveltimeplatform
echo Now, run the following to start the project: dotnet run -p src\traveltimeplatform\traveltimeplatform.csproj --launch-profile web.
echo.