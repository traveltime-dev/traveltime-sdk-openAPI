namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeMapResult

module ResponseTimeMap = 

  //#region ResponseTimeMap

  [<CLIMutable>]
  type ResponseTimeMap = {
    [<JsonProperty(PropertyName = "results")>]
    Results : ResponseTimeMapResult[];
  }
  
  //#endregion
  