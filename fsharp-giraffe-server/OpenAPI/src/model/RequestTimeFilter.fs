namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestLocation
open OpenAPI.Model.RequestTimeFilterArrivalSearch
open OpenAPI.Model.RequestTimeFilterDepartureSearch

module RequestTimeFilter = 

  //#region RequestTimeFilter


  type RequestTimeFilter = {
    Locations : RequestLocation[];
    DepartureSearches : RequestTimeFilterDepartureSearch[];
    ArrivalSearches : RequestTimeFilterArrivalSearch[];
  }
  //#endregion
  