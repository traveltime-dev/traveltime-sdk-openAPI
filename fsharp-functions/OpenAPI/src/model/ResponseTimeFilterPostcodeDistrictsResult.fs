namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeFilterPostcodeDistrict

module ResponseTimeFilterPostcodeDistrictsResult = 

  //#region ResponseTimeFilterPostcodeDistrictsResult

  [<CLIMutable>]
  type ResponseTimeFilterPostcodeDistrictsResult = {
    [<JsonProperty(PropertyName = "search_id")>]
    SearchId : string;
    [<JsonProperty(PropertyName = "districts")>]
    Districts : ResponseTimeFilterPostcodeDistrict[];
  }
  
  //#endregion
  