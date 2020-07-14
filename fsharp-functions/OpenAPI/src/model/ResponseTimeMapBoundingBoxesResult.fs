namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseBoundingBox
open OpenAPI.Model.ResponseTimeMapProperties

module ResponseTimeMapBoundingBoxesResult = 

  //#region ResponseTimeMapBoundingBoxesResult

  [<CLIMutable>]
  type ResponseTimeMapBoundingBoxesResult = {
    [<JsonProperty(PropertyName = "search_id")>]
    SearchId : string;
    [<JsonProperty(PropertyName = "bounding_boxes")>]
    BoundingBoxes : ResponseBoundingBox[];
    [<JsonProperty(PropertyName = "properties")>]
    Properties : ResponseTimeMapProperties;
  }
  
  //#endregion
  