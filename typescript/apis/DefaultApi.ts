// TODO: better import syntax?
import { BaseAPIRequestFactory, RequiredError } from './baseapi';
import {Configuration} from '../configuration';
import { RequestContext, HttpMethod, ResponseContext, HttpFile} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {isCodeInRange} from '../util';

import { RequestRoutes } from '../models/RequestRoutes';
import { RequestSupportedLocations } from '../models/RequestSupportedLocations';
import { RequestTimeFilter } from '../models/RequestTimeFilter';
import { RequestTimeFilterFast } from '../models/RequestTimeFilterFast';
import { RequestTimeFilterPostcodeDistricts } from '../models/RequestTimeFilterPostcodeDistricts';
import { RequestTimeFilterPostcodeSectors } from '../models/RequestTimeFilterPostcodeSectors';
import { RequestTimeFilterPostcodes } from '../models/RequestTimeFilterPostcodes';
import { RequestTimeMap } from '../models/RequestTimeMap';
import { ResponseError } from '../models/ResponseError';
import { ResponseGeocoding } from '../models/ResponseGeocoding';
import { ResponseMapInfo } from '../models/ResponseMapInfo';
import { ResponseRoutes } from '../models/ResponseRoutes';
import { ResponseSupportedLocations } from '../models/ResponseSupportedLocations';
import { ResponseTimeFilter } from '../models/ResponseTimeFilter';
import { ResponseTimeFilterFast } from '../models/ResponseTimeFilterFast';
import { ResponseTimeFilterPostcodeDistricts } from '../models/ResponseTimeFilterPostcodeDistricts';
import { ResponseTimeFilterPostcodeSectors } from '../models/ResponseTimeFilterPostcodeSectors';
import { ResponseTimeFilterPostcodes } from '../models/ResponseTimeFilterPostcodes';
import { ResponseTimeMap } from '../models/ResponseTimeMap';

/**
 * no description
 */
export class DefaultApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * @param lat 
     * @param lng 
     * @param within_country 
     */
    public async geocodingReverseSearch(lat: number, lng: number, within_country?: string, options?: Configuration): Promise<RequestContext> {
        let config = options || this.configuration;

        // verify required parameter 'lat' is not null or undefined
        if (lat === null || lat === undefined) {
            throw new RequiredError('Required parameter lat was null or undefined when calling geocodingReverseSearch.');
        }


        // verify required parameter 'lng' is not null or undefined
        if (lng === null || lng === undefined) {
            throw new RequiredError('Required parameter lng was null or undefined when calling geocodingReverseSearch.');
        }



        // Path Params
        const localVarPath = '/v4/geocoding/reverse';

        // Make Request Context
        const requestContext = config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (lat !== undefined) {
            requestContext.setQueryParam("lat", ObjectSerializer.serialize(lat, "number", "double"));
        }
        if (lng !== undefined) {
            requestContext.setQueryParam("lng", ObjectSerializer.serialize(lng, "number", "double"));
        }
        if (within_country !== undefined) {
            requestContext.setQueryParam("within.country", ObjectSerializer.serialize(within_country, "string", ""));
        }

        // Header Params

        // Form Params


        // Body Params

        let authMethod = null;
        // Apply auth methods
        authMethod = config.authMethods["ApiKey"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }
        authMethod = config.authMethods["ApplicationId"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * @param query 
     * @param focus_lat 
     * @param focus_lng 
     * @param within_country 
     */
    public async geocodingSearch(query: string, focus_lat?: number, focus_lng?: number, within_country?: string, options?: Configuration): Promise<RequestContext> {
        let config = options || this.configuration;

        // verify required parameter 'query' is not null or undefined
        if (query === null || query === undefined) {
            throw new RequiredError('Required parameter query was null or undefined when calling geocodingSearch.');
        }





        // Path Params
        const localVarPath = '/v4/geocoding/search';

        // Make Request Context
        const requestContext = config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (query !== undefined) {
            requestContext.setQueryParam("query", ObjectSerializer.serialize(query, "string", ""));
        }
        if (focus_lat !== undefined) {
            requestContext.setQueryParam("focus.lat", ObjectSerializer.serialize(focus_lat, "number", "double"));
        }
        if (focus_lng !== undefined) {
            requestContext.setQueryParam("focus.lng", ObjectSerializer.serialize(focus_lng, "number", "double"));
        }
        if (within_country !== undefined) {
            requestContext.setQueryParam("within.country", ObjectSerializer.serialize(within_country, "string", ""));
        }

        // Header Params

        // Form Params


        // Body Params

        let authMethod = null;
        // Apply auth methods
        authMethod = config.authMethods["ApiKey"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }
        authMethod = config.authMethods["ApplicationId"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     */
    public async mapInfo(options?: Configuration): Promise<RequestContext> {
        let config = options || this.configuration;

        // Path Params
        const localVarPath = '/v4/map-info';

        // Make Request Context
        const requestContext = config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params

        // Header Params

        // Form Params


        // Body Params

        let authMethod = null;
        // Apply auth methods
        authMethod = config.authMethods["ApiKey"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }
        authMethod = config.authMethods["ApplicationId"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * @param RequestRoutes 
     */
    public async routes(RequestRoutes: RequestRoutes, options?: Configuration): Promise<RequestContext> {
        let config = options || this.configuration;

        // verify required parameter 'RequestRoutes' is not null or undefined
        if (RequestRoutes === null || RequestRoutes === undefined) {
            throw new RequiredError('Required parameter RequestRoutes was null or undefined when calling routes.');
        }


        // Path Params
        const localVarPath = '/v4/routes';

        // Make Request Context
        const requestContext = config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params

        // Header Params

        // Form Params


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(RequestRoutes, "RequestRoutes", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

        let authMethod = null;
        // Apply auth methods
        authMethod = config.authMethods["ApiKey"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }
        authMethod = config.authMethods["ApplicationId"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * @param RequestSupportedLocations 
     */
    public async supportedLocations(RequestSupportedLocations: RequestSupportedLocations, options?: Configuration): Promise<RequestContext> {
        let config = options || this.configuration;

        // verify required parameter 'RequestSupportedLocations' is not null or undefined
        if (RequestSupportedLocations === null || RequestSupportedLocations === undefined) {
            throw new RequiredError('Required parameter RequestSupportedLocations was null or undefined when calling supportedLocations.');
        }


        // Path Params
        const localVarPath = '/v4/supported-locations';

        // Make Request Context
        const requestContext = config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params

        // Header Params

        // Form Params


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(RequestSupportedLocations, "RequestSupportedLocations", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

        let authMethod = null;
        // Apply auth methods
        authMethod = config.authMethods["ApiKey"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }
        authMethod = config.authMethods["ApplicationId"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * @param RequestTimeFilter 
     */
    public async timeFilter(RequestTimeFilter: RequestTimeFilter, options?: Configuration): Promise<RequestContext> {
        let config = options || this.configuration;

        // verify required parameter 'RequestTimeFilter' is not null or undefined
        if (RequestTimeFilter === null || RequestTimeFilter === undefined) {
            throw new RequiredError('Required parameter RequestTimeFilter was null or undefined when calling timeFilter.');
        }


        // Path Params
        const localVarPath = '/v4/time-filter';

        // Make Request Context
        const requestContext = config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params

        // Header Params

        // Form Params


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(RequestTimeFilter, "RequestTimeFilter", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

        let authMethod = null;
        // Apply auth methods
        authMethod = config.authMethods["ApiKey"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }
        authMethod = config.authMethods["ApplicationId"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * @param RequestTimeFilterFast 
     */
    public async timeFilterFast(RequestTimeFilterFast: RequestTimeFilterFast, options?: Configuration): Promise<RequestContext> {
        let config = options || this.configuration;

        // verify required parameter 'RequestTimeFilterFast' is not null or undefined
        if (RequestTimeFilterFast === null || RequestTimeFilterFast === undefined) {
            throw new RequiredError('Required parameter RequestTimeFilterFast was null or undefined when calling timeFilterFast.');
        }


        // Path Params
        const localVarPath = '/v4/time-filter/fast';

        // Make Request Context
        const requestContext = config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params

        // Header Params

        // Form Params


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(RequestTimeFilterFast, "RequestTimeFilterFast", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

        let authMethod = null;
        // Apply auth methods
        authMethod = config.authMethods["ApiKey"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }
        authMethod = config.authMethods["ApplicationId"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * @param RequestTimeFilterPostcodeDistricts 
     */
    public async timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts, options?: Configuration): Promise<RequestContext> {
        let config = options || this.configuration;

        // verify required parameter 'RequestTimeFilterPostcodeDistricts' is not null or undefined
        if (RequestTimeFilterPostcodeDistricts === null || RequestTimeFilterPostcodeDistricts === undefined) {
            throw new RequiredError('Required parameter RequestTimeFilterPostcodeDistricts was null or undefined when calling timeFilterPostcodeDistricts.');
        }


        // Path Params
        const localVarPath = '/v4/time-filter/postcode-districts';

        // Make Request Context
        const requestContext = config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params

        // Header Params

        // Form Params


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(RequestTimeFilterPostcodeDistricts, "RequestTimeFilterPostcodeDistricts", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

        let authMethod = null;
        // Apply auth methods
        authMethod = config.authMethods["ApiKey"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }
        authMethod = config.authMethods["ApplicationId"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * @param RequestTimeFilterPostcodeSectors 
     */
    public async timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors, options?: Configuration): Promise<RequestContext> {
        let config = options || this.configuration;

        // verify required parameter 'RequestTimeFilterPostcodeSectors' is not null or undefined
        if (RequestTimeFilterPostcodeSectors === null || RequestTimeFilterPostcodeSectors === undefined) {
            throw new RequiredError('Required parameter RequestTimeFilterPostcodeSectors was null or undefined when calling timeFilterPostcodeSectors.');
        }


        // Path Params
        const localVarPath = '/v4/time-filter/postcode-sectors';

        // Make Request Context
        const requestContext = config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params

        // Header Params

        // Form Params


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(RequestTimeFilterPostcodeSectors, "RequestTimeFilterPostcodeSectors", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

        let authMethod = null;
        // Apply auth methods
        authMethod = config.authMethods["ApiKey"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }
        authMethod = config.authMethods["ApplicationId"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * @param RequestTimeFilterPostcodes 
     */
    public async timeFilterPostcodes(RequestTimeFilterPostcodes: RequestTimeFilterPostcodes, options?: Configuration): Promise<RequestContext> {
        let config = options || this.configuration;

        // verify required parameter 'RequestTimeFilterPostcodes' is not null or undefined
        if (RequestTimeFilterPostcodes === null || RequestTimeFilterPostcodes === undefined) {
            throw new RequiredError('Required parameter RequestTimeFilterPostcodes was null or undefined when calling timeFilterPostcodes.');
        }


        // Path Params
        const localVarPath = '/v4/time-filter/postcodes';

        // Make Request Context
        const requestContext = config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params

        // Header Params

        // Form Params


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(RequestTimeFilterPostcodes, "RequestTimeFilterPostcodes", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

        let authMethod = null;
        // Apply auth methods
        authMethod = config.authMethods["ApiKey"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }
        authMethod = config.authMethods["ApplicationId"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * @param RequestTimeMap 
     */
    public async timeMap(RequestTimeMap: RequestTimeMap, options?: Configuration): Promise<RequestContext> {
        let config = options || this.configuration;

        // verify required parameter 'RequestTimeMap' is not null or undefined
        if (RequestTimeMap === null || RequestTimeMap === undefined) {
            throw new RequiredError('Required parameter RequestTimeMap was null or undefined when calling timeMap.');
        }


        // Path Params
        const localVarPath = '/v4/time-map';

        // Make Request Context
        const requestContext = config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params

        // Header Params

        // Form Params


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(RequestTimeMap, "RequestTimeMap", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

        let authMethod = null;
        // Apply auth methods
        authMethod = config.authMethods["ApiKey"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }
        authMethod = config.authMethods["ApplicationId"]
        if (authMethod) {
            await authMethod.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

}

export class DefaultApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to geocodingReverseSearch
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async geocodingReverseSearch(response: ResponseContext): Promise<ResponseGeocoding > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ResponseGeocoding = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseGeocoding", ""
            ) as ResponseGeocoding;
            return body;
        }
        if (isCodeInRange("0", response.httpStatusCode)) {
            const body: ResponseError = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseError", ""
            ) as ResponseError;
            throw new ApiException<ResponseError>(0, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: ResponseGeocoding = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseGeocoding", ""
            ) as ResponseGeocoding;
            return body;
        }

        let body = response.body || "";
        throw new ApiException<string>(response.httpStatusCode, "Unknown API Status Code!\nBody: \"" + body + "\"");
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to geocodingSearch
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async geocodingSearch(response: ResponseContext): Promise<ResponseGeocoding > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ResponseGeocoding = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseGeocoding", ""
            ) as ResponseGeocoding;
            return body;
        }
        if (isCodeInRange("0", response.httpStatusCode)) {
            const body: ResponseError = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseError", ""
            ) as ResponseError;
            throw new ApiException<ResponseError>(0, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: ResponseGeocoding = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseGeocoding", ""
            ) as ResponseGeocoding;
            return body;
        }

        let body = response.body || "";
        throw new ApiException<string>(response.httpStatusCode, "Unknown API Status Code!\nBody: \"" + body + "\"");
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to mapInfo
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async mapInfo(response: ResponseContext): Promise<ResponseMapInfo > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ResponseMapInfo = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseMapInfo", ""
            ) as ResponseMapInfo;
            return body;
        }
        if (isCodeInRange("0", response.httpStatusCode)) {
            const body: ResponseError = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseError", ""
            ) as ResponseError;
            throw new ApiException<ResponseError>(0, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: ResponseMapInfo = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseMapInfo", ""
            ) as ResponseMapInfo;
            return body;
        }

        let body = response.body || "";
        throw new ApiException<string>(response.httpStatusCode, "Unknown API Status Code!\nBody: \"" + body + "\"");
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to routes
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async routes(response: ResponseContext): Promise<ResponseRoutes > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ResponseRoutes = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseRoutes", ""
            ) as ResponseRoutes;
            return body;
        }
        if (isCodeInRange("0", response.httpStatusCode)) {
            const body: ResponseError = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseError", ""
            ) as ResponseError;
            throw new ApiException<ResponseError>(0, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: ResponseRoutes = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseRoutes", ""
            ) as ResponseRoutes;
            return body;
        }

        let body = response.body || "";
        throw new ApiException<string>(response.httpStatusCode, "Unknown API Status Code!\nBody: \"" + body + "\"");
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to supportedLocations
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async supportedLocations(response: ResponseContext): Promise<ResponseSupportedLocations > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ResponseSupportedLocations = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseSupportedLocations", ""
            ) as ResponseSupportedLocations;
            return body;
        }
        if (isCodeInRange("0", response.httpStatusCode)) {
            const body: ResponseError = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseError", ""
            ) as ResponseError;
            throw new ApiException<ResponseError>(0, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: ResponseSupportedLocations = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseSupportedLocations", ""
            ) as ResponseSupportedLocations;
            return body;
        }

        let body = response.body || "";
        throw new ApiException<string>(response.httpStatusCode, "Unknown API Status Code!\nBody: \"" + body + "\"");
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to timeFilter
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async timeFilter(response: ResponseContext): Promise<ResponseTimeFilter > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ResponseTimeFilter = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseTimeFilter", ""
            ) as ResponseTimeFilter;
            return body;
        }
        if (isCodeInRange("0", response.httpStatusCode)) {
            const body: ResponseError = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseError", ""
            ) as ResponseError;
            throw new ApiException<ResponseError>(0, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: ResponseTimeFilter = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseTimeFilter", ""
            ) as ResponseTimeFilter;
            return body;
        }

        let body = response.body || "";
        throw new ApiException<string>(response.httpStatusCode, "Unknown API Status Code!\nBody: \"" + body + "\"");
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to timeFilterFast
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async timeFilterFast(response: ResponseContext): Promise<ResponseTimeFilterFast > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ResponseTimeFilterFast = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseTimeFilterFast", ""
            ) as ResponseTimeFilterFast;
            return body;
        }
        if (isCodeInRange("0", response.httpStatusCode)) {
            const body: ResponseError = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseError", ""
            ) as ResponseError;
            throw new ApiException<ResponseError>(0, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: ResponseTimeFilterFast = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseTimeFilterFast", ""
            ) as ResponseTimeFilterFast;
            return body;
        }

        let body = response.body || "";
        throw new ApiException<string>(response.httpStatusCode, "Unknown API Status Code!\nBody: \"" + body + "\"");
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to timeFilterPostcodeDistricts
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async timeFilterPostcodeDistricts(response: ResponseContext): Promise<ResponseTimeFilterPostcodeDistricts > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ResponseTimeFilterPostcodeDistricts = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseTimeFilterPostcodeDistricts", ""
            ) as ResponseTimeFilterPostcodeDistricts;
            return body;
        }
        if (isCodeInRange("0", response.httpStatusCode)) {
            const body: ResponseError = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseError", ""
            ) as ResponseError;
            throw new ApiException<ResponseError>(0, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: ResponseTimeFilterPostcodeDistricts = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseTimeFilterPostcodeDistricts", ""
            ) as ResponseTimeFilterPostcodeDistricts;
            return body;
        }

        let body = response.body || "";
        throw new ApiException<string>(response.httpStatusCode, "Unknown API Status Code!\nBody: \"" + body + "\"");
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to timeFilterPostcodeSectors
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async timeFilterPostcodeSectors(response: ResponseContext): Promise<ResponseTimeFilterPostcodeSectors > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ResponseTimeFilterPostcodeSectors = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseTimeFilterPostcodeSectors", ""
            ) as ResponseTimeFilterPostcodeSectors;
            return body;
        }
        if (isCodeInRange("0", response.httpStatusCode)) {
            const body: ResponseError = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseError", ""
            ) as ResponseError;
            throw new ApiException<ResponseError>(0, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: ResponseTimeFilterPostcodeSectors = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseTimeFilterPostcodeSectors", ""
            ) as ResponseTimeFilterPostcodeSectors;
            return body;
        }

        let body = response.body || "";
        throw new ApiException<string>(response.httpStatusCode, "Unknown API Status Code!\nBody: \"" + body + "\"");
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to timeFilterPostcodes
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async timeFilterPostcodes(response: ResponseContext): Promise<ResponseTimeFilterPostcodes > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ResponseTimeFilterPostcodes = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseTimeFilterPostcodes", ""
            ) as ResponseTimeFilterPostcodes;
            return body;
        }
        if (isCodeInRange("0", response.httpStatusCode)) {
            const body: ResponseError = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseError", ""
            ) as ResponseError;
            throw new ApiException<ResponseError>(0, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: ResponseTimeFilterPostcodes = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseTimeFilterPostcodes", ""
            ) as ResponseTimeFilterPostcodes;
            return body;
        }

        let body = response.body || "";
        throw new ApiException<string>(response.httpStatusCode, "Unknown API Status Code!\nBody: \"" + body + "\"");
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to timeMap
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async timeMap(response: ResponseContext): Promise<ResponseTimeMap > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ResponseTimeMap = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseTimeMap", ""
            ) as ResponseTimeMap;
            return body;
        }
        if (isCodeInRange("0", response.httpStatusCode)) {
            const body: ResponseError = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseError", ""
            ) as ResponseError;
            throw new ApiException<ResponseError>(0, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: ResponseTimeMap = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ResponseTimeMap", ""
            ) as ResponseTimeMap;
            return body;
        }

        let body = response.body || "";
        throw new ApiException<string>(response.httpStatusCode, "Unknown API Status Code!\nBody: \"" + body + "\"");
    }

}
