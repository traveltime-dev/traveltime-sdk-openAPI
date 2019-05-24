namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseTimeFilterPostcodeSector

module ResponseTimeFilterPostcodeSectorsResult = 

  //#region ResponseTimeFilterPostcodeSectorsResult


  type ResponseTimeFilterPostcodeSectorsResult = {
    SearchId : string;
    Sectors : ResponseTimeFilterPostcodeSector[];
  }
  //#endregion
  