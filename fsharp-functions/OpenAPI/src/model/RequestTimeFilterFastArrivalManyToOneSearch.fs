namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestArrivalTimePeriod
open OpenAPI.Model.RequestTimeFilterFastProperty
open OpenAPI.Model.RequestTransportationFast

module RequestTimeFilterFastArrivalManyToOneSearch = 

  //#region RequestTimeFilterFastArrivalManyToOneSearch

  [<CLIMutable>]
  type RequestTimeFilterFastArrivalManyToOneSearch = {
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "arrival_location_id")>]
    ArrivalLocationId : string;
    [<JsonProperty(PropertyName = "departure_location_ids")>]
    DepartureLocationIds : string[];
    [<JsonProperty(PropertyName = "transportation")>]
    Transportation : RequestTransportationFast;
    [<JsonProperty(PropertyName = "travel_time")>]
    TravelTime : int;
    [<JsonProperty(PropertyName = "arrival_time_period")>]
    ArrivalTimePeriod : RequestArrivalTimePeriod;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : RequestTimeFilterFastProperty[];
  }
  
  //#endregion
  