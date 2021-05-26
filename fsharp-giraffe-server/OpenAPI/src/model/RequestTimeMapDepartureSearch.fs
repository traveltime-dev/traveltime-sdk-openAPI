namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.Coords
open OpenAPI.Model.RequestLevelOfDetail
open OpenAPI.Model.RequestRangeNoMaxResults
open OpenAPI.Model.RequestTimeMapProperty
open OpenAPI.Model.RequestTransportation

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
    LevelOfDetail : RequestLevelOfDetail;
  }
  //#endregion
  