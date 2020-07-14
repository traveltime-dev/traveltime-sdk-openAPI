namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseFaresFast

module ResponseTimeFilterFastProperties = 

  //#region ResponseTimeFilterFastProperties

  [<CLIMutable>]
  type ResponseTimeFilterFastProperties = {
    [<JsonProperty(PropertyName = "travel_time")>]
    TravelTime : int;
    [<JsonProperty(PropertyName = "fares")>]
    Fares : ResponseFaresFast;
  }
  
  //#endregion
  