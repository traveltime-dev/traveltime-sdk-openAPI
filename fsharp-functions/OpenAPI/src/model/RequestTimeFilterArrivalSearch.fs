namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestTimeFilterProperty
open OpenAPI.Model.RequestTransportation

module RequestTimeFilterArrivalSearch = 

  //#region RequestTimeFilterArrivalSearch

  [<CLIMutable>]
  type RequestTimeFilterArrivalSearch = {
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "departure_location_ids")>]
    DepartureLocationIds : string[];
    [<JsonProperty(PropertyName = "arrival_location_id")>]
    ArrivalLocationId : string;
    [<JsonProperty(PropertyName = "transportation")>]
    Transportation : RequestTransportation;
    [<JsonProperty(PropertyName = "travel_time")>]
    TravelTime : int;
    [<JsonProperty(PropertyName = "arrival_time")>]
    ArrivalTime : DateTime;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : RequestTimeFilterProperty[];
    [<JsonProperty(PropertyName = "range")>]
    Range : RequestRangeFull;
  }
  
  //#endregion
  