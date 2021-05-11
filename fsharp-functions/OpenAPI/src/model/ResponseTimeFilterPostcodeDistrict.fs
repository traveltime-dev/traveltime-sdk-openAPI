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
    Code : string;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : ResponseTimeFilterPostcodeDistrictProperties;
  }
  
  //#endregion
  