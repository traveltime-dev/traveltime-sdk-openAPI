namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestRoutesProperty
open OpenAPI.Model.RequestTransportation

module RequestRoutesArrivalSearch = 

  //#region RequestRoutesArrivalSearch

  [<CLIMutable>]
  type RequestRoutesArrivalSearch = {
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "departure_location_ids")>]
    DepartureLocationIds : string[];
    [<JsonProperty(PropertyName = "arrival_location_id")>]
    ArrivalLocationId : string;
    [<JsonProperty(PropertyName = "transportation")>]
    Transportation : RequestTransportation;
    [<JsonProperty(PropertyName = "arrival_time")>]
    ArrivalTime : DateTime;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : RequestRoutesProperty[];
    [<JsonProperty(PropertyName = "range")>]
    Range : RequestRangeFull;
  }
  
  //#endregion
  