namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeMapProperties

module ResponseTimeMapWktResult = 

  //#region ResponseTimeMapWktResult

  [<CLIMutable>]
  type ResponseTimeMapWktResult = {
    [<JsonProperty(PropertyName = "search_id")>]
    SearchId : string;
    [<JsonProperty(PropertyName = "shape")>]
    Shape : string;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : ResponseTimeMapProperties;
  }
  
  //#endregion
  