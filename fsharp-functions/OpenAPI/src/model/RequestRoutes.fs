namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestLocation
open OpenAPI.Model.RequestRoutesArrivalSearch
open OpenAPI.Model.RequestRoutesDepartureSearch

module RequestRoutes = 

  //#region RequestRoutes

  [<CLIMutable>]
  type RequestRoutes = {
    [<JsonProperty(PropertyName = "locations")>]
    Locations : RequestLocation[];
    [<JsonProperty(PropertyName = "departure_searches")>]
    DepartureSearches : RequestRoutesDepartureSearch[];
    [<JsonProperty(PropertyName = "arrival_searches")>]
    ArrivalSearches : RequestRoutesArrivalSearch[];
  }
  
  //#endregion
  