namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTravelTimeStatistics

module ResponseTimeFilterPostcodeDistrictProperties = 

  //#region ResponseTimeFilterPostcodeDistrictProperties

  [<CLIMutable>]
  type ResponseTimeFilterPostcodeDistrictProperties = {
    [<JsonProperty(PropertyName = "travel_time_reachable")>]
    TravelTimeReachable : ResponseTravelTimeStatistics;
    [<JsonProperty(PropertyName = "travel_time_all")>]
    TravelTimeAll : ResponseTravelTimeStatistics;
    [<JsonProperty(PropertyName = "coverage")>]
    Coverage : double;
  }
  
  //#endregion
  