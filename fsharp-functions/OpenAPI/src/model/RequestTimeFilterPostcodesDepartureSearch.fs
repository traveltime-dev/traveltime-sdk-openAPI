namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestTimeFilterPostcodesProperty
open OpenAPI.Model.RequestTransportation

module RequestTimeFilterPostcodesDepartureSearch = 

  //#region RequestTimeFilterPostcodesDepartureSearch

  [<CLIMutable>]
  type RequestTimeFilterPostcodesDepartureSearch = {
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "transportation")>]
    Transportation : RequestTransportation;
    [<JsonProperty(PropertyName = "travel_time")>]
    TravelTime : int;
    [<JsonProperty(PropertyName = "departure_time")>]
    DepartureTime : DateTime;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : RequestTimeFilterPostcodesProperty[];
    [<JsonProperty(PropertyName = "range")>]
    Range : RequestRangeFull;
  }
  
  //#endregion
  