namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseTimeFilterPostcode

module ResponseTimeFilterPostcodesResult = 

  //#region ResponseTimeFilterPostcodesResult


  type ResponseTimeFilterPostcodesResult = {
    SearchId : string;
    Postcodes : ResponseTimeFilterPostcode[];
  }
  //#endregion
  