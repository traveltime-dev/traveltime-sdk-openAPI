namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestLocation
open OpenAPI.Model.RequestTimeFilterFastArrivalSearches

module RequestTimeFilterFast = 

  //#region RequestTimeFilterFast


  type RequestTimeFilterFast = {
    Locations : RequestLocation[];
    ArrivalSearches : RequestTimeFilterFastArrivalSearches;
  }
  //#endregion
  