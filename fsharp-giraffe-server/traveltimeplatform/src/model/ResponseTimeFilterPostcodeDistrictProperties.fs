namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseTravelTimeStatistics

module ResponseTimeFilterPostcodeDistrictProperties = 

  //#region ResponseTimeFilterPostcodeDistrictProperties


  type ResponseTimeFilterPostcodeDistrictProperties = {
    TravelTimeReachable : ResponseTravelTimeStatistics;
    TravelTimeAll : ResponseTravelTimeStatistics;
    Coverage : double;
  }
  //#endregion
  