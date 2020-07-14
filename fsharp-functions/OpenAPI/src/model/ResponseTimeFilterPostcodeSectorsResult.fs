namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeFilterPostcodeSector

module ResponseTimeFilterPostcodeSectorsResult = 

  //#region ResponseTimeFilterPostcodeSectorsResult

  [<CLIMutable>]
  type ResponseTimeFilterPostcodeSectorsResult = {
    [<JsonProperty(PropertyName = "search_id")>]
    SearchId : string;
    [<JsonProperty(PropertyName = "sectors")>]
    Sectors : ResponseTimeFilterPostcodeSector[];
  }
  
  //#endregion
  