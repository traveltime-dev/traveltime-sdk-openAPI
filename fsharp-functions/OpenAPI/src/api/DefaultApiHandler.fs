namespace OpenAPI

open DefaultApiHandlerParams
open DefaultApiServiceImplementation
open Microsoft.AspNetCore.Mvc
open Microsoft.AspNetCore.Http
open Newtonsoft.Json
open Microsoft.Azure.WebJobs
open System.IO

module DefaultApiHandlers =

    /// <summary>
    /// 
    /// </summary>

    //#region GeocodingReverseSearch
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GeocodingReverseSearch")>]
    let GeocodingReverseSearch
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/v4/geocoding/reverse")>]
        req:HttpRequest ) =
      
      let result = DefaultApiService.GeocodingReverseSearch ()
      match result with 
      | GeocodingReverseSearchStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200)) 
      | GeocodingReverseSearchDefaultStatusCode resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(0)) 

    //#region GeocodingSearch
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GeocodingSearch")>]
    let GeocodingSearch
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/v4/geocoding/search")>]
        req:HttpRequest ) =
      
      let result = DefaultApiService.GeocodingSearch ()
      match result with 
      | GeocodingSearchStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200)) 
      | GeocodingSearchDefaultStatusCode resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(0)) 

    //#region MapInfo
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("MapInfo")>]
    let MapInfo
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/v4/map-info")>]
        req:HttpRequest ) =
      
      let result = DefaultApiService.MapInfo ()
      match result with 
      | MapInfoStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200)) 
      | MapInfoDefaultStatusCode resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(0)) 

    //#region Routes
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("Routes")>]
    let Routes
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/v4/routes")>]
        req:HttpRequest ) =
      
      use reader = StreamReader(req.Body)

      let mediaTypes = ["application/json";] // currently unused
      
      let bind (contentType:string) body  = 
        match (contentType.ToLower()) with 
        | "application/json" -> 
          body |> JsonConvert.DeserializeObject<RoutesBodyParams> 
        | _ -> failwith (sprintf "TODO - ContentType %s not currently supported" contentType)

      let bodyParams = reader.ReadToEnd() |> bind req.ContentType          
      let result = DefaultApiService.Routes bodyParams
      match result with 
      | RoutesStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200)) 
      | RoutesDefaultStatusCode resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(0)) 

    //#region SupportedLocations
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("SupportedLocations")>]
    let SupportedLocations
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/v4/supported-locations")>]
        req:HttpRequest ) =
      
      use reader = StreamReader(req.Body)

      let mediaTypes = ["application/json";] // currently unused
      
      let bind (contentType:string) body  = 
        match (contentType.ToLower()) with 
        | "application/json" -> 
          body |> JsonConvert.DeserializeObject<SupportedLocationsBodyParams> 
        | _ -> failwith (sprintf "TODO - ContentType %s not currently supported" contentType)

      let bodyParams = reader.ReadToEnd() |> bind req.ContentType          
      let result = DefaultApiService.SupportedLocations bodyParams
      match result with 
      | SupportedLocationsStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200)) 
      | SupportedLocationsDefaultStatusCode resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(0)) 

    //#region TimeFilter
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("TimeFilter")>]
    let TimeFilter
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/v4/time-filter")>]
        req:HttpRequest ) =
      
      use reader = StreamReader(req.Body)

      let mediaTypes = ["application/json";] // currently unused
      
      let bind (contentType:string) body  = 
        match (contentType.ToLower()) with 
        | "application/json" -> 
          body |> JsonConvert.DeserializeObject<TimeFilterBodyParams> 
        | _ -> failwith (sprintf "TODO - ContentType %s not currently supported" contentType)

      let bodyParams = reader.ReadToEnd() |> bind req.ContentType          
      let result = DefaultApiService.TimeFilter bodyParams
      match result with 
      | TimeFilterStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200)) 
      | TimeFilterDefaultStatusCode resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(0)) 

    //#region TimeFilterFast
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("TimeFilterFast")>]
    let TimeFilterFast
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/v4/time-filter/fast")>]
        req:HttpRequest ) =
      
      use reader = StreamReader(req.Body)

      let mediaTypes = ["application/json";] // currently unused
      
      let bind (contentType:string) body  = 
        match (contentType.ToLower()) with 
        | "application/json" -> 
          body |> JsonConvert.DeserializeObject<TimeFilterFastBodyParams> 
        | _ -> failwith (sprintf "TODO - ContentType %s not currently supported" contentType)

      let bodyParams = reader.ReadToEnd() |> bind req.ContentType          
      let result = DefaultApiService.TimeFilterFast bodyParams
      match result with 
      | TimeFilterFastStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200)) 
      | TimeFilterFastDefaultStatusCode resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(0)) 

    //#region TimeFilterPostcodeDistricts
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("TimeFilterPostcodeDistricts")>]
    let TimeFilterPostcodeDistricts
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/v4/time-filter/postcode-districts")>]
        req:HttpRequest ) =
      
      use reader = StreamReader(req.Body)

      let mediaTypes = ["application/json";] // currently unused
      
      let bind (contentType:string) body  = 
        match (contentType.ToLower()) with 
        | "application/json" -> 
          body |> JsonConvert.DeserializeObject<TimeFilterPostcodeDistrictsBodyParams> 
        | _ -> failwith (sprintf "TODO - ContentType %s not currently supported" contentType)

      let bodyParams = reader.ReadToEnd() |> bind req.ContentType          
      let result = DefaultApiService.TimeFilterPostcodeDistricts bodyParams
      match result with 
      | TimeFilterPostcodeDistrictsStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200)) 
      | TimeFilterPostcodeDistrictsDefaultStatusCode resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(0)) 

    //#region TimeFilterPostcodeSectors
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("TimeFilterPostcodeSectors")>]
    let TimeFilterPostcodeSectors
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/v4/time-filter/postcode-sectors")>]
        req:HttpRequest ) =
      
      use reader = StreamReader(req.Body)

      let mediaTypes = ["application/json";] // currently unused
      
      let bind (contentType:string) body  = 
        match (contentType.ToLower()) with 
        | "application/json" -> 
          body |> JsonConvert.DeserializeObject<TimeFilterPostcodeSectorsBodyParams> 
        | _ -> failwith (sprintf "TODO - ContentType %s not currently supported" contentType)

      let bodyParams = reader.ReadToEnd() |> bind req.ContentType          
      let result = DefaultApiService.TimeFilterPostcodeSectors bodyParams
      match result with 
      | TimeFilterPostcodeSectorsStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200)) 
      | TimeFilterPostcodeSectorsDefaultStatusCode resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(0)) 

    //#region TimeFilterPostcodes
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("TimeFilterPostcodes")>]
    let TimeFilterPostcodes
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/v4/time-filter/postcodes")>]
        req:HttpRequest ) =
      
      use reader = StreamReader(req.Body)

      let mediaTypes = ["application/json";] // currently unused
      
      let bind (contentType:string) body  = 
        match (contentType.ToLower()) with 
        | "application/json" -> 
          body |> JsonConvert.DeserializeObject<TimeFilterPostcodesBodyParams> 
        | _ -> failwith (sprintf "TODO - ContentType %s not currently supported" contentType)

      let bodyParams = reader.ReadToEnd() |> bind req.ContentType          
      let result = DefaultApiService.TimeFilterPostcodes bodyParams
      match result with 
      | TimeFilterPostcodesStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200)) 
      | TimeFilterPostcodesDefaultStatusCode resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(0)) 

    //#region TimeMap
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("TimeMap")>]
    let TimeMap
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/v4/time-map")>]
        req:HttpRequest ) =
      
      use reader = StreamReader(req.Body)

      let mediaTypes = ["application/json";] // currently unused
      
      let bind (contentType:string) body  = 
        match (contentType.ToLower()) with 
        | "application/json" -> 
          body |> JsonConvert.DeserializeObject<TimeMapBodyParams> 
        | _ -> failwith (sprintf "TODO - ContentType %s not currently supported" contentType)

      let bodyParams = reader.ReadToEnd() |> bind req.ContentType          
      let result = DefaultApiService.TimeMap bodyParams
      match result with 
      | TimeMapStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200)) 
      | TimeMapDefaultStatusCode resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(0)) 


      

