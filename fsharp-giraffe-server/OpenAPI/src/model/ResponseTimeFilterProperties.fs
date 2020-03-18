namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseDistanceBreakdownItem
open OpenAPI.Model.ResponseFares
open OpenAPI.Model.ResponseRoute

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
  