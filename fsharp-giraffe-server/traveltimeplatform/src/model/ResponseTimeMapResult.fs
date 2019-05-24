namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseShape
open traveltimeplatform.Model.ResponseTimeMapProperties

module ResponseTimeMapResult = 

  //#region ResponseTimeMapResult


  type ResponseTimeMapResult = {
    SearchId : string;
    Shapes : ResponseShape[];
    Properties : ResponseTimeMapProperties;
  }
  //#endregion
  