namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeFilterPostcodeSectorsResult

module ResponseTimeFilterPostcodeSectors = 

  //#region ResponseTimeFilterPostcodeSectors

  [<CLIMutable>]
  type ResponseTimeFilterPostcodeSectors = {
    [<JsonProperty(PropertyName = "results")>]
    Results : ResponseTimeFilterPostcodeSectorsResult[];
  }
  
  //#endregion
  