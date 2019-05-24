namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestArrivalTimePeriod
open traveltimeplatform.Model.RequestTimeFilterFastProperty
open traveltimeplatform.Model.RequestTransportationFast

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
  