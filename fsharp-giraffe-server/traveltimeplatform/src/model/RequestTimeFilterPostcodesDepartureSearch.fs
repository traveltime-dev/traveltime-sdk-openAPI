namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestRangeFull
open traveltimeplatform.Model.RequestTimeFilterPostcodesProperty
open traveltimeplatform.Model.RequestTransportation

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
  