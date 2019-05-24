namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestTimeMapArrivalSearch
open traveltimeplatform.Model.RequestTimeMapDepartureSearch
open traveltimeplatform.Model.RequestUnionOnIntersection

module RequestTimeMap = 

  //#region RequestTimeMap


  type RequestTimeMap = {
    DepartureSearches : RequestTimeMapDepartureSearch[];
    ArrivalSearches : RequestTimeMapArrivalSearch[];
    Unions : RequestUnionOnIntersection[];
    Intersections : RequestUnionOnIntersection[];
  }
  //#endregion
  