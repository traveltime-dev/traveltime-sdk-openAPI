namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseTravelTimeStatistics

module ResponseTimeFilterPostcodeSectorProperties = 

  //#region ResponseTimeFilterPostcodeSectorProperties


  type ResponseTimeFilterPostcodeSectorProperties = {
    TravelTimeReachable : ResponseTravelTimeStatistics;
    TravelTimeAll : ResponseTravelTimeStatistics;
    Coverage : double;
  }
  //#endregion
  