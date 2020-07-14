namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeFilterFastResult

module ResponseTimeFilterFast = 

  //#region ResponseTimeFilterFast

  [<CLIMutable>]
  type ResponseTimeFilterFast = {
    [<JsonProperty(PropertyName = "results")>]
    Results : ResponseTimeFilterFastResult[];
  }
  
  //#endregion
  