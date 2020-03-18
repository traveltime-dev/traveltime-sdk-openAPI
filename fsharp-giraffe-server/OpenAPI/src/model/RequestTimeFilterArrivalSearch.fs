namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestTimeFilterProperty
open OpenAPI.Model.RequestTransportation

module RequestTimeFilterArrivalSearch = 

  //#region RequestTimeFilterArrivalSearch


  type RequestTimeFilterArrivalSearch = {
    Id : string;
    DepartureLocationIds : string[];
    ArrivalLocationId : string;
    Transportation : RequestTransportation;
    TravelTime : int;
    ArrivalTime : DateTime;
    Properties : RequestTimeFilterProperty[];
    Range : RequestRangeFull;
  }
  //#endregion
  