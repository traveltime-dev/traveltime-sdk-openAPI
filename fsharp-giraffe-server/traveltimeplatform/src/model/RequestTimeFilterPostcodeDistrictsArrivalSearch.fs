namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestRangeFull
open traveltimeplatform.Model.RequestTimeFilterPostcodeDistrictsProperty
open traveltimeplatform.Model.RequestTransportation

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
  