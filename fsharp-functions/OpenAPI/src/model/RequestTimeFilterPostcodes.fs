namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestTimeFilterPostcodesArrivalSearch
open OpenAPI.Model.RequestTimeFilterPostcodesDepartureSearch

module RequestTimeFilterPostcodes = 

  //#region RequestTimeFilterPostcodes

  [<CLIMutable>]
  type RequestTimeFilterPostcodes = {
    [<JsonProperty(PropertyName = "departure_searches")>]
    DepartureSearches : RequestTimeFilterPostcodesDepartureSearch[];
    [<JsonProperty(PropertyName = "arrival_searches")>]
    ArrivalSearches : RequestTimeFilterPostcodesArrivalSearch[];
  }
  
  //#endregion
  