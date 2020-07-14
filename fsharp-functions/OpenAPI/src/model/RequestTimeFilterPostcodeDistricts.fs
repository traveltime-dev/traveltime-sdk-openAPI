namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestTimeFilterPostcodeDistrictsArrivalSearch
open OpenAPI.Model.RequestTimeFilterPostcodeDistrictsDepartureSearch

module RequestTimeFilterPostcodeDistricts = 

  //#region RequestTimeFilterPostcodeDistricts

  [<CLIMutable>]
  type RequestTimeFilterPostcodeDistricts = {
    [<JsonProperty(PropertyName = "departure_searches")>]
    DepartureSearches : RequestTimeFilterPostcodeDistrictsDepartureSearch[];
    [<JsonProperty(PropertyName = "arrival_searches")>]
    ArrivalSearches : RequestTimeFilterPostcodeDistrictsArrivalSearch[];
  }
  
  //#endregion
  