namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseFares
open OpenAPI.Model.ResponseRoute

module ResponseRoutesProperties = 

  //#region ResponseRoutesProperties

  [<CLIMutable>]
  type ResponseRoutesProperties = {
    [<JsonProperty(PropertyName = "travel_time")>]
    TravelTime : int;
    [<JsonProperty(PropertyName = "distance")>]
    Distance : int;
    [<JsonProperty(PropertyName = "fares")>]
    Fares : ResponseFares;
    [<JsonProperty(PropertyName = "route")>]
    Route : ResponseRoute;
  }
  
  //#endregion
  