namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestTimeFilterPostcodeSectorsProperty
open OpenAPI.Model.RequestTransportation

module RequestTimeFilterPostcodeSectorsArrivalSearch = 

  //#region RequestTimeFilterPostcodeSectorsArrivalSearch

  [<CLIMutable>]
  type RequestTimeFilterPostcodeSectorsArrivalSearch = {
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
    Properties : RequestTimeFilterPostcodeSectorsProperty[];
    [<JsonProperty(PropertyName = "range")>]
    Range : RequestRangeFull;
  }
  
  //#endregion
  