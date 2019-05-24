namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestRangeFull
open traveltimeplatform.Model.RequestTimeFilterProperty
open traveltimeplatform.Model.RequestTransportation

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
  