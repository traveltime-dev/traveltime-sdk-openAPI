namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestTimeFilterPostcodesProperty
open OpenAPI.Model.RequestTransportation

module RequestTimeFilterPostcodesDepartureSearch = 

  //#region RequestTimeFilterPostcodesDepartureSearch


  type RequestTimeFilterPostcodesDepartureSearch = {
    Id : string;
    Transportation : RequestTransportation;
    TravelTime : int;
    DepartureTime : DateTime;
    Properties : RequestTimeFilterPostcodesProperty[];
    Range : RequestRangeFull;
  }
  //#endregion
  