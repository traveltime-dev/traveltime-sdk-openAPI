namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module ResponseTimeFilterPostcodesProperties = 

  //#region ResponseTimeFilterPostcodesProperties

  [<CLIMutable>]
  type ResponseTimeFilterPostcodesProperties = {
    [<JsonProperty(PropertyName = "travel_time")>]
    TravelTime : int;
    [<JsonProperty(PropertyName = "distance")>]
    Distance : int;
  }
  
  //#endregion
  