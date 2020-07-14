namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module ResponseSupportedLocation = 

  //#region ResponseSupportedLocation

  [<CLIMutable>]
  type ResponseSupportedLocation = {
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "map_name")>]
    MapName : string;
  }
  
  //#endregion
  