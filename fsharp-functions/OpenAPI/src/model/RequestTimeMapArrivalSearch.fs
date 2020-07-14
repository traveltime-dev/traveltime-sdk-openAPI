namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.Coords
open OpenAPI.Model.RequestRangeNoMaxResults
open OpenAPI.Model.RequestTimeMapProperty
open OpenAPI.Model.RequestTransportation

module RequestTimeMapArrivalSearch = 

  //#region RequestTimeMapArrivalSearch

  [<CLIMutable>]
  type RequestTimeMapArrivalSearch = {
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "coords")>]
    Coords : Coords;
    [<JsonProperty(PropertyName = "transportation")>]
    Transportation : RequestTransportation;
    [<JsonProperty(PropertyName = "travel_time")>]
    TravelTime : int;
    [<JsonProperty(PropertyName = "arrival_time")>]
    ArrivalTime : DateTime;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : RequestTimeMapProperty[];
    [<JsonProperty(PropertyName = "range")>]
    Range : RequestRangeNoMaxResults;
  }
  
  //#endregion
  