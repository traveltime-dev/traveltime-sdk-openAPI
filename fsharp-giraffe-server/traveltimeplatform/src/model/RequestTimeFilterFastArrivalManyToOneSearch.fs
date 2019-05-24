namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestArrivalTimePeriod
open traveltimeplatform.Model.RequestTimeFilterFastProperty
open traveltimeplatform.Model.RequestTransportationFast

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
  