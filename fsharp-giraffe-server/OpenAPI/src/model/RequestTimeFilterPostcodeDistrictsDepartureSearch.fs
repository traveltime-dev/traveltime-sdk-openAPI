namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestTimeFilterPostcodeDistrictsProperty
open OpenAPI.Model.RequestTransportation

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
  