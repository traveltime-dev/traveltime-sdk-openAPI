namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestRangeFull
open traveltimeplatform.Model.RequestTimeFilterPostcodeSectorsProperty
open traveltimeplatform.Model.RequestTransportation

module RequestTimeFilterPostcodeSectorsArrivalSearch = 

  //#region RequestTimeFilterPostcodeSectorsArrivalSearch


  type RequestTimeFilterPostcodeSectorsArrivalSearch = {
    Id : string;
    Transportation : RequestTransportation;
    TravelTime : int;
    ArrivalTime : DateTime;
    ReachablePostcodesThreshold : double;
    Properties : RequestTimeFilterPostcodeSectorsProperty[];
    Range : RequestRangeFull;
  }
  //#endregion
  