namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestTimeFilterPostcodeDistrictsProperty
open OpenAPI.Model.RequestTransportation

module RequestTimeFilterPostcodeDistrictsDepartureSearch = 

  //#region RequestTimeFilterPostcodeDistrictsDepartureSearch

  [<CLIMutable>]
  type RequestTimeFilterPostcodeDistrictsDepartureSearch = {
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
    Properties : RequestTimeFilterPostcodeDistrictsProperty[];
    [<JsonProperty(PropertyName = "range")>]
    Range : RequestRangeFull;
  }
  
  //#endregion
  