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
open DefaultApiHandlerParams
open DefaultApiServiceInterface
open System.Collections.Generic
open System
open Giraffe

module DefaultApiServiceImplementation =
    
    //#region Service implementation
    type DefaultApiServiceImpl() = 
      interface IDefaultApiService with
      
        member this.GeocodingReverseSearch ctx args =
          if true then 
            let content = "Match a query string to geographic coordinates. [Docs link](http://docs.traveltimeplatform.com/reference/geocoding-search/)" :> obj :?> ResponseGeocoding // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GeocodingReverseSearchDefaultStatusCode { content = content }
          else
            let content = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)" :> obj :?> ResponseError // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GeocodingReverseSearchStatusCode0 { content = content }

        member this.GeocodingSearch ctx args =
          if true then 
            let content = "Match a query string to geographic coordinates. [Docs link](http://docs.traveltimeplatform.com/reference/geocoding-search/)" :> obj :?> ResponseGeocoding // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GeocodingSearchDefaultStatusCode { content = content }
          else
            let content = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)" :> obj :?> ResponseError // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GeocodingSearchStatusCode0 { content = content }

        member this.MapInfo ctx  =
          if true then 
            let content = "Returns information about currently supported countries. [Docs link](http://docs.traveltimeplatform.com/reference/map-info/)" :> obj :?> ResponseMapInfo // this cast is obviously wrong, and is only intended to allow generated project to compile   
            MapInfoDefaultStatusCode { content = content }
          else
            let content = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)" :> obj :?> ResponseError // this cast is obviously wrong, and is only intended to allow generated project to compile   
            MapInfoStatusCode0 { content = content }

        member this.Routes ctx args =
          if true then 
            let content = "Returns routing information between source and destinations. [Docs link](http://docs.traveltimeplatform.com/reference/routes/)" :> obj :?> ResponseRoutes // this cast is obviously wrong, and is only intended to allow generated project to compile   
            RoutesDefaultStatusCode { content = content }
          else
            let content = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)" :> obj :?> ResponseError // this cast is obviously wrong, and is only intended to allow generated project to compile   
            RoutesStatusCode0 { content = content }

        member this.SupportedLocations ctx args =
          if true then 
            let content = "Find out what points are supported by our api. [Docs link](http://docs.traveltimeplatform.com/reference/supported-locations/)" :> obj :?> ResponseSupportedLocations // this cast is obviously wrong, and is only intended to allow generated project to compile   
            SupportedLocationsDefaultStatusCode { content = content }
          else
            let content = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)" :> obj :?> ResponseError // this cast is obviously wrong, and is only intended to allow generated project to compile   
            SupportedLocationsStatusCode0 { content = content }

        member this.TimeFilter ctx args =
          if true then 
            let content = "Given origin and destination points filter out points that cannot be reached within specified time limit. [Docs link](http://docs.traveltimeplatform.com/reference/time-filter)" :> obj :?> ResponseTimeFilter // this cast is obviously wrong, and is only intended to allow generated project to compile   
            TimeFilterDefaultStatusCode { content = content }
          else
            let content = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)" :> obj :?> ResponseError // this cast is obviously wrong, and is only intended to allow generated project to compile   
            TimeFilterStatusCode0 { content = content }

        member this.TimeFilterFast ctx args =
          if true then 
            let content = "A very fast version of Time Filter. [Docs link](http://docs.traveltimeplatform.com/reference/time-filter-fast/)" :> obj :?> ResponseTimeFilterFast // this cast is obviously wrong, and is only intended to allow generated project to compile   
            TimeFilterFastDefaultStatusCode { content = content }
          else
            let content = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)" :> obj :?> ResponseError // this cast is obviously wrong, and is only intended to allow generated project to compile   
            TimeFilterFastStatusCode0 { content = content }

        member this.TimeFilterPostcodeDistricts ctx args =
          if true then 
            let content = "Find districts that have a certain coverage from origin and get statistics about postcodes within such districts. [Docs link](http://docs.traveltimeplatform.com/reference/postcode-district-filter/)" :> obj :?> ResponseTimeFilterPostcodeDistricts // this cast is obviously wrong, and is only intended to allow generated project to compile   
            TimeFilterPostcodeDistrictsDefaultStatusCode { content = content }
          else
            let content = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)" :> obj :?> ResponseError // this cast is obviously wrong, and is only intended to allow generated project to compile   
            TimeFilterPostcodeDistrictsStatusCode0 { content = content }

        member this.TimeFilterPostcodeSectors ctx args =
          if true then 
            let content = "Find sectors that have a certain coverage from origin and get statistics about postcodes within such sectors. [Docs link](http://docs.traveltimeplatform.com/reference/postcode-sector-filter/)" :> obj :?> ResponseTimeFilterPostcodeSectors // this cast is obviously wrong, and is only intended to allow generated project to compile   
            TimeFilterPostcodeSectorsDefaultStatusCode { content = content }
          else
            let content = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)" :> obj :?> ResponseError // this cast is obviously wrong, and is only intended to allow generated project to compile   
            TimeFilterPostcodeSectorsStatusCode0 { content = content }

        member this.TimeFilterPostcodes ctx args =
          if true then 
            let content = "Find reachable postcodes from origin and get statistics about such postcodes. [Docs link](http://docs.traveltimeplatform.com/reference/postcode-search/)" :> obj :?> ResponseTimeFilterPostcodes // this cast is obviously wrong, and is only intended to allow generated project to compile   
            TimeFilterPostcodesDefaultStatusCode { content = content }
          else
            let content = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)" :> obj :?> ResponseError // this cast is obviously wrong, and is only intended to allow generated project to compile   
            TimeFilterPostcodesStatusCode0 { content = content }

        member this.TimeMap ctx args =
          if true then 
            let content = "Given origin coordinates, find shapes of zones reachable within corresponding travel time. [Docs link](http://docs.traveltimeplatform.com/reference/time-map/)" :> obj :?> ResponseTimeMap // this cast is obviously wrong, and is only intended to allow generated project to compile   
            TimeMapDefaultStatusCode { content = content }
          else
            let content = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)" :> obj :?> ResponseError // this cast is obviously wrong, and is only intended to allow generated project to compile   
            TimeMapStatusCode0 { content = content }

      //#endregion

    let DefaultApiService = DefaultApiServiceImpl() :> IDefaultApiService