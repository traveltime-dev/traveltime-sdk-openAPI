namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseTimeFilterPostcodeDistrict

module ResponseTimeFilterPostcodeDistrictsResult = 

  //#region ResponseTimeFilterPostcodeDistrictsResult


  type ResponseTimeFilterPostcodeDistrictsResult = {
    SearchId : string;
    Districts : ResponseTimeFilterPostcodeDistrict[];
  }
  //#endregion
  