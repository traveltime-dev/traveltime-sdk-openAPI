namespace OpenAPI

open OpenAPI.Model.RequestRoutes
open OpenAPI.Model.RequestSupportedLocations
open OpenAPI.Model.RequestTimeFilter
open OpenAPI.Model.RequestTimeFilterFast
open OpenAPI.Model.RequestTimeFilterPostcodeDistricts
open OpenAPI.Model.RequestTimeFilterPostcodeSectors
open OpenAPI.Model.RequestTimeFilterPostcodes
open OpenAPI.Model.RequestTimeMap
open OpenAPI.Model.ResponseError
open OpenAPI.Model.ResponseGeocoding
open OpenAPI.Model.ResponseMapInfo
open OpenAPI.Model.ResponseRoutes
open OpenAPI.Model.ResponseSupportedLocations
open OpenAPI.Model.ResponseTimeFilter
open OpenAPI.Model.ResponseTimeFilterFast
open OpenAPI.Model.ResponseTimeFilterPostcodeDistricts
open OpenAPI.Model.ResponseTimeFilterPostcodeSectors
open OpenAPI.Model.ResponseTimeFilterPostcodes
open OpenAPI.Model.ResponseTimeMap
open System.Collections.Generic
open System

module DefaultApiHandlerParams = 


    //#region Query parameters
    [<CLIMutable>]
    type GeocodingReverseSearchQueryParams = {
      lat : double ;
      

      lng : double ;
      

      withinCountry : string option;
      
    }
    //#endregion

    
    type GeocodingReverseSearchStatusCode200Response = {
      content:ResponseGeocoding;
      
    }
    
    type GeocodingReverseSearchDefaultStatusCodeResponse = {
      content:ResponseError;
      
    }
    type GeocodingReverseSearchResult = GeocodingReverseSearchStatusCode200 of GeocodingReverseSearchStatusCode200Response|GeocodingReverseSearchDefaultStatusCode of GeocodingReverseSearchDefaultStatusCodeResponse

    type GeocodingReverseSearchArgs = {
      queryParams:Result<GeocodingReverseSearchQueryParams,string>;
    }

    //#region Query parameters
    [<CLIMutable>]
    type GeocodingSearchQueryParams = {
      query : string ;
      

      focusLat : double option;
      

      focusLng : double option;
      

      withinCountry : string option;
      
    }
    //#endregion

    
    type GeocodingSearchStatusCode200Response = {
      content:ResponseGeocoding;
      
    }
    
    type GeocodingSearchDefaultStatusCodeResponse = {
      content:ResponseError;
      
    }
    type GeocodingSearchResult = GeocodingSearchStatusCode200 of GeocodingSearchStatusCode200Response|GeocodingSearchDefaultStatusCode of GeocodingSearchDefaultStatusCodeResponse

    type GeocodingSearchArgs = {
      queryParams:Result<GeocodingSearchQueryParams,string>;
    }

    
    type MapInfoStatusCode200Response = {
      content:ResponseMapInfo;
      
    }
    
    type MapInfoDefaultStatusCodeResponse = {
      content:ResponseError;
      
    }
    type MapInfoResult = MapInfoStatusCode200 of MapInfoStatusCode200Response|MapInfoDefaultStatusCode of MapInfoDefaultStatusCodeResponse


    //#region Body parameters
    [<CLIMutable>]
    type RoutesBodyParams = RequestRoutes 
    //#endregion

    
    type RoutesStatusCode200Response = {
      content:ResponseRoutes;
      
    }
    
    type RoutesDefaultStatusCodeResponse = {
      content:ResponseError;
      
    }
    type RoutesResult = RoutesStatusCode200 of RoutesStatusCode200Response|RoutesDefaultStatusCode of RoutesDefaultStatusCodeResponse

    type RoutesArgs = {
      bodyParams:RoutesBodyParams
    }

    //#region Body parameters
    [<CLIMutable>]
    type SupportedLocationsBodyParams = RequestSupportedLocations 
    //#endregion

    
    type SupportedLocationsStatusCode200Response = {
      content:ResponseSupportedLocations;
      
    }
    
    type SupportedLocationsDefaultStatusCodeResponse = {
      content:ResponseError;
      
    }
    type SupportedLocationsResult = SupportedLocationsStatusCode200 of SupportedLocationsStatusCode200Response|SupportedLocationsDefaultStatusCode of SupportedLocationsDefaultStatusCodeResponse

    type SupportedLocationsArgs = {
      bodyParams:SupportedLocationsBodyParams
    }

    //#region Body parameters
    [<CLIMutable>]
    type TimeFilterBodyParams = RequestTimeFilter 
    //#endregion

    
    type TimeFilterStatusCode200Response = {
      content:ResponseTimeFilter;
      
    }
    
    type TimeFilterDefaultStatusCodeResponse = {
      content:ResponseError;
      
    }
    type TimeFilterResult = TimeFilterStatusCode200 of TimeFilterStatusCode200Response|TimeFilterDefaultStatusCode of TimeFilterDefaultStatusCodeResponse

    type TimeFilterArgs = {
      bodyParams:TimeFilterBodyParams
    }

    //#region Body parameters
    [<CLIMutable>]
    type TimeFilterFastBodyParams = RequestTimeFilterFast 
    //#endregion

    
    type TimeFilterFastStatusCode200Response = {
      content:ResponseTimeFilterFast;
      
    }
    
    type TimeFilterFastDefaultStatusCodeResponse = {
      content:ResponseError;
      
    }
    type TimeFilterFastResult = TimeFilterFastStatusCode200 of TimeFilterFastStatusCode200Response|TimeFilterFastDefaultStatusCode of TimeFilterFastDefaultStatusCodeResponse

    type TimeFilterFastArgs = {
      bodyParams:TimeFilterFastBodyParams
    }

    //#region Body parameters
    [<CLIMutable>]
    type TimeFilterPostcodeDistrictsBodyParams = RequestTimeFilterPostcodeDistricts 
    //#endregion

    
    type TimeFilterPostcodeDistrictsStatusCode200Response = {
      content:ResponseTimeFilterPostcodeDistricts;
      
    }
    
    type TimeFilterPostcodeDistrictsDefaultStatusCodeResponse = {
      content:ResponseError;
      
    }
    type TimeFilterPostcodeDistrictsResult = TimeFilterPostcodeDistrictsStatusCode200 of TimeFilterPostcodeDistrictsStatusCode200Response|TimeFilterPostcodeDistrictsDefaultStatusCode of TimeFilterPostcodeDistrictsDefaultStatusCodeResponse

    type TimeFilterPostcodeDistrictsArgs = {
      bodyParams:TimeFilterPostcodeDistrictsBodyParams
    }

    //#region Body parameters
    [<CLIMutable>]
    type TimeFilterPostcodeSectorsBodyParams = RequestTimeFilterPostcodeSectors 
    //#endregion

    
    type TimeFilterPostcodeSectorsStatusCode200Response = {
      content:ResponseTimeFilterPostcodeSectors;
      
    }
    
    type TimeFilterPostcodeSectorsDefaultStatusCodeResponse = {
      content:ResponseError;
      
    }
    type TimeFilterPostcodeSectorsResult = TimeFilterPostcodeSectorsStatusCode200 of TimeFilterPostcodeSectorsStatusCode200Response|TimeFilterPostcodeSectorsDefaultStatusCode of TimeFilterPostcodeSectorsDefaultStatusCodeResponse

    type TimeFilterPostcodeSectorsArgs = {
      bodyParams:TimeFilterPostcodeSectorsBodyParams
    }

    //#region Body parameters
    [<CLIMutable>]
    type TimeFilterPostcodesBodyParams = RequestTimeFilterPostcodes 
    //#endregion

    
    type TimeFilterPostcodesStatusCode200Response = {
      content:ResponseTimeFilterPostcodes;
      
    }
    
    type TimeFilterPostcodesDefaultStatusCodeResponse = {
      content:ResponseError;
      
    }
    type TimeFilterPostcodesResult = TimeFilterPostcodesStatusCode200 of TimeFilterPostcodesStatusCode200Response|TimeFilterPostcodesDefaultStatusCode of TimeFilterPostcodesDefaultStatusCodeResponse

    type TimeFilterPostcodesArgs = {
      bodyParams:TimeFilterPostcodesBodyParams
    }

    //#region Body parameters
    [<CLIMutable>]
    type TimeMapBodyParams = RequestTimeMap 
    //#endregion

    
    type TimeMapStatusCode200Response = {
      content:ResponseTimeMap;
      
    }
    
    type TimeMapDefaultStatusCodeResponse = {
      content:ResponseError;
      
    }
    type TimeMapResult = TimeMapStatusCode200 of TimeMapStatusCode200Response|TimeMapDefaultStatusCode of TimeMapDefaultStatusCodeResponse

    type TimeMapArgs = {
      bodyParams:TimeMapBodyParams
    }
    