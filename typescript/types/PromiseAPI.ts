import { ResponseContext, RequestContext, HttpFile } from '../http/http';
import * as models from '../models/all';
import { Configuration} from '../configuration'

import { Coords } from '../models/Coords';
import { RequestArrivalTimePeriod } from '../models/RequestArrivalTimePeriod';
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
import { ObservableDefaultApi } from './ObservableAPI';

import { DefaultApiRequestFactory, DefaultApiResponseProcessor} from "../apis/DefaultApi";
export class PromiseDefaultApi {
    private api: ObservableDefaultApi

    public constructor(
        configuration: Configuration,
        requestFactory?: DefaultApiRequestFactory,
        responseProcessor?: DefaultApiResponseProcessor
    ) {
        this.api = new ObservableDefaultApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * @param lat 
     * @param lng 
     * @param withinCountry 
     */
    public geocodingReverseSearch(lat: number, lng: number, withinCountry?: string, options?: Configuration): Promise<ResponseGeocoding> {
        const result = this.api.geocodingReverseSearch(lat, lng, withinCountry, options);
        return result.toPromise();
    }

    /**
     * @param query 
     * @param focusLat 
     * @param focusLng 
     * @param withinCountry 
     */
    public geocodingSearch(query: string, focusLat?: number, focusLng?: number, withinCountry?: string, options?: Configuration): Promise<ResponseGeocoding> {
        const result = this.api.geocodingSearch(query, focusLat, focusLng, withinCountry, options);
        return result.toPromise();
    }

    /**
     */
    public mapInfo(options?: Configuration): Promise<ResponseMapInfo> {
        const result = this.api.mapInfo(options);
        return result.toPromise();
    }

    /**
     * @param requestRoutes 
     */
    public routes(requestRoutes: RequestRoutes, options?: Configuration): Promise<ResponseRoutes> {
        const result = this.api.routes(requestRoutes, options);
        return result.toPromise();
    }

    /**
     * @param requestSupportedLocations 
     */
    public supportedLocations(requestSupportedLocations: RequestSupportedLocations, options?: Configuration): Promise<ResponseSupportedLocations> {
        const result = this.api.supportedLocations(requestSupportedLocations, options);
        return result.toPromise();
    }

    /**
     * @param requestTimeFilter 
     */
    public timeFilter(requestTimeFilter: RequestTimeFilter, options?: Configuration): Promise<ResponseTimeFilter> {
        const result = this.api.timeFilter(requestTimeFilter, options);
        return result.toPromise();
    }

    /**
     * @param requestTimeFilterFast 
     */
    public timeFilterFast(requestTimeFilterFast: RequestTimeFilterFast, options?: Configuration): Promise<ResponseTimeFilterFast> {
        const result = this.api.timeFilterFast(requestTimeFilterFast, options);
        return result.toPromise();
    }

    /**
     * @param requestTimeFilterPostcodeDistricts 
     */
    public timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts, options?: Configuration): Promise<ResponseTimeFilterPostcodeDistricts> {
        const result = this.api.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts, options);
        return result.toPromise();
    }

    /**
     * @param requestTimeFilterPostcodeSectors 
     */
    public timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors, options?: Configuration): Promise<ResponseTimeFilterPostcodeSectors> {
        const result = this.api.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors, options);
        return result.toPromise();
    }

    /**
     * @param requestTimeFilterPostcodes 
     */
    public timeFilterPostcodes(requestTimeFilterPostcodes: RequestTimeFilterPostcodes, options?: Configuration): Promise<ResponseTimeFilterPostcodes> {
        const result = this.api.timeFilterPostcodes(requestTimeFilterPostcodes, options);
        return result.toPromise();
    }

    /**
     * @param requestTimeMap 
     */
    public timeMap(requestTimeMap: RequestTimeMap, options?: Configuration): Promise<ResponseTimeMap> {
        const result = this.api.timeMap(requestTimeMap, options);
        return result.toPromise();
    }


}



