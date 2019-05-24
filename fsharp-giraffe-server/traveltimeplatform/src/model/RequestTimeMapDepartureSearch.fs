namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.Coords
open traveltimeplatform.Model.RequestRangeNoMaxResults
open traveltimeplatform.Model.RequestTimeMapProperty
open traveltimeplatform.Model.RequestTransportation

module RequestTimeMapDepartureSearch = 

  //#region RequestTimeMapDepartureSearch


  type RequestTimeMapDepartureSearch = {
    Id : string;
    Coords : Coords;
    Transportation : RequestTransportation;
    TravelTime : int;
    DepartureTime : DateTime;
    Properties : RequestTimeMapProperty[];
    Range : RequestRangeNoMaxResults;
  }
  //#endregion
  