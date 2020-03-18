namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseTimeMapProperties

module ResponseTimeMapWktResult = 

  //#region ResponseTimeMapWktResult


  type ResponseTimeMapWktResult = {
    SearchId : string;
    Shape : string;
    Properties : ResponseTimeMapProperties;
  }
  //#endregion
  