namespace traveltimeplatform

open traveltimeplatform.Model.RequestRoutes
open traveltimeplatform.Model.RequestSupportedLocations
open traveltimeplatform.Model.RequestTimeFilter
open traveltimeplatform.Model.RequestTimeFilterFast
open traveltimeplatform.Model.RequestTimeFilterPostcodeDistricts
open traveltimeplatform.Model.RequestTimeFilterPostcodeSectors
open traveltimeplatform.Model.RequestTimeFilterPostcodes
open traveltimeplatform.Model.RequestTimeMap
open traveltimeplatform.Model.ResponseError
open traveltimeplatform.Model.ResponseGeocoding
open traveltimeplatform.Model.ResponseMapInfo
open traveltimeplatform.Model.ResponseRoutes
open traveltimeplatform.Model.ResponseSupportedLocations
open traveltimeplatform.Model.ResponseTimeFilter
open traveltimeplatform.Model.ResponseTimeFilterFast
open traveltimeplatform.Model.ResponseTimeFilterPostcodeDistricts
open traveltimeplatform.Model.ResponseTimeFilterPostcodeSectors
open traveltimeplatform.Model.ResponseTimeFilterPostcodes
open traveltimeplatform.Model.ResponseTimeMap
open System.Collections.Generic
open System

module DefaultApiHandlerParams = 


    //#region Query parameters
    [<CLIMutable>]
    type GeocodingReverseSearchQueryParams = {
      focusLat : double ;
      

      focusLng : double ;
      

      withinCountry : string option;
      
    }
    //#endregion

    
    type GeocodingReverseSearchDefaultStatusCodeResponse = {
      content:ResponseGeocoding;
      
    }
    
    type GeocodingReverseSearchStatusCode0Response = {
      content:ResponseError;
      
    }
    type GeocodingReverseSearchResult = GeocodingReverseSearchDefaultStatusCode of GeocodingReverseSearchDefaultStatusCodeResponse|GeocodingReverseSearchStatusCode0 of GeocodingReverseSearchStatusCode0Response

    type GeocodingReverseSearchArgs = {
      queryParams:Result<GeocodingReverseSearchQueryParams,string>;
    }

    //#region Query parameters
    [<CLIMutable>]
    type GeocodingSearchQueryParams = {
      query : string ;
      

      withinCountry : string option;
      

      focusLat : double option;
      

      focusLng : double option;
      
    }
    //#endregion

    
    type GeocodingSearchDefaultStatusCodeResponse = {
      content:ResponseGeocoding;
      
    }
    
    type GeocodingSearchStatusCode0Response = {
      content:ResponseError;
      
    }
    type GeocodingSearchResult = GeocodingSearchDefaultStatusCode of GeocodingSearchDefaultStatusCodeResponse|GeocodingSearchStatusCode0 of GeocodingSearchStatusCode0Response

    type GeocodingSearchArgs = {
      queryParams:Result<GeocodingSearchQueryParams,string>;
    }

    
    type MapInfoDefaultStatusCodeResponse = {
      content:ResponseMapInfo;
      
    }
    
    type MapInfoStatusCode0Response = {
      content:ResponseError;
      
    }
    type MapInfoResult = MapInfoDefaultStatusCode of MapInfoDefaultStatusCodeResponse|MapInfoStatusCode0 of MapInfoStatusCode0Response


    //#region Body parameters
    [<CLIMutable>]
    type RoutesBodyParams = RequestRoutes 
    //#endregion

    
    type RoutesDefaultStatusCodeResponse = {
      content:ResponseRoutes;
      
    }
    
    type RoutesStatusCode0Response = {
      content:ResponseError;
      
    }
    type RoutesResult = RoutesDefaultStatusCode of RoutesDefaultStatusCodeResponse|RoutesStatusCode0 of RoutesStatusCode0Response

    type RoutesArgs = {
      bodyParams:RoutesBodyParams
    }

    //#region Body parameters
    [<CLIMutable>]
    type SupportedLocationsBodyParams = RequestSupportedLocations 
    //#endregion

    
    type SupportedLocationsDefaultStatusCodeResponse = {
      content:ResponseSupportedLocations;
      
    }
    
    type SupportedLocationsStatusCode0Response = {
      content:ResponseError;
      
    }
    type SupportedLocationsResult = SupportedLocationsDefaultStatusCode of SupportedLocationsDefaultStatusCodeResponse|SupportedLocationsStatusCode0 of SupportedLocationsStatusCode0Response

    type SupportedLocationsArgs = {
      bodyParams:SupportedLocationsBodyParams
    }

    //#region Body parameters
    [<CLIMutable>]
    type TimeFilterBodyParams = RequestTimeFilter 
    //#endregion

    
    type TimeFilterDefaultStatusCodeResponse = {
      content:ResponseTimeFilter;
      
    }
    
    type TimeFilterStatusCode0Response = {
      content:ResponseError;
      
    }
    type TimeFilterResult = TimeFilterDefaultStatusCode of TimeFilterDefaultStatusCodeResponse|TimeFilterStatusCode0 of TimeFilterStatusCode0Response

    type TimeFilterArgs = {
      bodyParams:TimeFilterBodyParams
    }

    //#region Body parameters
    [<CLIMutable>]
    type TimeFilterFastBodyParams = RequestTimeFilterFast 
    //#endregion

    
    type TimeFilterFastDefaultStatusCodeResponse = {
      content:ResponseTimeFilterFast;
      
    }
    
    type TimeFilterFastStatusCode0Response = {
      content:ResponseError;
      
    }
    type TimeFilterFastResult = TimeFilterFastDefaultStatusCode of TimeFilterFastDefaultStatusCodeResponse|TimeFilterFastStatusCode0 of TimeFilterFastStatusCode0Response

    type TimeFilterFastArgs = {
      bodyParams:TimeFilterFastBodyParams
    }

    //#region Body parameters
    [<CLIMutable>]
    type TimeFilterPostcodeDistrictsBodyParams = RequestTimeFilterPostcodeDistricts 
    //#endregion

    
    type TimeFilterPostcodeDistrictsDefaultStatusCodeResponse = {
      content:ResponseTimeFilterPostcodeDistricts;
      
    }
    
    type TimeFilterPostcodeDistrictsStatusCode0Response = {
      content:ResponseError;
      
    }
    type TimeFilterPostcodeDistrictsResult = TimeFilterPostcodeDistrictsDefaultStatusCode of TimeFilterPostcodeDistrictsDefaultStatusCodeResponse|TimeFilterPostcodeDistrictsStatusCode0 of TimeFilterPostcodeDistrictsStatusCode0Response

    type TimeFilterPostcodeDistrictsArgs = {
      bodyParams:TimeFilterPostcodeDistrictsBodyParams
    }

    //#region Body parameters
    [<CLIMutable>]
    type TimeFilterPostcodeSectorsBodyParams = RequestTimeFilterPostcodeSectors 
    //#endregion

    
    type TimeFilterPostcodeSectorsDefaultStatusCodeResponse = {
      content:ResponseTimeFilterPostcodeSectors;
      
    }
    
    type TimeFilterPostcodeSectorsStatusCode0Response = {
      content:ResponseError;
      
    }
    type TimeFilterPostcodeSectorsResult = TimeFilterPostcodeSectorsDefaultStatusCode of TimeFilterPostcodeSectorsDefaultStatusCodeResponse|TimeFilterPostcodeSectorsStatusCode0 of TimeFilterPostcodeSectorsStatusCode0Response

    type TimeFilterPostcodeSectorsArgs = {
      bodyParams:TimeFilterPostcodeSectorsBodyParams
    }

    //#region Body parameters
    [<CLIMutable>]
    type TimeFilterPostcodesBodyParams = RequestTimeFilterPostcodes 
    //#endregion

    
    type TimeFilterPostcodesDefaultStatusCodeResponse = {
      content:ResponseTimeFilterPostcodes;
      
    }
    
    type TimeFilterPostcodesStatusCode0Response = {
      content:ResponseError;
      
    }
    type TimeFilterPostcodesResult = TimeFilterPostcodesDefaultStatusCode of TimeFilterPostcodesDefaultStatusCodeResponse|TimeFilterPostcodesStatusCode0 of TimeFilterPostcodesStatusCode0Response

    type TimeFilterPostcodesArgs = {
      bodyParams:TimeFilterPostcodesBodyParams
    }

    //#region Body parameters
    [<CLIMutable>]
    type TimeMapBodyParams = RequestTimeMap 
    //#endregion

    
    type TimeMapDefaultStatusCodeResponse = {
      content:ResponseTimeMap;
      
    }
    
    type TimeMapStatusCode0Response = {
      content:ResponseError;
      
    }
    type TimeMapResult = TimeMapDefaultStatusCode of TimeMapDefaultStatusCodeResponse|TimeMapStatusCode0 of TimeMapStatusCode0Response

    type TimeMapArgs = {
      bodyParams:TimeMapBodyParams
    }
    