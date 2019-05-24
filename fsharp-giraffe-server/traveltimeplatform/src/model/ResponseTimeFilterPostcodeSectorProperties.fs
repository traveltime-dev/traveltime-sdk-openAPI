namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseTravelTimeStatistics

module ResponseTimeFilterPostcodeSectorProperties = 

  //#region ResponseTimeFilterPostcodeSectorProperties


  type ResponseTimeFilterPostcodeSectorProperties = {
    TravelTimeReachable : ResponseTravelTimeStatistics;
    TravelTimeAll : ResponseTravelTimeStatistics;
    Coverage : double;
  }
  //#endregion
  