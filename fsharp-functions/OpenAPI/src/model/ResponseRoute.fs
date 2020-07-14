namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseRoutePart

module ResponseRoute = 

  //#region ResponseRoute

  [<CLIMutable>]
  type ResponseRoute = {
    [<JsonProperty(PropertyName = "departure_time")>]
    DepartureTime : DateTime;
    [<JsonProperty(PropertyName = "arrival_time")>]
    ArrivalTime : DateTime;
    [<JsonProperty(PropertyName = "parts")>]
    Parts : ResponseRoutePart[];
  }
  
  //#endregion
  