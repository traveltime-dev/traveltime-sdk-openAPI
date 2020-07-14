namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module ResponseTravelTimeStatistics = 

  //#region ResponseTravelTimeStatistics

  [<CLIMutable>]
  type ResponseTravelTimeStatistics = {
    [<JsonProperty(PropertyName = "min")>]
    Min : int;
    [<JsonProperty(PropertyName = "max")>]
    Max : int;
    [<JsonProperty(PropertyName = "mean")>]
    Mean : int;
    [<JsonProperty(PropertyName = "median")>]
    Median : int;
  }
  
  //#endregion
  