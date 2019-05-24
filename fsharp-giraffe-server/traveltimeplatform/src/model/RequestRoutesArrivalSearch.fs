namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestRangeFull
open traveltimeplatform.Model.RequestRoutesProperty
open traveltimeplatform.Model.RequestTransportation

module RequestRoutesArrivalSearch = 

  //#region RequestRoutesArrivalSearch


  type RequestRoutesArrivalSearch = {
    Id : string;
    DepartureLocationIds : string[];
    ArrivalLocationId : string;
    Transportation : RequestTransportation;
    ArrivalTime : DateTime;
    Properties : RequestRoutesProperty[];
    Range : RequestRangeFull;
  }
  //#endregion
  