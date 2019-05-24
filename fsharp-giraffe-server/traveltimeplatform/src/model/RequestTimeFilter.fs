namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestLocation
open traveltimeplatform.Model.RequestTimeFilterArrivalSearch
open traveltimeplatform.Model.RequestTimeFilterDepartureSearch

module RequestTimeFilter = 

  //#region RequestTimeFilter


  type RequestTimeFilter = {
    Locations : RequestLocation[];
    DepartureSearches : RequestTimeFilterDepartureSearch[];
    ArrivalSearches : RequestTimeFilterArrivalSearch[];
  }
  //#endregion
  