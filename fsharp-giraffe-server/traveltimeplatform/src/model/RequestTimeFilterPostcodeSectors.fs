namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestTimeFilterPostcodeSectorsArrivalSearch
open traveltimeplatform.Model.RequestTimeFilterPostcodeSectorsDepartureSearch

module RequestTimeFilterPostcodeSectors = 

  //#region RequestTimeFilterPostcodeSectors


  type RequestTimeFilterPostcodeSectors = {
    DepartureSearches : RequestTimeFilterPostcodeSectorsDepartureSearch[];
    ArrivalSearches : RequestTimeFilterPostcodeSectorsArrivalSearch[];
  }
  //#endregion
  