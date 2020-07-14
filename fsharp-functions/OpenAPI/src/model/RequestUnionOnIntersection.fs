namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module RequestUnionOnIntersection = 

  //#region RequestUnionOnIntersection

  [<CLIMutable>]
  type RequestUnionOnIntersection = {
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "search_ids")>]
    SearchIds : string[];
  }
  
  //#endregion
  