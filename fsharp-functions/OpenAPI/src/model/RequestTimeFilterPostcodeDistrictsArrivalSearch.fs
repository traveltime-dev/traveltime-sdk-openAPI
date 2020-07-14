namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestTimeFilterPostcodeDistrictsProperty
open OpenAPI.Model.RequestTransportation

module RequestTimeFilterPostcodeDistrictsArrivalSearch = 

  //#region RequestTimeFilterPostcodeDistrictsArrivalSearch

  [<CLIMutable>]
  type RequestTimeFilterPostcodeDistrictsArrivalSearch = {
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "transportation")>]
    Transportation : RequestTransportation;
    [<JsonProperty(PropertyName = "travel_time")>]
    TravelTime : int;
    [<JsonProperty(PropertyName = "arrival_time")>]
    ArrivalTime : DateTime;
    [<JsonProperty(PropertyName = "reachable_postcodes_threshold")>]
    ReachablePostcodesThreshold : double;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : RequestTimeFilterPostcodeDistrictsProperty[];
    [<JsonProperty(PropertyName = "range")>]
    Range : RequestRangeFull;
  }
  
  //#endregion
  