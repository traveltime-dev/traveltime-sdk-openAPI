namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestTimeFilterPostcodeSectorsProperty
open OpenAPI.Model.RequestTransportation

module RequestTimeFilterPostcodeSectorsDepartureSearch = 

  //#region RequestTimeFilterPostcodeSectorsDepartureSearch

  [<CLIMutable>]
  type RequestTimeFilterPostcodeSectorsDepartureSearch = {
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "transportation")>]
    Transportation : RequestTransportation;
    [<JsonProperty(PropertyName = "travel_time")>]
    TravelTime : int;
    [<JsonProperty(PropertyName = "departure_time")>]
    DepartureTime : DateTime;
    [<JsonProperty(PropertyName = "reachable_postcodes_threshold")>]
    ReachablePostcodesThreshold : double;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : RequestTimeFilterPostcodeSectorsProperty[];
    [<JsonProperty(PropertyName = "range")>]
    Range : RequestRangeFull;
  }
  
  //#endregion
  