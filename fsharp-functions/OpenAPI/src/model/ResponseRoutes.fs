namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseRoutesResult

module ResponseRoutes = 

  //#region ResponseRoutes

  [<CLIMutable>]
  type ResponseRoutes = {
    [<JsonProperty(PropertyName = "results")>]
    Results : ResponseRoutesResult[];
  }
  
  //#endregion
  