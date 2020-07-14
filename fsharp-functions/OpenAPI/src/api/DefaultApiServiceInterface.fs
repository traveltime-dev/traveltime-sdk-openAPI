namespace OpenAPI
open DefaultApiHandlerParams
open System
open Microsoft.AspNetCore.Http


module DefaultApiServiceInterface =
    
    //#region Service interface
    type IDefaultApiService = 
      abstract member GeocodingReverseSearch : unit -> GeocodingReverseSearchResult
      abstract member GeocodingSearch : unit -> GeocodingSearchResult
      abstract member MapInfo : unit -> MapInfoResult
      abstract member Routes : RoutesBodyParams -> RoutesResult
      abstract member SupportedLocations : SupportedLocationsBodyParams -> SupportedLocationsResult
      abstract member TimeFilter : TimeFilterBodyParams -> TimeFilterResult
      abstract member TimeFilterFast : TimeFilterFastBodyParams -> TimeFilterFastResult
      abstract member TimeFilterPostcodeDistricts : TimeFilterPostcodeDistrictsBodyParams -> TimeFilterPostcodeDistrictsResult
      abstract member TimeFilterPostcodeSectors : TimeFilterPostcodeSectorsBodyParams -> TimeFilterPostcodeSectorsResult
      abstract member TimeFilterPostcodes : TimeFilterPostcodesBodyParams -> TimeFilterPostcodesResult
      abstract member TimeMap : TimeMapBodyParams -> TimeMapResult
    //#endregion