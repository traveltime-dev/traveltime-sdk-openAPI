import { ResponseContext, RequestContext, HttpFile } from '../http/http';
import * as models from '../models/all';
import { Configuration} from '../configuration'

import { Coords } from '../models/Coords';
import { RequestArrivalTimePeriod } from '../models/RequestArrivalTimePeriod';
import { RequestLevelOfDetail } from '../models/RequestLevelOfDetail';
import { RequestLocation } from '../models/RequestLocation';
import { RequestRangeFull } from '../models/RequestRangeFull';
import { RequestRangeNoMaxResults } from '../models/RequestRangeNoMaxResults';
import { RequestRoutes } from '../models/RequestRoutes';
import { RequestRoutesArrivalSearch } from '../models/RequestRoutesArrivalSearch';
import { RequestRoutesDepartureSearch } from '../models/RequestRoutesDepartureSearch';
import { RequestRoutesProperty } from '../models/RequestRoutesProperty';
import { RequestSupportedLocations } from '../models/RequestSupportedLocations';
import { RequestTimeFilter } from '../models/RequestTimeFilter';
import { RequestTimeFilterArrivalSearch } from '../models/RequestTimeFilterArrivalSearch';
import { RequestTimeFilterDepartureSearch } from '../models/RequestTimeFilterDepartureSearch';
import { RequestTimeFilterFast } from '../models/RequestTimeFilterFast';
import { RequestTimeFilterFastArrivalManyToOneSearch } from '../models/RequestTimeFilterFastArrivalManyToOneSearch';
import { RequestTimeFilterFastArrivalOneToManySearch } from '../models/RequestTimeFilterFastArrivalOneToManySearch';
import { RequestTimeFilterFastArrivalSearches } from '../models/RequestTimeFilterFastArrivalSearches';
import { RequestTimeFilterFastProperty } from '../models/RequestTimeFilterFastProperty';
import { RequestTimeFilterPostcodeDistricts } from '../models/RequestTimeFilterPostcodeDistricts';
import { RequestTimeFilterPostcodeDistrictsArrivalSearch } from '../models/RequestTimeFilterPostcodeDistrictsArrivalSearch';
import { RequestTimeFilterPostcodeDistrictsDepartureSearch } from '../models/RequestTimeFilterPostcodeDistrictsDepartureSearch';
import { RequestTimeFilterPostcodeDistrictsProperty } from '../models/RequestTimeFilterPostcodeDistrictsProperty';
import { RequestTimeFilterPostcodeSectors } from '../models/RequestTimeFilterPostcodeSectors';
import { RequestTimeFilterPostcodeSectorsArrivalSearch } from '../models/RequestTimeFilterPostcodeSectorsArrivalSearch';
import { RequestTimeFilterPostcodeSectorsDepartureSearch } from '../models/RequestTimeFilterPostcodeSectorsDepartureSearch';
import { RequestTimeFilterPostcodeSectorsProperty } from '../models/RequestTimeFilterPostcodeSectorsProperty';
import { RequestTimeFilterPostcodes } from '../models/RequestTimeFilterPostcodes';
import { RequestTimeFilterPostcodesArrivalSearch } from '../models/RequestTimeFilterPostcodesArrivalSearch';
import { RequestTimeFilterPostcodesDepartureSearch } from '../models/RequestTimeFilterPostcodesDepartureSearch';
import { RequestTimeFilterPostcodesProperty } from '../models/RequestTimeFilterPostcodesProperty';
import { RequestTimeFilterProperty } from '../models/RequestTimeFilterProperty';
import { RequestTimeMap } from '../models/RequestTimeMap';
import { RequestTimeMapArrivalSearch } from '../models/RequestTimeMapArrivalSearch';
import { RequestTimeMapDepartureSearch } from '../models/RequestTimeMapDepartureSearch';
import { RequestTimeMapProperty } from '../models/RequestTimeMapProperty';
import { RequestTransportation } from '../models/RequestTransportation';
import { RequestTransportationFast } from '../models/RequestTransportationFast';
import { RequestUnionOnIntersection } from '../models/RequestUnionOnIntersection';
import { ResponseBoundingBox } from '../models/ResponseBoundingBox';
import { ResponseBox } from '../models/ResponseBox';
import { ResponseDistanceBreakdownItem } from '../models/ResponseDistanceBreakdownItem';
import { ResponseError } from '../models/ResponseError';
import { ResponseFareTicket } from '../models/ResponseFareTicket';
import { ResponseFares } from '../models/ResponseFares';
import { ResponseFaresBreakdownItem } from '../models/ResponseFaresBreakdownItem';
import { ResponseFaresFast } from '../models/ResponseFaresFast';
import { ResponseGeocoding } from '../models/ResponseGeocoding';
import { ResponseGeocodingGeoJsonFeature } from '../models/ResponseGeocodingGeoJsonFeature';
import { ResponseGeocodingGeometry } from '../models/ResponseGeocodingGeometry';
import { ResponseGeocodingProperties } from '../models/ResponseGeocodingProperties';
import { ResponseMapInfo } from '../models/ResponseMapInfo';
import { ResponseMapInfoFeatures } from '../models/ResponseMapInfoFeatures';
import { ResponseMapInfoFeaturesPublicTransport } from '../models/ResponseMapInfoFeaturesPublicTransport';
import { ResponseMapInfoMap } from '../models/ResponseMapInfoMap';
import { ResponseRoute } from '../models/ResponseRoute';
import { ResponseRoutePart } from '../models/ResponseRoutePart';
import { ResponseRoutes } from '../models/ResponseRoutes';
import { ResponseRoutesLocation } from '../models/ResponseRoutesLocation';
import { ResponseRoutesProperties } from '../models/ResponseRoutesProperties';
import { ResponseRoutesResult } from '../models/ResponseRoutesResult';
import { ResponseShape } from '../models/ResponseShape';
import { ResponseSupportedLocation } from '../models/ResponseSupportedLocation';
import { ResponseSupportedLocations } from '../models/ResponseSupportedLocations';
import { ResponseTimeFilter } from '../models/ResponseTimeFilter';
import { ResponseTimeFilterFast } from '../models/ResponseTimeFilterFast';
import { ResponseTimeFilterFastLocation } from '../models/ResponseTimeFilterFastLocation';
import { ResponseTimeFilterFastProperties } from '../models/ResponseTimeFilterFastProperties';
import { ResponseTimeFilterFastResult } from '../models/ResponseTimeFilterFastResult';
import { ResponseTimeFilterLocation } from '../models/ResponseTimeFilterLocation';
import { ResponseTimeFilterPostcode } from '../models/ResponseTimeFilterPostcode';
import { ResponseTimeFilterPostcodeDistrict } from '../models/ResponseTimeFilterPostcodeDistrict';
import { ResponseTimeFilterPostcodeDistrictProperties } from '../models/ResponseTimeFilterPostcodeDistrictProperties';
import { ResponseTimeFilterPostcodeDistricts } from '../models/ResponseTimeFilterPostcodeDistricts';
import { ResponseTimeFilterPostcodeDistrictsResult } from '../models/ResponseTimeFilterPostcodeDistrictsResult';
import { ResponseTimeFilterPostcodeSector } from '../models/ResponseTimeFilterPostcodeSector';
import { ResponseTimeFilterPostcodeSectorProperties } from '../models/ResponseTimeFilterPostcodeSectorProperties';
import { ResponseTimeFilterPostcodeSectors } from '../models/ResponseTimeFilterPostcodeSectors';
import { ResponseTimeFilterPostcodeSectorsResult } from '../models/ResponseTimeFilterPostcodeSectorsResult';
import { ResponseTimeFilterPostcodes } from '../models/ResponseTimeFilterPostcodes';
import { ResponseTimeFilterPostcodesProperties } from '../models/ResponseTimeFilterPostcodesProperties';
import { ResponseTimeFilterPostcodesResult } from '../models/ResponseTimeFilterPostcodesResult';
import { ResponseTimeFilterProperties } from '../models/ResponseTimeFilterProperties';
import { ResponseTimeFilterResult } from '../models/ResponseTimeFilterResult';
import { ResponseTimeMap } from '../models/ResponseTimeMap';
import { ResponseTimeMapBoundingBoxes } from '../models/ResponseTimeMapBoundingBoxes';
import { ResponseTimeMapBoundingBoxesResult } from '../models/ResponseTimeMapBoundingBoxesResult';
import { ResponseTimeMapProperties } from '../models/ResponseTimeMapProperties';
import { ResponseTimeMapResult } from '../models/ResponseTimeMapResult';
import { ResponseTimeMapWkt } from '../models/ResponseTimeMapWkt';
import { ResponseTimeMapWktResult } from '../models/ResponseTimeMapWktResult';
import { ResponseTransportationMode } from '../models/ResponseTransportationMode';
import { ResponseTravelTimeStatistics } from '../models/ResponseTravelTimeStatistics';

import { ObservableDefaultApi } from "./ObservableAPI";
import { DefaultApiRequestFactory, DefaultApiResponseProcessor} from "../apis/DefaultApi";

export interface DefaultApiGeocodingReverseSearchRequest {
    /**
     * 
     * @type number
     * @memberof DefaultApigeocodingReverseSearch
     */
    lat: number
    /**
     * 
     * @type number
     * @memberof DefaultApigeocodingReverseSearch
     */
    lng: number
    /**
     * 
     * @type string
     * @memberof DefaultApigeocodingReverseSearch
     */
    withinCountry?: string
}

export interface DefaultApiGeocodingSearchRequest {
    /**
     * 
     * @type string
     * @memberof DefaultApigeocodingSearch
     */
    query: string
    /**
     * 
     * @type number
     * @memberof DefaultApigeocodingSearch
     */
    focusLat?: number
    /**
     * 
     * @type number
     * @memberof DefaultApigeocodingSearch
     */
    focusLng?: number
    /**
     * 
     * @type string
     * @memberof DefaultApigeocodingSearch
     */
    withinCountry?: string
}

export interface DefaultApiMapInfoRequest {
}

export interface DefaultApiRoutesRequest {
    /**
     * 
     * @type RequestRoutes
     * @memberof DefaultApiroutes
     */
    requestRoutes: RequestRoutes
}

export interface DefaultApiSupportedLocationsRequest {
    /**
     * 
     * @type RequestSupportedLocations
     * @memberof DefaultApisupportedLocations
     */
    requestSupportedLocations: RequestSupportedLocations
}

export interface DefaultApiTimeFilterRequest {
    /**
     * 
     * @type RequestTimeFilter
     * @memberof DefaultApitimeFilter
     */
    requestTimeFilter: RequestTimeFilter
}

export interface DefaultApiTimeFilterFastRequest {
    /**
     * 
     * @type RequestTimeFilterFast
     * @memberof DefaultApitimeFilterFast
     */
    requestTimeFilterFast: RequestTimeFilterFast
}

export interface DefaultApiTimeFilterPostcodeDistrictsRequest {
    /**
     * 
     * @type RequestTimeFilterPostcodeDistricts
     * @memberof DefaultApitimeFilterPostcodeDistricts
     */
    requestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts
}

export interface DefaultApiTimeFilterPostcodeSectorsRequest {
    /**
     * 
     * @type RequestTimeFilterPostcodeSectors
     * @memberof DefaultApitimeFilterPostcodeSectors
     */
    requestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors
}

export interface DefaultApiTimeFilterPostcodesRequest {
    /**
     * 
     * @type RequestTimeFilterPostcodes
     * @memberof DefaultApitimeFilterPostcodes
     */
    requestTimeFilterPostcodes: RequestTimeFilterPostcodes
}

export interface DefaultApiTimeMapRequest {
    /**
     * 
     * @type RequestTimeMap
     * @memberof DefaultApitimeMap
     */
    requestTimeMap: RequestTimeMap
}

export class ObjectDefaultApi {
    private api: ObservableDefaultApi

    public constructor(configuration: Configuration, requestFactory?: DefaultApiRequestFactory, responseProcessor?: DefaultApiResponseProcessor) {
        this.api = new ObservableDefaultApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * @param param the request object
     */
    public geocodingReverseSearch(param: DefaultApiGeocodingReverseSearchRequest, options?: Configuration): Promise<ResponseGeocoding> {
        return this.api.geocodingReverseSearch(param.lat, param.lng, param.withinCountry,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public geocodingSearch(param: DefaultApiGeocodingSearchRequest, options?: Configuration): Promise<ResponseGeocoding> {
        return this.api.geocodingSearch(param.query, param.focusLat, param.focusLng, param.withinCountry,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public mapInfo(param: DefaultApiMapInfoRequest, options?: Configuration): Promise<ResponseMapInfo> {
        return this.api.mapInfo( options).toPromise();
    }

    /**
     * @param param the request object
     */
    public routes(param: DefaultApiRoutesRequest, options?: Configuration): Promise<ResponseRoutes> {
        return this.api.routes(param.requestRoutes,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public supportedLocations(param: DefaultApiSupportedLocationsRequest, options?: Configuration): Promise<ResponseSupportedLocations> {
        return this.api.supportedLocations(param.requestSupportedLocations,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public timeFilter(param: DefaultApiTimeFilterRequest, options?: Configuration): Promise<ResponseTimeFilter> {
        return this.api.timeFilter(param.requestTimeFilter,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public timeFilterFast(param: DefaultApiTimeFilterFastRequest, options?: Configuration): Promise<ResponseTimeFilterFast> {
        return this.api.timeFilterFast(param.requestTimeFilterFast,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public timeFilterPostcodeDistricts(param: DefaultApiTimeFilterPostcodeDistrictsRequest, options?: Configuration): Promise<ResponseTimeFilterPostcodeDistricts> {
        return this.api.timeFilterPostcodeDistricts(param.requestTimeFilterPostcodeDistricts,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public timeFilterPostcodeSectors(param: DefaultApiTimeFilterPostcodeSectorsRequest, options?: Configuration): Promise<ResponseTimeFilterPostcodeSectors> {
        return this.api.timeFilterPostcodeSectors(param.requestTimeFilterPostcodeSectors,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public timeFilterPostcodes(param: DefaultApiTimeFilterPostcodesRequest, options?: Configuration): Promise<ResponseTimeFilterPostcodes> {
        return this.api.timeFilterPostcodes(param.requestTimeFilterPostcodes,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public timeMap(param: DefaultApiTimeMapRequest, options?: Configuration): Promise<ResponseTimeMap> {
        return this.api.timeMap(param.requestTimeMap,  options).toPromise();
    }

}
