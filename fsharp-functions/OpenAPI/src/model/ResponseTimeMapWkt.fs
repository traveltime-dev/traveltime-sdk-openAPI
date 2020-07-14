namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeMapWktResult

module ResponseTimeMapWkt = 

  //#region ResponseTimeMapWkt

  [<CLIMutable>]
  type ResponseTimeMapWkt = {
    [<JsonProperty(PropertyName = "results")>]
    Results : ResponseTimeMapWktResult[];
  }
  
  //#endregion
  