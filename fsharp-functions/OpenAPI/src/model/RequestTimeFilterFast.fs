namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestLocation
open OpenAPI.Model.RequestTimeFilterFastArrivalSearches

module RequestTimeFilterFast = 

  //#region RequestTimeFilterFast

  [<CLIMutable>]
  type RequestTimeFilterFast = {
    [<JsonProperty(PropertyName = "locations")>]
    Locations : RequestLocation[];
    [<JsonProperty(PropertyName = "arrival_searches")>]
    ArrivalSearches : RequestTimeFilterFastArrivalSearches;
  }
  
  //#endregion
  