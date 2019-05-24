namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestLocation
open traveltimeplatform.Model.RequestTimeFilterFastArrivalSearches

module RequestTimeFilterFast = 

  //#region RequestTimeFilterFast


  type RequestTimeFilterFast = {
    Locations : RequestLocation[];
    ArrivalSearches : RequestTimeFilterFastArrivalSearches;
  }
  //#endregion
  