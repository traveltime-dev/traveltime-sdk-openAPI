namespace traveltimeplatform
open DefaultApiHandlerParams
open System
open Giraffe
open Microsoft.AspNetCore.Http


module DefaultApiServiceInterface =
    
    //#region Service interface
    type IDefaultApiService = 
      abstract member GeocodingReverseSearch:HttpContext -> GeocodingReverseSearchArgs->GeocodingReverseSearchResult
      abstract member GeocodingSearch:HttpContext -> GeocodingSearchArgs->GeocodingSearchResult
      abstract member MapInfo:HttpContext ->MapInfoResult
      abstract member Routes:HttpContext -> RoutesArgs->RoutesResult
      abstract member SupportedLocations:HttpContext -> SupportedLocationsArgs->SupportedLocationsResult
      abstract member TimeFilter:HttpContext -> TimeFilterArgs->TimeFilterResult
      abstract member TimeFilterFast:HttpContext -> TimeFilterFastArgs->TimeFilterFastResult
      abstract member TimeFilterPostcodeDistricts:HttpContext -> TimeFilterPostcodeDistrictsArgs->TimeFilterPostcodeDistrictsResult
      abstract member TimeFilterPostcodeSectors:HttpContext -> TimeFilterPostcodeSectorsArgs->TimeFilterPostcodeSectorsResult
      abstract member TimeFilterPostcodes:HttpContext -> TimeFilterPostcodesArgs->TimeFilterPostcodesResult
      abstract member TimeMap:HttpContext -> TimeMapArgs->TimeMapResult
    //#endregion