namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestTimeFilterPostcodesProperty
open OpenAPI.Model.RequestTransportation

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
  