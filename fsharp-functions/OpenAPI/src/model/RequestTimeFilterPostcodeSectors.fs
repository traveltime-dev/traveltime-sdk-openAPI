namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestTimeFilterPostcodeSectorsArrivalSearch
open OpenAPI.Model.RequestTimeFilterPostcodeSectorsDepartureSearch

module RequestTimeFilterPostcodeSectors = 

  //#region RequestTimeFilterPostcodeSectors

  [<CLIMutable>]
  type RequestTimeFilterPostcodeSectors = {
    [<JsonProperty(PropertyName = "departure_searches")>]
    DepartureSearches : RequestTimeFilterPostcodeSectorsDepartureSearch[];
    [<JsonProperty(PropertyName = "arrival_searches")>]
    ArrivalSearches : RequestTimeFilterPostcodeSectorsArrivalSearch[];
  }
  
  //#endregion
  