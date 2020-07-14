namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestTimeFilterProperty
open OpenAPI.Model.RequestTransportation

module RequestTimeFilterDepartureSearch = 

  //#region RequestTimeFilterDepartureSearch

  [<CLIMutable>]
  type RequestTimeFilterDepartureSearch = {
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "departure_location_id")>]
    DepartureLocationId : string;
    [<JsonProperty(PropertyName = "arrival_location_ids")>]
    ArrivalLocationIds : string[];
    [<JsonProperty(PropertyName = "transportation")>]
    Transportation : RequestTransportation;
    [<JsonProperty(PropertyName = "travel_time")>]
    TravelTime : int;
    [<JsonProperty(PropertyName = "departure_time")>]
    DepartureTime : DateTime;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : RequestTimeFilterProperty[];
    [<JsonProperty(PropertyName = "range")>]
    Range : RequestRangeFull;
  }
  
  //#endregion
  