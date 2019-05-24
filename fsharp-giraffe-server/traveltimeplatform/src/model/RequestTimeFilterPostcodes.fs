namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestTimeFilterPostcodesArrivalSearch
open traveltimeplatform.Model.RequestTimeFilterPostcodesDepartureSearch

module RequestTimeFilterPostcodes = 

  //#region RequestTimeFilterPostcodes


  type RequestTimeFilterPostcodes = {
    DepartureSearches : RequestTimeFilterPostcodesDepartureSearch[];
    ArrivalSearches : RequestTimeFilterPostcodesArrivalSearch[];
  }
  //#endregion
  