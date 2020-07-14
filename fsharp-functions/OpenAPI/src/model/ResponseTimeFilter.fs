namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeFilterResult

module ResponseTimeFilter = 

  //#region ResponseTimeFilter

  [<CLIMutable>]
  type ResponseTimeFilter = {
    [<JsonProperty(PropertyName = "results")>]
    Results : ResponseTimeFilterResult[];
  }
  
  //#endregion
  