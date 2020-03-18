namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestArrivalTimePeriod
open OpenAPI.Model.RequestTimeFilterFastProperty
open OpenAPI.Model.RequestTransportationFast

module RequestTimeFilterFastArrivalManyToOneSearch = 

  //#region RequestTimeFilterFastArrivalManyToOneSearch


  type RequestTimeFilterFastArrivalManyToOneSearch = {
    Id : string;
    ArrivalLocationId : string;
    DepartureLocationIds : string[];
    Transportation : RequestTransportationFast;
    TravelTime : int;
    ArrivalTimePeriod : RequestArrivalTimePeriod;
    Properties : RequestTimeFilterFastProperty[];
  }
  //#endregion
  