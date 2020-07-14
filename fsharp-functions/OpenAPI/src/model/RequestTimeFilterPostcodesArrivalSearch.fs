namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestTimeFilterPostcodesProperty
open OpenAPI.Model.RequestTransportation

module RequestTimeFilterPostcodesArrivalSearch = 

  //#region RequestTimeFilterPostcodesArrivalSearch

  [<CLIMutable>]
  type RequestTimeFilterPostcodesArrivalSearch = {
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "transportation")>]
    Transportation : RequestTransportation;
    [<JsonProperty(PropertyName = "travel_time")>]
    TravelTime : int;
    [<JsonProperty(PropertyName = "arrival_time")>]
    ArrivalTime : DateTime;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : RequestTimeFilterPostcodesProperty[];
    [<JsonProperty(PropertyName = "range")>]
    Range : RequestRangeFull;
  }
  
  //#endregion
  