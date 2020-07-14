namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeFilterPostcodeDistrictProperties

module ResponseTimeFilterPostcodeDistrict = 

  //#region ResponseTimeFilterPostcodeDistrict

  [<CLIMutable>]
  type ResponseTimeFilterPostcodeDistrict = {
    [<JsonProperty(PropertyName = "code")>]
    Code : String;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : ResponseTimeFilterPostcodeDistrictProperties;
  }
  
  //#endregion
  