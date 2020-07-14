namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeFilterLocation

module ResponseTimeFilterResult = 

  //#region ResponseTimeFilterResult

  [<CLIMutable>]
  type ResponseTimeFilterResult = {
    [<JsonProperty(PropertyName = "search_id")>]
    SearchId : string;
    [<JsonProperty(PropertyName = "locations")>]
    Locations : ResponseTimeFilterLocation[];
    [<JsonProperty(PropertyName = "unreachable")>]
    Unreachable : string[];
  }
  
  //#endregion
  