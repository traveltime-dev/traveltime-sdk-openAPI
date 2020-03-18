namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestRoutesProperty
open OpenAPI.Model.RequestTransportation

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
  