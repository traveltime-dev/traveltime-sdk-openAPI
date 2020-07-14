namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTravelTimeStatistics

module ResponseTimeFilterPostcodeSectorProperties = 

  //#region ResponseTimeFilterPostcodeSectorProperties

  [<CLIMutable>]
  type ResponseTimeFilterPostcodeSectorProperties = {
    [<JsonProperty(PropertyName = "travel_time_reachable")>]
    TravelTimeReachable : ResponseTravelTimeStatistics;
    [<JsonProperty(PropertyName = "travel_time_all")>]
    TravelTimeAll : ResponseTravelTimeStatistics;
    [<JsonProperty(PropertyName = "coverage")>]
    Coverage : double;
  }
  
  //#endregion
  