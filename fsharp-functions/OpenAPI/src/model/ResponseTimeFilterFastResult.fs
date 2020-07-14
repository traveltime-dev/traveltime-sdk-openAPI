namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeFilterFastLocation

module ResponseTimeFilterFastResult = 

  //#region ResponseTimeFilterFastResult

  [<CLIMutable>]
  type ResponseTimeFilterFastResult = {
    [<JsonProperty(PropertyName = "search_id")>]
    SearchId : string;
    [<JsonProperty(PropertyName = "locations")>]
    Locations : ResponseTimeFilterFastLocation[];
    [<JsonProperty(PropertyName = "unreachable")>]
    Unreachable : string[];
  }
  
  //#endregion
  