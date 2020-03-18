namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseShape
open OpenAPI.Model.ResponseTimeMapProperties

module ResponseTimeMapResult = 

  //#region ResponseTimeMapResult


  type ResponseTimeMapResult = {
    SearchId : string;
    Shapes : ResponseShape[];
    Properties : ResponseTimeMapProperties;
  }
  //#endregion
  