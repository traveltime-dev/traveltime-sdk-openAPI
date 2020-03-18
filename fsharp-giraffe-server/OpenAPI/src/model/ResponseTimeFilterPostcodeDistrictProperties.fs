namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseTravelTimeStatistics

module ResponseTimeFilterPostcodeDistrictProperties = 

  //#region ResponseTimeFilterPostcodeDistrictProperties


  type ResponseTimeFilterPostcodeDistrictProperties = {
    TravelTimeReachable : ResponseTravelTimeStatistics;
    TravelTimeAll : ResponseTravelTimeStatistics;
    Coverage : double;
  }
  //#endregion
  