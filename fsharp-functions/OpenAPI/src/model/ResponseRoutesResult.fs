namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseRoutesLocation

module ResponseRoutesResult = 

  //#region ResponseRoutesResult

  [<CLIMutable>]
  type ResponseRoutesResult = {
    [<JsonProperty(PropertyName = "search_id")>]
    SearchId : string;
    [<JsonProperty(PropertyName = "locations")>]
    Locations : ResponseRoutesLocation[];
    [<JsonProperty(PropertyName = "unreachable")>]
    Unreachable : string[];
  }
  
  //#endregion
  