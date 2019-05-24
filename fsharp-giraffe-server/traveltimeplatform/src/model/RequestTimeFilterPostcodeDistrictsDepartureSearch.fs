namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestRangeFull
open traveltimeplatform.Model.RequestTimeFilterPostcodeDistrictsProperty
open traveltimeplatform.Model.RequestTransportation

module RequestTimeFilterPostcodeDistrictsDepartureSearch = 

  //#region RequestTimeFilterPostcodeDistrictsDepartureSearch


  type RequestTimeFilterPostcodeDistrictsDepartureSearch = {
    Id : string;
    Transportation : RequestTransportation;
    TravelTime : int;
    DepartureTime : DateTime;
    ReachablePostcodesThreshold : double;
    Properties : RequestTimeFilterPostcodeDistrictsProperty[];
    Range : RequestRangeFull;
  }
  //#endregion
  