namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestRangeFull
open traveltimeplatform.Model.RequestTimeFilterPostcodeSectorsProperty
open traveltimeplatform.Model.RequestTransportation

module RequestTimeFilterPostcodeSectorsDepartureSearch = 

  //#region RequestTimeFilterPostcodeSectorsDepartureSearch


  type RequestTimeFilterPostcodeSectorsDepartureSearch = {
    Id : string;
    Transportation : RequestTransportation;
    TravelTime : int;
    DepartureTime : DateTime;
    ReachablePostcodesThreshold : double;
    Properties : RequestTimeFilterPostcodeSectorsProperty[];
    Range : RequestRangeFull;
  }
  //#endregion
  