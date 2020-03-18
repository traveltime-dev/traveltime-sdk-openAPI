namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestTimeFilterPostcodeDistrictsProperty
open OpenAPI.Model.RequestTransportation

module RequestTimeFilterPostcodeDistrictsArrivalSearch = 

  //#region RequestTimeFilterPostcodeDistrictsArrivalSearch


  type RequestTimeFilterPostcodeDistrictsArrivalSearch = {
    Id : string;
    Transportation : RequestTransportation;
    TravelTime : int;
    ArrivalTime : DateTime;
    ReachablePostcodesThreshold : double;
    Properties : RequestTimeFilterPostcodeDistrictsProperty[];
    Range : RequestRangeFull;
  }
  //#endregion
  