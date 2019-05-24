namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseTimeFilterProperties

module ResponseTimeFilterLocation = 

  //#region ResponseTimeFilterLocation


  type ResponseTimeFilterLocation = {
    Id : string;
    Properties : ResponseTimeFilterProperties[];
  }
  //#endregion
  