namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestTimeFilterPostcodeSectorsProperty
open OpenAPI.Model.RequestTransportation

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
  