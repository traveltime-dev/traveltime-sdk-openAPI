namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestTimeFilterPostcodesArrivalSearch
open OpenAPI.Model.RequestTimeFilterPostcodesDepartureSearch

module RequestTimeFilterPostcodes = 

  //#region RequestTimeFilterPostcodes


  type RequestTimeFilterPostcodes = {
    DepartureSearches : RequestTimeFilterPostcodesDepartureSearch[];
    ArrivalSearches : RequestTimeFilterPostcodesArrivalSearch[];
  }
  //#endregion
  