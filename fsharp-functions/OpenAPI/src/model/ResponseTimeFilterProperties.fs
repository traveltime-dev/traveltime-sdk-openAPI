namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseDistanceBreakdownItem
open OpenAPI.Model.ResponseFares
open OpenAPI.Model.ResponseRoute

module ResponseTimeFilterProperties = 

  //#region ResponseTimeFilterProperties

  [<CLIMutable>]
  type ResponseTimeFilterProperties = {
    [<JsonProperty(PropertyName = "travel_time")>]
    TravelTime : int;
    [<JsonProperty(PropertyName = "distance")>]
    Distance : int;
    [<JsonProperty(PropertyName = "distance_breakdown")>]
    DistanceBreakdown : ResponseDistanceBreakdownItem[];
    [<JsonProperty(PropertyName = "fares")>]
    Fares : ResponseFares;
    [<JsonProperty(PropertyName = "route")>]
    Route : ResponseRoute;
  }
  
  //#endregion
  