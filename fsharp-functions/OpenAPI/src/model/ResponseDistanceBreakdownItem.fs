namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTransportationMode

module ResponseDistanceBreakdownItem = 

  //#region ResponseDistanceBreakdownItem

  [<CLIMutable>]
  type ResponseDistanceBreakdownItem = {
    [<JsonProperty(PropertyName = "mode")>]
    Mode : ResponseTransportationMode;
    [<JsonProperty(PropertyName = "distance")>]
    Distance : int;
  }
  
  //#endregion
  