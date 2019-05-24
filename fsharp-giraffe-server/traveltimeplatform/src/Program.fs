namespace traveltimeplatform

open System
open System.Net.Http
open System.Security.Claims
open System.Threading
open Microsoft.AspNetCore
open Microsoft.AspNetCore.Builder
open Microsoft.AspNetCore.Hosting
open Microsoft.AspNetCore.Http
open Microsoft.AspNetCore.Http.Features
open Microsoft.AspNetCore.Authentication
open Microsoft.AspNetCore.Authentication.Cookies
open Microsoft.Extensions.Configuration
open Microsoft.Extensions.Logging
open Microsoft.Extensions.DependencyInjection
open FSharp.Control.Tasks.V2.ContextInsensitive
open System.Diagnostics
open Giraffe.GiraffeViewEngine
open AspNet.Security.ApiKey.Providers

open DefaultApiHandlerParams
open Giraffe

module App =

  // ---------------------------------
  // Error handler
  // ---------------------------------

  let errorHandler (ex : Exception) (logger : ILogger) =
    logger.LogError(EventId(), ex, "An unhandled exception has occurred while executing the request.")
    clearResponse >=> setStatusCode 500 >=> text ex.Message

  // ---------------------------------
  // Web app
  // ---------------------------------

  let HttpGet = GET
  let HttpPost = POST
  let HttpPut = PUT
  let HttpDelete = DELETE

  let authFailure : HttpHandler = 
    setStatusCode 401 >=> text "You must be authenticated to access this resource."

  let webApp =
    choose (CustomHandlers.handlers @ [
      HttpGet >=> route "/v4/geocoding/reverse" >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=>  DefaultApiHandler.GeocodingReverseSearch;
      HttpGet >=> route "/v4/geocoding/search" >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=>  DefaultApiHandler.GeocodingSearch;
      HttpGet >=> route "/v4/map-info" >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=>  DefaultApiHandler.MapInfo;
      HttpPost >=> route "/v4/routes" >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=>  DefaultApiHandler.Routes;
      HttpPost >=> route "/v4/supported-locations" >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=>  DefaultApiHandler.SupportedLocations;
      HttpPost >=> route "/v4/time-filter" >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=>  DefaultApiHandler.TimeFilter;
      HttpPost >=> route "/v4/time-filter/fast" >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=>  DefaultApiHandler.TimeFilterFast;
      HttpPost >=> route "/v4/time-filter/postcode-districts" >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=>  DefaultApiHandler.TimeFilterPostcodeDistricts;
      HttpPost >=> route "/v4/time-filter/postcode-sectors" >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=>  DefaultApiHandler.TimeFilterPostcodeSectors;
      HttpPost >=> route "/v4/time-filter/postcodes" >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=>  DefaultApiHandler.TimeFilterPostcodes;
      HttpPost >=> route "/v4/time-map" >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=> challenge ApiKeyDefaults.AuthenticationScheme >=> requiresAuthentication authFailure >=>  DefaultApiHandler.TimeMap;
      RequestErrors.notFound (text "Not Found") 
    ])
  // ---------------------------------
  // Main
  // ---------------------------------

  let configureApp (app : IApplicationBuilder) =
    app.UseGiraffeErrorHandler(errorHandler)
      .UseStaticFiles()
      .UseAuthentication()
      .UseResponseCaching() |> ignore
    CustomHandlers.configureApp app |> ignore
    app.UseGiraffe webApp |> ignore
    

  let configureServices (services : IServiceCollection) =
    services
          .AddResponseCaching()
          .AddGiraffe()
          |> AuthSchemes.configureServices      
          |> CustomHandlers.configureServices services
          |> ignore
    services.AddDataProtection() |> ignore

  let configureLogging (loggerBuilder : ILoggingBuilder) =
    loggerBuilder.AddFilter(fun lvl -> lvl.Equals LogLevel.Error)
                  .AddConsole()
                  .AddDebug() |> ignore

  [<EntryPoint>]
  let main _ =
    let builder = WebHost.CreateDefaultBuilder()
                    .Configure(Action<IApplicationBuilder> configureApp)
                    .ConfigureServices(configureServices)
                    .ConfigureLogging(configureLogging)
                    |> CustomHandlers.configureWebHost
    builder.Build()
            .Run()
    0