namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseBoundingBox
open traveltimeplatform.Model.ResponseTimeMapProperties

module ResponseTimeMapBoundingBoxesResult = 

  //#region ResponseTimeMapBoundingBoxesResult


  type ResponseTimeMapBoundingBoxesResult = {
    SearchId : string;
    BoundingBoxes : ResponseBoundingBox[];
    Properties : ResponseTimeMapProperties;
  }
  //#endregion
  