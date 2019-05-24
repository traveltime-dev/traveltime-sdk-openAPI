namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.Coords
open traveltimeplatform.Model.RequestRangeNoMaxResults
open traveltimeplatform.Model.RequestTimeMapProperty
open traveltimeplatform.Model.RequestTransportation

module RequestTimeMapArrivalSearch = 

  //#region RequestTimeMapArrivalSearch


  type RequestTimeMapArrivalSearch = {
    Id : string;
    Coords : Coords;
    Transportation : RequestTransportation;
    TravelTime : int;
    ArrivalTime : DateTime;
    Properties : RequestTimeMapProperty[];
    Range : RequestRangeNoMaxResults;
  }
  //#endregion
  