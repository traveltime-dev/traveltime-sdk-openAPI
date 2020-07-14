namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeFilterPostcodeSectorProperties

module ResponseTimeFilterPostcodeSector = 

  //#region ResponseTimeFilterPostcodeSector

  [<CLIMutable>]
  type ResponseTimeFilterPostcodeSector = {
    [<JsonProperty(PropertyName = "code")>]
    Code : String;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : ResponseTimeFilterPostcodeSectorProperties;
  }
  
  //#endregion
  