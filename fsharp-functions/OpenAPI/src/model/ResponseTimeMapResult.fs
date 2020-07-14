namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseShape
open OpenAPI.Model.ResponseTimeMapProperties

module ResponseTimeMapResult = 

  //#region ResponseTimeMapResult

  [<CLIMutable>]
  type ResponseTimeMapResult = {
    [<JsonProperty(PropertyName = "search_id")>]
    SearchId : string;
    [<JsonProperty(PropertyName = "shapes")>]
    Shapes : ResponseShape[];
    [<JsonProperty(PropertyName = "properties")>]
    Properties : ResponseTimeMapProperties;
  }
  
  //#endregion
  