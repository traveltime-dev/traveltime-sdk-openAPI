import { ResponseContext, RequestContext, HttpFile } from '../http/http';
import * as models from '../models/all';
import { Configuration} from '../configuration'
import { Observable, of, from } from '../rxjsStub';
import {mergeMap, map} from  '../rxjsStub';
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

import { DefaultApiRequestFactory, DefaultApiResponseProcessor} from "../apis/DefaultApi";
export class ObservableDefaultApi {
    private requestFactory: DefaultApiRequestFactory;
    private responseProcessor: DefaultApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: DefaultApiRequestFactory,
        responseProcessor?: DefaultApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new DefaultApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new DefaultApiResponseProcessor();
    }

    /**
     * @param lat 
     * @param lng 
     * @param within_country 
     */
    public geocodingReverseSearch(lat: number, lng: number, within_country?: string, options?: Configuration): Observable<ResponseGeocoding> {
        const requestContextPromise = this.requestFactory.geocodingReverseSearch(lat, lng, within_country, options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.geocodingReverseSearch(rsp)));
            }));
    }
 
    /**
     * @param query 
     * @param focus_lat 
     * @param focus_lng 
     * @param within_country 
     */
    public geocodingSearch(query: string, focus_lat?: number, focus_lng?: number, within_country?: string, options?: Configuration): Observable<ResponseGeocoding> {
        const requestContextPromise = this.requestFactory.geocodingSearch(query, focus_lat, focus_lng, within_country, options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.geocodingSearch(rsp)));
            }));
    }
 
    /**
     */
    public mapInfo(options?: Configuration): Observable<ResponseMapInfo> {
        const requestContextPromise = this.requestFactory.mapInfo(options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.mapInfo(rsp)));
            }));
    }
 
    /**
     * @param RequestRoutes 
     */
    public routes(RequestRoutes: RequestRoutes, options?: Configuration): Observable<ResponseRoutes> {
        const requestContextPromise = this.requestFactory.routes(RequestRoutes, options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.routes(rsp)));
            }));
    }
 
    /**
     * @param RequestSupportedLocations 
     */
    public supportedLocations(RequestSupportedLocations: RequestSupportedLocations, options?: Configuration): Observable<ResponseSupportedLocations> {
        const requestContextPromise = this.requestFactory.supportedLocations(RequestSupportedLocations, options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.supportedLocations(rsp)));
            }));
    }
 
    /**
     * @param RequestTimeFilter 
     */
    public timeFilter(RequestTimeFilter: RequestTimeFilter, options?: Configuration): Observable<ResponseTimeFilter> {
        const requestContextPromise = this.requestFactory.timeFilter(RequestTimeFilter, options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.timeFilter(rsp)));
            }));
    }
 
    /**
     * @param RequestTimeFilterFast 
     */
    public timeFilterFast(RequestTimeFilterFast: RequestTimeFilterFast, options?: Configuration): Observable<ResponseTimeFilterFast> {
        const requestContextPromise = this.requestFactory.timeFilterFast(RequestTimeFilterFast, options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.timeFilterFast(rsp)));
            }));
    }
 
    /**
     * @param RequestTimeFilterPostcodeDistricts 
     */
    public timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts, options?: Configuration): Observable<ResponseTimeFilterPostcodeDistricts> {
        const requestContextPromise = this.requestFactory.timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts, options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.timeFilterPostcodeDistricts(rsp)));
            }));
    }
 
    /**
     * @param RequestTimeFilterPostcodeSectors 
     */
    public timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors, options?: Configuration): Observable<ResponseTimeFilterPostcodeSectors> {
        const requestContextPromise = this.requestFactory.timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors, options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.timeFilterPostcodeSectors(rsp)));
            }));
    }
 
    /**
     * @param RequestTimeFilterPostcodes 
     */
    public timeFilterPostcodes(RequestTimeFilterPostcodes: RequestTimeFilterPostcodes, options?: Configuration): Observable<ResponseTimeFilterPostcodes> {
        const requestContextPromise = this.requestFactory.timeFilterPostcodes(RequestTimeFilterPostcodes, options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.timeFilterPostcodes(rsp)));
            }));
    }
 
    /**
     * @param RequestTimeMap 
     */
    public timeMap(RequestTimeMap: RequestTimeMap, options?: Configuration): Observable<ResponseTimeMap> {
        const requestContextPromise = this.requestFactory.timeMap(RequestTimeMap, options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.timeMap(rsp)));
            }));
    }
 
}
