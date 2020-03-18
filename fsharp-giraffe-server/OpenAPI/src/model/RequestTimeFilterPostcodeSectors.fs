namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestTimeFilterPostcodeSectorsArrivalSearch
open OpenAPI.Model.RequestTimeFilterPostcodeSectorsDepartureSearch

module RequestTimeFilterPostcodeSectors = 

  //#region RequestTimeFilterPostcodeSectors


  type RequestTimeFilterPostcodeSectors = {
    DepartureSearches : RequestTimeFilterPostcodeSectorsDepartureSearch[];
    ArrivalSearches : RequestTimeFilterPostcodeSectorsArrivalSearch[];
  }
  //#endregion
  