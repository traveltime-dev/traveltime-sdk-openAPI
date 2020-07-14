namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestTimeMapArrivalSearch
open OpenAPI.Model.RequestTimeMapDepartureSearch
open OpenAPI.Model.RequestUnionOnIntersection

module RequestTimeMap = 

  //#region RequestTimeMap

  [<CLIMutable>]
  type RequestTimeMap = {
    [<JsonProperty(PropertyName = "departure_searches")>]
    DepartureSearches : RequestTimeMapDepartureSearch[];
    [<JsonProperty(PropertyName = "arrival_searches")>]
    ArrivalSearches : RequestTimeMapArrivalSearch[];
    [<JsonProperty(PropertyName = "unions")>]
    Unions : RequestUnionOnIntersection[];
    [<JsonProperty(PropertyName = "intersections")>]
    Intersections : RequestUnionOnIntersection[];
  }
  
  //#endregion
  