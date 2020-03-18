namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestLocation
open OpenAPI.Model.RequestRoutesArrivalSearch
open OpenAPI.Model.RequestRoutesDepartureSearch

module RequestRoutes = 

  //#region RequestRoutes


  type RequestRoutes = {
    Locations : RequestLocation[];
    DepartureSearches : RequestRoutesDepartureSearch[];
    ArrivalSearches : RequestRoutesArrivalSearch[];
  }
  //#endregion
  