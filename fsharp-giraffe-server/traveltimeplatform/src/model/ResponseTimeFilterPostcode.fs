namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseTimeFilterPostcodesProperties

module ResponseTimeFilterPostcode = 

  //#region ResponseTimeFilterPostcode


  type ResponseTimeFilterPostcode = {
    Code : String;
    Properties : ResponseTimeFilterPostcodesProperties[];
  }
  //#endregion
  