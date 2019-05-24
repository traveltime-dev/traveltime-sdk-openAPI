namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseTimeMapProperties

module ResponseTimeMapWktResult = 

  //#region ResponseTimeMapWktResult


  type ResponseTimeMapWktResult = {
    SearchId : string;
    Shape : string;
    Properties : ResponseTimeMapProperties;
  }
  //#endregion
  