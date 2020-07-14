namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeMapBoundingBoxesResult

module ResponseTimeMapBoundingBoxes = 

  //#region ResponseTimeMapBoundingBoxes

  [<CLIMutable>]
  type ResponseTimeMapBoundingBoxes = {
    [<JsonProperty(PropertyName = "results")>]
    Results : ResponseTimeMapBoundingBoxesResult[];
  }
  
  //#endregion
  