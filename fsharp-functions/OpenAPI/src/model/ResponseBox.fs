namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module ResponseBox = 

  //#region ResponseBox

  [<CLIMutable>]
  type ResponseBox = {
    [<JsonProperty(PropertyName = "min_lat")>]
    MinLat : double;
    [<JsonProperty(PropertyName = "max_lat")>]
    MaxLat : double;
    [<JsonProperty(PropertyName = "min_lng")>]
    MinLng : double;
    [<JsonProperty(PropertyName = "max_lng")>]
    MaxLng : double;
  }
  
  //#endregion
  