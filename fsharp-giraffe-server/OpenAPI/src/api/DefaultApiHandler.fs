namespace OpenAPI

open System.Collections.Generic
open Giraffe
open Microsoft.AspNetCore.Http
open FSharp.Control.Tasks.V2.ContextInsensitive
open DefaultApiHandlerParams
open DefaultApiServiceInterface
open DefaultApiServiceImplementation
open OpenAPI.Model.RequestRoutes
open OpenAPI.Model.RequestSupportedLocations
open OpenAPI.Model.RequestTimeFilter
open OpenAPI.Model.RequestTimeFilterFast
open OpenAPI.Model.RequestTimeFilterPostcodeDistricts
open OpenAPI.Model.RequestTimeFilterPostcodeSectors
open OpenAPI.Model.RequestTimeFilterPostcodes
open OpenAPI.Model.RequestTimeMap
open OpenAPI.Model.ResponseError
open OpenAPI.Model.ResponseGeocoding
open OpenAPI.Model.ResponseMapInfo
open OpenAPI.Model.ResponseRoutes
open OpenAPI.Model.ResponseSupportedLocations
open OpenAPI.Model.ResponseTimeFilter
open OpenAPI.Model.ResponseTimeFilterFast
open OpenAPI.Model.ResponseTimeFilterPostcodeDistricts
open OpenAPI.Model.ResponseTimeFilterPostcodeSectors
open OpenAPI.Model.ResponseTimeFilterPostcodes
open OpenAPI.Model.ResponseTimeMap

module DefaultApiHandler = 

    /// <summary>
    /// 
    /// </summary>

    //#region GeocodingReverseSearch
    /// <summary>
    /// 
    /// </summary>

    let GeocodingReverseSearch  : HttpHandler = 
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let queryParams = ctx.TryBindQueryString<GeocodingReverseSearchQueryParams>()
          let serviceArgs = {  queryParams=queryParams;    } : GeocodingReverseSearchArgs
          let result = DefaultApiService.GeocodingReverseSearch ctx serviceArgs
          return! (match result with 
                      | GeocodingReverseSearchDefaultStatusCode resolved ->
                            setStatusCode 200 >=> json resolved.content 
                      | GeocodingReverseSearchStatusCode0 resolved ->
                            setStatusCode 0 >=> json resolved.content 
          ) next ctx
        }
    //#endregion

    //#region GeocodingSearch
    /// <summary>
    /// 
    /// </summary>

    let GeocodingSearch  : HttpHandler = 
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let queryParams = ctx.TryBindQueryString<GeocodingSearchQueryParams>()
          let serviceArgs = {  queryParams=queryParams;    } : GeocodingSearchArgs
          let result = DefaultApiService.GeocodingSearch ctx serviceArgs
          return! (match result with 
                      | GeocodingSearchDefaultStatusCode resolved ->
                            setStatusCode 200 >=> json resolved.content 
                      | GeocodingSearchStatusCode0 resolved ->
                            setStatusCode 0 >=> json resolved.content 
          ) next ctx
        }
    //#endregion

    //#region MapInfo
    /// <summary>
    /// 
    /// </summary>

    let MapInfo  : HttpHandler = 
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let result = DefaultApiService.MapInfo ctx 
          return! (match result with 
                      | MapInfoDefaultStatusCode resolved ->
                            setStatusCode 200 >=> json resolved.content 
                      | MapInfoStatusCode0 resolved ->
                            setStatusCode 0 >=> json resolved.content 
          ) next ctx
        }
    //#endregion

    //#region Routes
    /// <summary>
    /// 
    /// </summary>

    let Routes  : HttpHandler = 
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let! bodyParams = 
            ctx.BindJsonAsync<RoutesBodyParams>()
          let serviceArgs = {     bodyParams=bodyParams } : RoutesArgs
          let result = DefaultApiService.Routes ctx serviceArgs
          return! (match result with 
                      | RoutesDefaultStatusCode resolved ->
                            setStatusCode 200 >=> json resolved.content 
                      | RoutesStatusCode0 resolved ->
                            setStatusCode 0 >=> json resolved.content 
          ) next ctx
        }
    //#endregion

    //#region SupportedLocations
    /// <summary>
    /// 
    /// </summary>

    let SupportedLocations  : HttpHandler = 
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let! bodyParams = 
            ctx.BindJsonAsync<SupportedLocationsBodyParams>()
          let serviceArgs = {     bodyParams=bodyParams } : SupportedLocationsArgs
          let result = DefaultApiService.SupportedLocations ctx serviceArgs
          return! (match result with 
                      | SupportedLocationsDefaultStatusCode resolved ->
                            setStatusCode 200 >=> json resolved.content 
                      | SupportedLocationsStatusCode0 resolved ->
                            setStatusCode 0 >=> json resolved.content 
          ) next ctx
        }
    //#endregion

    //#region TimeFilter
    /// <summary>
    /// 
    /// </summary>

    let TimeFilter  : HttpHandler = 
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let! bodyParams = 
            ctx.BindJsonAsync<TimeFilterBodyParams>()
          let serviceArgs = {     bodyParams=bodyParams } : TimeFilterArgs
          let result = DefaultApiService.TimeFilter ctx serviceArgs
          return! (match result with 
                      | TimeFilterDefaultStatusCode resolved ->
                            setStatusCode 200 >=> json resolved.content 
                      | TimeFilterStatusCode0 resolved ->
                            setStatusCode 0 >=> json resolved.content 
          ) next ctx
        }
    //#endregion

    //#region TimeFilterFast
    /// <summary>
    /// 
    /// </summary>

    let TimeFilterFast  : HttpHandler = 
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let! bodyParams = 
            ctx.BindJsonAsync<TimeFilterFastBodyParams>()
          let serviceArgs = {     bodyParams=bodyParams } : TimeFilterFastArgs
          let result = DefaultApiService.TimeFilterFast ctx serviceArgs
          return! (match result with 
                      | TimeFilterFastDefaultStatusCode resolved ->
                            setStatusCode 200 >=> json resolved.content 
                      | TimeFilterFastStatusCode0 resolved ->
                            setStatusCode 0 >=> json resolved.content 
          ) next ctx
        }
    //#endregion

    //#region TimeFilterPostcodeDistricts
    /// <summary>
    /// 
    /// </summary>

    let TimeFilterPostcodeDistricts  : HttpHandler = 
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let! bodyParams = 
            ctx.BindJsonAsync<TimeFilterPostcodeDistrictsBodyParams>()
          let serviceArgs = {     bodyParams=bodyParams } : TimeFilterPostcodeDistrictsArgs
          let result = DefaultApiService.TimeFilterPostcodeDistricts ctx serviceArgs
          return! (match result with 
                      | TimeFilterPostcodeDistrictsDefaultStatusCode resolved ->
                            setStatusCode 200 >=> json resolved.content 
                      | TimeFilterPostcodeDistrictsStatusCode0 resolved ->
                            setStatusCode 0 >=> json resolved.content 
          ) next ctx
        }
    //#endregion

    //#region TimeFilterPostcodeSectors
    /// <summary>
    /// 
    /// </summary>

    let TimeFilterPostcodeSectors  : HttpHandler = 
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let! bodyParams = 
            ctx.BindJsonAsync<TimeFilterPostcodeSectorsBodyParams>()
          let serviceArgs = {     bodyParams=bodyParams } : TimeFilterPostcodeSectorsArgs
          let result = DefaultApiService.TimeFilterPostcodeSectors ctx serviceArgs
          return! (match result with 
                      | TimeFilterPostcodeSectorsDefaultStatusCode resolved ->
                            setStatusCode 200 >=> json resolved.content 
                      | TimeFilterPostcodeSectorsStatusCode0 resolved ->
                            setStatusCode 0 >=> json resolved.content 
          ) next ctx
        }
    //#endregion

    //#region TimeFilterPostcodes
    /// <summary>
    /// 
    /// </summary>

    let TimeFilterPostcodes  : HttpHandler = 
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let! bodyParams = 
            ctx.BindJsonAsync<TimeFilterPostcodesBodyParams>()
          let serviceArgs = {     bodyParams=bodyParams } : TimeFilterPostcodesArgs
          let result = DefaultApiService.TimeFilterPostcodes ctx serviceArgs
          return! (match result with 
                      | TimeFilterPostcodesDefaultStatusCode resolved ->
                            setStatusCode 200 >=> json resolved.content 
                      | TimeFilterPostcodesStatusCode0 resolved ->
                            setStatusCode 0 >=> json resolved.content 
          ) next ctx
        }
    //#endregion

    //#region TimeMap
    /// <summary>
    /// 
    /// </summary>

    let TimeMap  : HttpHandler = 
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let! bodyParams = 
            ctx.BindJsonAsync<TimeMapBodyParams>()
          let serviceArgs = {     bodyParams=bodyParams } : TimeMapArgs
          let result = DefaultApiService.TimeMap ctx serviceArgs
          return! (match result with 
                      | TimeMapDefaultStatusCode resolved ->
                            setStatusCode 200 >=> json resolved.content 
                      | TimeMapStatusCode0 resolved ->
                            setStatusCode 0 >=> json resolved.content 
          ) next ctx
        }
    //#endregion


    
