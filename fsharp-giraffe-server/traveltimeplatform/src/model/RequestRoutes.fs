namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestLocation
open traveltimeplatform.Model.RequestRoutesArrivalSearch
open traveltimeplatform.Model.RequestRoutesDepartureSearch

module RequestRoutes = 

  //#region RequestRoutes


  type RequestRoutes = {
    Locations : RequestLocation[];
    DepartureSearches : RequestRoutesDepartureSearch[];
    ArrivalSearches : RequestRoutesArrivalSearch[];
  }
  //#endregion
  