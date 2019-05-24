namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseDistanceBreakdownItem
open traveltimeplatform.Model.ResponseFares
open traveltimeplatform.Model.ResponseRoute

module ResponseTimeFilterProperties = 

  //#region ResponseTimeFilterProperties


  type ResponseTimeFilterProperties = {
    TravelTime : int;
    Distance : int;
    DistanceBreakdown : ResponseDistanceBreakdownItem[];
    Fares : ResponseFares;
    Route : ResponseRoute;
  }
  //#endregion
  