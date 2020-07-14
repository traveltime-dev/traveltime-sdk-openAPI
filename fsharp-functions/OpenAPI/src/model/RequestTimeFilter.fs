namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestLocation
open OpenAPI.Model.RequestTimeFilterArrivalSearch
open OpenAPI.Model.RequestTimeFilterDepartureSearch

module RequestTimeFilter = 

  //#region RequestTimeFilter

  [<CLIMutable>]
  type RequestTimeFilter = {
    [<JsonProperty(PropertyName = "locations")>]
    Locations : RequestLocation[];
    [<JsonProperty(PropertyName = "departure_searches")>]
    DepartureSearches : RequestTimeFilterDepartureSearch[];
    [<JsonProperty(PropertyName = "arrival_searches")>]
    ArrivalSearches : RequestTimeFilterArrivalSearch[];
  }
  
  //#endregion
  