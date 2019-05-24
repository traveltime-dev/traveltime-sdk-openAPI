namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestRangeFull
open traveltimeplatform.Model.RequestTimeFilterPostcodesProperty
open traveltimeplatform.Model.RequestTransportation

module RequestTimeFilterPostcodesArrivalSearch = 

  //#region RequestTimeFilterPostcodesArrivalSearch


  type RequestTimeFilterPostcodesArrivalSearch = {
    Id : string;
    Transportation : RequestTransportation;
    TravelTime : int;
    ArrivalTime : DateTime;
    Properties : RequestTimeFilterPostcodesProperty[];
    Range : RequestRangeFull;
  }
  //#endregion
  