namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestArrivalTimePeriod
open OpenAPI.Model.RequestTimeFilterFastProperty
open OpenAPI.Model.RequestTransportationFast

module RequestTimeFilterFastArrivalOneToManySearch = 

  //#region RequestTimeFilterFastArrivalOneToManySearch


  type RequestTimeFilterFastArrivalOneToManySearch = {
    Id : string;
    DepartureLocationId : string;
    ArrivalLocationIds : string[];
    Transportation : RequestTransportationFast;
    TravelTime : int;
    ArrivalTimePeriod : RequestArrivalTimePeriod;
    Properties : RequestTimeFilterFastProperty[];
  }
  //#endregion
  