namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestTimeFilterPostcodeDistrictsArrivalSearch
open OpenAPI.Model.RequestTimeFilterPostcodeDistrictsDepartureSearch

module RequestTimeFilterPostcodeDistricts = 

  //#region RequestTimeFilterPostcodeDistricts


  type RequestTimeFilterPostcodeDistricts = {
    DepartureSearches : RequestTimeFilterPostcodeDistrictsDepartureSearch[];
    ArrivalSearches : RequestTimeFilterPostcodeDistrictsArrivalSearch[];
  }
  //#endregion
  