namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestRoutesProperty
open OpenAPI.Model.RequestTransportation

module RequestRoutesDepartureSearch = 

  //#region RequestRoutesDepartureSearch

  [<CLIMutable>]
  type RequestRoutesDepartureSearch = {
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "departure_location_id")>]
    DepartureLocationId : string;
    [<JsonProperty(PropertyName = "arrival_location_ids")>]
    ArrivalLocationIds : string[];
    [<JsonProperty(PropertyName = "transportation")>]
    Transportation : RequestTransportation;
    [<JsonProperty(PropertyName = "departure_time")>]
    DepartureTime : DateTime;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : RequestRoutesProperty[];
    [<JsonProperty(PropertyName = "range")>]
    Range : RequestRangeFull;
  }
  
  //#endregion
  