namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestTimeFilterProperty
open OpenAPI.Model.RequestTransportation

module RequestTimeFilterDepartureSearch = 

  //#region RequestTimeFilterDepartureSearch


  type RequestTimeFilterDepartureSearch = {
    Id : string;
    DepartureLocationId : string;
    ArrivalLocationIds : string[];
    Transportation : RequestTransportation;
    TravelTime : int;
    DepartureTime : DateTime;
    Properties : RequestTimeFilterProperty[];
    Range : RequestRangeFull;
  }
  //#endregion
  