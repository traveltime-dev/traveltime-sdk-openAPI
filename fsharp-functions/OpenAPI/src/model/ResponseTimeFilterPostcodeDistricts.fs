namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeFilterPostcodeDistrictsResult

module ResponseTimeFilterPostcodeDistricts = 

  //#region ResponseTimeFilterPostcodeDistricts

  [<CLIMutable>]
  type ResponseTimeFilterPostcodeDistricts = {
    [<JsonProperty(PropertyName = "results")>]
    Results : ResponseTimeFilterPostcodeDistrictsResult[];
  }
  
  //#endregion
  