namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestRangeFull
open traveltimeplatform.Model.RequestTimeFilterProperty
open traveltimeplatform.Model.RequestTransportation

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
  