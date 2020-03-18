namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestTimeFilterPostcodeSectorsProperty
open OpenAPI.Model.RequestTransportation

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
  