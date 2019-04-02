package traveltimeplatform.client.api {

import org.openapitools.common.ApiInvoker;
import org.openapitools.exception.ApiErrorCodes;
import org.openapitools.exception.ApiError;
import org.openapitools.common.ApiUserCredentials;
import org.openapitools.event.Response;
import org.openapitools.common.OpenApi;
import traveltimeplatform.client.model.RequestRoutes;
import traveltimeplatform.client.model.RequestSupportedLocations;
import traveltimeplatform.client.model.RequestTimeFilter;
import traveltimeplatform.client.model.RequestTimeFilterFast;
import traveltimeplatform.client.model.RequestTimeFilterPostcodeDistricts;
import traveltimeplatform.client.model.RequestTimeFilterPostcodeSectors;
import traveltimeplatform.client.model.RequestTimeFilterPostcodes;
import traveltimeplatform.client.model.RequestTimeMap;
import traveltimeplatform.client.model.ResponseError;
import traveltimeplatform.client.model.ResponseGeocoding;
import traveltimeplatform.client.model.ResponseMapInfo;
import traveltimeplatform.client.model.ResponseRoutes;
import traveltimeplatform.client.model.ResponseSupportedLocations;
import traveltimeplatform.client.model.ResponseTimeFilter;
import traveltimeplatform.client.model.ResponseTimeFilterFast;
import traveltimeplatform.client.model.ResponseTimeFilterPostcodeDistricts;
import traveltimeplatform.client.model.ResponseTimeFilterPostcodeSectors;
import traveltimeplatform.client.model.ResponseTimeFilterPostcodes;
import traveltimeplatform.client.model.ResponseTimeMap;

import mx.rpc.AsyncToken;
import mx.utils.UIDUtil;
import flash.utils.Dictionary;
import flash.events.EventDispatcher;

public class DefaultApi extends OpenApi {
    /**
    * Constructor for the DefaultApi api client
    * @param apiCredentials Wrapper object for tokens and hostName required towards authentication
    * @param eventDispatcher Optional event dispatcher that when provided is used by the SDK to dispatch any Response
    */
    public function DefaultApi(apiCredentials: ApiUserCredentials, eventDispatcher: EventDispatcher = null) {
        super(apiCredentials, eventDispatcher);
    }

        public static const event_geocoding_reverse_search: String = "geocoding_reverse_search";
        public static const event_geocoding_search: String = "geocoding_search";
        public static const event_map_info: String = "map_info";
        public static const event_routes: String = "routes";
        public static const event_supported_locations: String = "supported_locations";
        public static const event_time_filter: String = "time_filter";
        public static const event_time_filter_fast: String = "time_filter_fast";
        public static const event_time_filter_postcode_districts: String = "time_filter_postcode_districts";
        public static const event_time_filter_postcode_sectors: String = "time_filter_postcode_sectors";
        public static const event_time_filter_postcodes: String = "time_filter_postcodes";
        public static const event_time_map: String = "time_map";


    /*
     * Returns ResponseGeocoding 
     */
    public function geocoding_reverse_search (focusLat: Number, focusLng: Number, withinCountry: String): String {
        // create path and map variables
        var path: String = "/v4/geocoding/reverse".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        if("null" != String(focusLat))
            queryParams["focus.lat"] = toPathValue(focusLat);
if("null" != String(focusLng))
            queryParams["focus.lng"] = toPathValue(focusLng);
if("null" != String(withinCountry))
            queryParams["within.country"] = toPathValue(withinCountry);

        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "geocoding_reverse_search";

        token.returnType = ResponseGeocoding;
        return requestId;

    }

    /*
     * Returns ResponseGeocoding 
     */
    public function geocoding_search (query: String, withinCountry: String, focusLat: Number, focusLng: Number): String {
        // create path and map variables
        var path: String = "/v4/geocoding/search".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        if("null" != String(query))
            queryParams["query"] = toPathValue(query);
if("null" != String(withinCountry))
            queryParams["within.country"] = toPathValue(withinCountry);
if("null" != String(focusLat))
            queryParams["focus.lat"] = toPathValue(focusLat);
if("null" != String(focusLng))
            queryParams["focus.lng"] = toPathValue(focusLng);

        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "geocoding_search";

        token.returnType = ResponseGeocoding;
        return requestId;

    }

    /*
     * Returns ResponseMapInfo 
     */
    public function map_info (): String {
        // create path and map variables
        var path: String = "/v4/map-info".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();


        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "map_info";

        token.returnType = ResponseMapInfo;
        return requestId;

    }

    /*
     * Returns ResponseRoutes 
     */
    public function routes (requestRoutes: RequestRoutes): String {
        // create path and map variables
        var path: String = "/v4/routes".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, requestRoutes, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "routes";

        token.returnType = ResponseRoutes;
        return requestId;

    }

    /*
     * Returns ResponseSupportedLocations 
     */
    public function supported_locations (requestSupportedLocations: RequestSupportedLocations): String {
        // create path and map variables
        var path: String = "/v4/supported-locations".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, requestSupportedLocations, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "supported_locations";

        token.returnType = ResponseSupportedLocations;
        return requestId;

    }

    /*
     * Returns ResponseTimeFilter 
     */
    public function time_filter (requestTimeFilter: RequestTimeFilter): String {
        // create path and map variables
        var path: String = "/v4/time-filter".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, requestTimeFilter, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "time_filter";

        token.returnType = ResponseTimeFilter;
        return requestId;

    }

    /*
     * Returns ResponseTimeFilterFast 
     */
    public function time_filter_fast (requestTimeFilterFast: RequestTimeFilterFast): String {
        // create path and map variables
        var path: String = "/v4/time-filter/fast".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, requestTimeFilterFast, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "time_filter_fast";

        token.returnType = ResponseTimeFilterFast;
        return requestId;

    }

    /*
     * Returns ResponseTimeFilterPostcodeDistricts 
     */
    public function time_filter_postcode_districts (requestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts): String {
        // create path and map variables
        var path: String = "/v4/time-filter/postcode-districts".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, requestTimeFilterPostcodeDistricts, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "time_filter_postcode_districts";

        token.returnType = ResponseTimeFilterPostcodeDistricts;
        return requestId;

    }

    /*
     * Returns ResponseTimeFilterPostcodeSectors 
     */
    public function time_filter_postcode_sectors (requestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors): String {
        // create path and map variables
        var path: String = "/v4/time-filter/postcode-sectors".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, requestTimeFilterPostcodeSectors, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "time_filter_postcode_sectors";

        token.returnType = ResponseTimeFilterPostcodeSectors;
        return requestId;

    }

    /*
     * Returns ResponseTimeFilterPostcodes 
     */
    public function time_filter_postcodes (requestTimeFilterPostcodes: RequestTimeFilterPostcodes): String {
        // create path and map variables
        var path: String = "/v4/time-filter/postcodes".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, requestTimeFilterPostcodes, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "time_filter_postcodes";

        token.returnType = ResponseTimeFilterPostcodes;
        return requestId;

    }

    /*
     * Returns ResponseTimeMap 
     */
    public function time_map (requestTimeMap: RequestTimeMap): String {
        // create path and map variables
        var path: String = "/v4/time-map".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, requestTimeMap, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "time_map";

        token.returnType = ResponseTimeMap;
        return requestId;

    }
}
}
