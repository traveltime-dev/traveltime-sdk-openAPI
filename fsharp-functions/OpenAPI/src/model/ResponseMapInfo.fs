namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseMapInfoMap

module ResponseMapInfo = 

  //#region ResponseMapInfo

  [<CLIMutable>]
  type ResponseMapInfo = {
    [<JsonProperty(PropertyName = "maps")>]
    Maps : ResponseMapInfoMap[];
  }
  
  //#endregion
  