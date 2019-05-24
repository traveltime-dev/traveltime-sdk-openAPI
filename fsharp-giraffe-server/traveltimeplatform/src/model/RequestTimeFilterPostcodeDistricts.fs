namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestTimeFilterPostcodeDistrictsArrivalSearch
open traveltimeplatform.Model.RequestTimeFilterPostcodeDistrictsDepartureSearch

module RequestTimeFilterPostcodeDistricts = 

  //#region RequestTimeFilterPostcodeDistricts


  type RequestTimeFilterPostcodeDistricts = {
    DepartureSearches : RequestTimeFilterPostcodeDistrictsDepartureSearch[];
    ArrivalSearches : RequestTimeFilterPostcodeDistrictsArrivalSearch[];
  }
  //#endregion
  