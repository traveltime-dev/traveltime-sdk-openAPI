namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseBoundingBox
open OpenAPI.Model.ResponseTimeMapProperties

module ResponseTimeMapBoundingBoxesResult = 

  //#region ResponseTimeMapBoundingBoxesResult


  type ResponseTimeMapBoundingBoxesResult = {
    SearchId : string;
    BoundingBoxes : ResponseBoundingBox[];
    Properties : ResponseTimeMapProperties;
  }
  //#endregion
  