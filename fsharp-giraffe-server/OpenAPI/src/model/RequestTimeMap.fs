namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestTimeMapArrivalSearch
open OpenAPI.Model.RequestTimeMapDepartureSearch
open OpenAPI.Model.RequestUnionOnIntersection

module RequestTimeMap = 

  //#region RequestTimeMap


  type RequestTimeMap = {
    DepartureSearches : RequestTimeMapDepartureSearch[];
    ArrivalSearches : RequestTimeMapArrivalSearch[];
    Unions : RequestUnionOnIntersection[];
    Intersections : RequestUnionOnIntersection[];
  }
  //#endregion
  