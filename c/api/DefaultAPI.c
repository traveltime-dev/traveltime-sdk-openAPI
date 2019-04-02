#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "apiClient.h"
#include "cJSON.h"
#include "keyValuePair.h"
#include "request_routes.h"
#include "request_supported_locations.h"
#include "request_time_filter.h"
#include "request_time_filter_fast.h"
#include "request_time_filter_postcode_districts.h"
#include "request_time_filter_postcode_sectors.h"
#include "request_time_filter_postcodes.h"
#include "request_time_map.h"
#include "response_error.h"
#include "response_geocoding.h"
#include "response_map_info.h"
#include "response_routes.h"
#include "response_supported_locations.h"
#include "response_time_filter.h"
#include "response_time_filter_fast.h"
#include "response_time_filter_postcode_districts.h"
#include "response_time_filter_postcode_sectors.h"
#include "response_time_filter_postcodes.h"
#include "response_time_map.h"

#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)

response_geocoding_t*
DefaultAPI_geocodingReverseSearch(apiClient_t *apiClient, double focus.lat, double focus.lng, char* within.country) {
    list_t    *localVarQueryParameters = list_create();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v4/geocoding/reverse")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v4/geocoding/reverse");


    // query parameters
    char *keyQuery_focus.lat;
    double valueQuery_focus.lat;
    keyValuePair_t *keyPairQuery_focus.lat = 0;
    if (focus.lat)
    {
    //not string
    keyQuery_focus.lat = strdup("focus.lat");
    valueQuery_focus.lat = focus.lat;
    keyPairQuery_focus.lat = keyValuePair_create(keyQuery_focus.lat, &valueQuery_focus.lat);
    list_addElement(localVarQueryParameters,keyPairQuery_focus.lat);
    }

    // query parameters
    char *keyQuery_focus.lng;
    double valueQuery_focus.lng;
    keyValuePair_t *keyPairQuery_focus.lng = 0;
    if (focus.lng)
    {
    //not string
    keyQuery_focus.lng = strdup("focus.lng");
    valueQuery_focus.lng = focus.lng;
    keyPairQuery_focus.lng = keyValuePair_create(keyQuery_focus.lng, &valueQuery_focus.lng);
    list_addElement(localVarQueryParameters,keyPairQuery_focus.lng);
    }

    // query parameters
    char *keyQuery_within.country;
    char *valueQuery_within.country;
    keyValuePair_t *keyPairQuery_within.country = 0;
    if (within.country)
    {
    //string
    keyQuery_within.country = strdup("within.country");
    valueQuery_within.country = strdup(within.country);
    keyPairQuery_within.country = keyValuePair_create(keyQuery_within.country, valueQuery_within.country);
    list_addElement(localVarQueryParameters,keyPairQuery_within.country);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    if (apiClient->response_code == 200) {
        printf("%s\n","Match a query string to geographic coordinates. [Docs link](http://docs.traveltimeplatform.com/reference/geocoding-search/)");
    }
    if (apiClient->response_code == 0) {
        printf("%s\n","The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    }
    //nonprimitive not container
    response_geocoding_t *elementToReturn = response_geocoding_parseFromJSON(apiClient->dataReceived);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    apiClient_free(apiClient);
    list_free(localVarQueryParameters);
    
    
    list_free(localVarHeaderType);
    
    free(localVarPath);
    free(keyQuery_focus.lat);
    keyValuePair_free(keyPairQuery_focus.lat);
    free(keyQuery_focus.lng);
    keyValuePair_free(keyPairQuery_focus.lng);
    free(keyQuery_within.country);
    free(valueQuery_within.country);
    keyValuePair_free(keyPairQuery_within.country);
    return elementToReturn;
end:
    return NULL;

}

response_geocoding_t*
DefaultAPI_geocodingSearch(apiClient_t *apiClient, char* query, char* within.country, double focus.lat, double focus.lng) {
    list_t    *localVarQueryParameters = list_create();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v4/geocoding/search")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v4/geocoding/search");


    // query parameters
    char *keyQuery_query;
    char *valueQuery_query;
    keyValuePair_t *keyPairQuery_query = 0;
    if (query)
    {
    //string
    keyQuery_query = strdup("query");
    valueQuery_query = strdup(query);
    keyPairQuery_query = keyValuePair_create(keyQuery_query, valueQuery_query);
    list_addElement(localVarQueryParameters,keyPairQuery_query);
    }

    // query parameters
    char *keyQuery_within.country;
    char *valueQuery_within.country;
    keyValuePair_t *keyPairQuery_within.country = 0;
    if (within.country)
    {
    //string
    keyQuery_within.country = strdup("within.country");
    valueQuery_within.country = strdup(within.country);
    keyPairQuery_within.country = keyValuePair_create(keyQuery_within.country, valueQuery_within.country);
    list_addElement(localVarQueryParameters,keyPairQuery_within.country);
    }

    // query parameters
    char *keyQuery_focus.lat;
    double valueQuery_focus.lat;
    keyValuePair_t *keyPairQuery_focus.lat = 0;
    if (focus.lat)
    {
    //not string
    keyQuery_focus.lat = strdup("focus.lat");
    valueQuery_focus.lat = focus.lat;
    keyPairQuery_focus.lat = keyValuePair_create(keyQuery_focus.lat, &valueQuery_focus.lat);
    list_addElement(localVarQueryParameters,keyPairQuery_focus.lat);
    }

    // query parameters
    char *keyQuery_focus.lng;
    double valueQuery_focus.lng;
    keyValuePair_t *keyPairQuery_focus.lng = 0;
    if (focus.lng)
    {
    //not string
    keyQuery_focus.lng = strdup("focus.lng");
    valueQuery_focus.lng = focus.lng;
    keyPairQuery_focus.lng = keyValuePair_create(keyQuery_focus.lng, &valueQuery_focus.lng);
    list_addElement(localVarQueryParameters,keyPairQuery_focus.lng);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    if (apiClient->response_code == 200) {
        printf("%s\n","Match a query string to geographic coordinates. [Docs link](http://docs.traveltimeplatform.com/reference/geocoding-search/)");
    }
    if (apiClient->response_code == 0) {
        printf("%s\n","The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    }
    //nonprimitive not container
    response_geocoding_t *elementToReturn = response_geocoding_parseFromJSON(apiClient->dataReceived);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    apiClient_free(apiClient);
    list_free(localVarQueryParameters);
    
    
    list_free(localVarHeaderType);
    
    free(localVarPath);
    free(keyQuery_query);
    free(valueQuery_query);
    keyValuePair_free(keyPairQuery_query);
    free(keyQuery_within.country);
    free(valueQuery_within.country);
    keyValuePair_free(keyPairQuery_within.country);
    free(keyQuery_focus.lat);
    keyValuePair_free(keyPairQuery_focus.lat);
    free(keyQuery_focus.lng);
    keyValuePair_free(keyPairQuery_focus.lng);
    return elementToReturn;
end:
    return NULL;

}

response_map_info_t*
DefaultAPI_mapInfo(apiClient_t *apiClient) {
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v4/map-info")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v4/map-info");

    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    if (apiClient->response_code == 200) {
        printf("%s\n","Returns information about currently supported countries. [Docs link](http://docs.traveltimeplatform.com/reference/map-info/)");
    }
    if (apiClient->response_code == 0) {
        printf("%s\n","The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    }
    //nonprimitive not container
    response_map_info_t *elementToReturn = response_map_info_parseFromJSON(apiClient->dataReceived);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    apiClient_free(apiClient);
    
    
    
    list_free(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    return NULL;

}

response_routes_t*
DefaultAPI_routes(apiClient_t *apiClient, request_routes_t* request_routes) {
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = list_create();
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v4/routes")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v4/routes");


    // Body Param
    cJSON *localVarSingleItemJSON_request_routes;
    if (request_routes != NULL) {
        //string
        localVarSingleItemJSON_request_routes = request_routes_convertToJSON(request_routes);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_request_routes);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "POST");

    if (apiClient->response_code == 200) {
        printf("%s\n","Returns routing information between source and destinations. [Docs link](http://docs.traveltimeplatform.com/reference/routes/)");
    }
    if (apiClient->response_code == 0) {
        printf("%s\n","The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    }
    //nonprimitive not container
    response_routes_t *elementToReturn = response_routes_parseFromJSON(apiClient->dataReceived);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    apiClient_free(apiClient);
    
    
    
    list_free(localVarHeaderType);
    list_free(localVarContentType);
    free(localVarPath);
    cJSON_Delete(localVarSingleItemJSON_request_routes);
    free(localVarBodyParameters);
    return elementToReturn;
end:
    return NULL;

}

response_supported_locations_t*
DefaultAPI_supportedLocations(apiClient_t *apiClient, request_supported_locations_t* request_supported_locations) {
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = list_create();
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v4/supported-locations")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v4/supported-locations");


    // Body Param
    cJSON *localVarSingleItemJSON_request_supported_locations;
    if (request_supported_locations != NULL) {
        //string
        localVarSingleItemJSON_request_supported_locations = request_supported_locations_convertToJSON(request_supported_locations);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_request_supported_locations);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "POST");

    if (apiClient->response_code == 200) {
        printf("%s\n","Find out what points are supported by our api. [Docs link](http://docs.traveltimeplatform.com/reference/supported-locations/)");
    }
    if (apiClient->response_code == 0) {
        printf("%s\n","The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    }
    //nonprimitive not container
    response_supported_locations_t *elementToReturn = response_supported_locations_parseFromJSON(apiClient->dataReceived);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    apiClient_free(apiClient);
    
    
    
    list_free(localVarHeaderType);
    list_free(localVarContentType);
    free(localVarPath);
    cJSON_Delete(localVarSingleItemJSON_request_supported_locations);
    free(localVarBodyParameters);
    return elementToReturn;
end:
    return NULL;

}

response_time_filter_t*
DefaultAPI_timeFilter(apiClient_t *apiClient, request_time_filter_t* request_time_filter) {
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = list_create();
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v4/time-filter")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v4/time-filter");


    // Body Param
    cJSON *localVarSingleItemJSON_request_time_filter;
    if (request_time_filter != NULL) {
        //string
        localVarSingleItemJSON_request_time_filter = request_time_filter_convertToJSON(request_time_filter);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_request_time_filter);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "POST");

    if (apiClient->response_code == 200) {
        printf("%s\n","Given origin and destination points filter out points that cannot be reached within specified time limit. [Docs link](http://docs.traveltimeplatform.com/reference/time-filter)");
    }
    if (apiClient->response_code == 0) {
        printf("%s\n","The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    }
    //nonprimitive not container
    response_time_filter_t *elementToReturn = response_time_filter_parseFromJSON(apiClient->dataReceived);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    apiClient_free(apiClient);
    
    
    
    list_free(localVarHeaderType);
    list_free(localVarContentType);
    free(localVarPath);
    cJSON_Delete(localVarSingleItemJSON_request_time_filter);
    free(localVarBodyParameters);
    return elementToReturn;
end:
    return NULL;

}

response_time_filter_fast_t*
DefaultAPI_timeFilterFast(apiClient_t *apiClient, request_time_filter_fast_t* request_time_filter_fast) {
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = list_create();
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v4/time-filter/fast")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v4/time-filter/fast");


    // Body Param
    cJSON *localVarSingleItemJSON_request_time_filter_fast;
    if (request_time_filter_fast != NULL) {
        //string
        localVarSingleItemJSON_request_time_filter_fast = request_time_filter_fast_convertToJSON(request_time_filter_fast);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_request_time_filter_fast);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "POST");

    if (apiClient->response_code == 200) {
        printf("%s\n","A very fast version of Time Filter. [Docs link](http://docs.traveltimeplatform.com/reference/time-filter-fast/)");
    }
    if (apiClient->response_code == 0) {
        printf("%s\n","The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    }
    //nonprimitive not container
    response_time_filter_fast_t *elementToReturn = response_time_filter_fast_parseFromJSON(apiClient->dataReceived);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    apiClient_free(apiClient);
    
    
    
    list_free(localVarHeaderType);
    list_free(localVarContentType);
    free(localVarPath);
    cJSON_Delete(localVarSingleItemJSON_request_time_filter_fast);
    free(localVarBodyParameters);
    return elementToReturn;
end:
    return NULL;

}

response_time_filter_postcode_districts_t*
DefaultAPI_timeFilterPostcodeDistricts(apiClient_t *apiClient, request_time_filter_postcode_districts_t* request_time_filter_postcode_districts) {
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = list_create();
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v4/time-filter/postcode-districts")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v4/time-filter/postcode-districts");


    // Body Param
    cJSON *localVarSingleItemJSON_request_time_filter_postcode_districts;
    if (request_time_filter_postcode_districts != NULL) {
        //string
        localVarSingleItemJSON_request_time_filter_postcode_districts = request_time_filter_postcode_districts_convertToJSON(request_time_filter_postcode_districts);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_request_time_filter_postcode_districts);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "POST");

    if (apiClient->response_code == 200) {
        printf("%s\n","Find districts that have a certain coverage from origin and get statistics about postcodes within such districts. [Docs link](http://docs.traveltimeplatform.com/reference/postcode-district-filter/)");
    }
    if (apiClient->response_code == 0) {
        printf("%s\n","The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    }
    //nonprimitive not container
    response_time_filter_postcode_districts_t *elementToReturn = response_time_filter_postcode_districts_parseFromJSON(apiClient->dataReceived);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    apiClient_free(apiClient);
    
    
    
    list_free(localVarHeaderType);
    list_free(localVarContentType);
    free(localVarPath);
    cJSON_Delete(localVarSingleItemJSON_request_time_filter_postcode_districts);
    free(localVarBodyParameters);
    return elementToReturn;
end:
    return NULL;

}

response_time_filter_postcode_sectors_t*
DefaultAPI_timeFilterPostcodeSectors(apiClient_t *apiClient, request_time_filter_postcode_sectors_t* request_time_filter_postcode_sectors) {
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = list_create();
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v4/time-filter/postcode-sectors")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v4/time-filter/postcode-sectors");


    // Body Param
    cJSON *localVarSingleItemJSON_request_time_filter_postcode_sectors;
    if (request_time_filter_postcode_sectors != NULL) {
        //string
        localVarSingleItemJSON_request_time_filter_postcode_sectors = request_time_filter_postcode_sectors_convertToJSON(request_time_filter_postcode_sectors);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_request_time_filter_postcode_sectors);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "POST");

    if (apiClient->response_code == 200) {
        printf("%s\n","Find sectors that have a certain coverage from origin and get statistics about postcodes within such sectors. [Docs link](http://docs.traveltimeplatform.com/reference/postcode-sector-filter/)");
    }
    if (apiClient->response_code == 0) {
        printf("%s\n","The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    }
    //nonprimitive not container
    response_time_filter_postcode_sectors_t *elementToReturn = response_time_filter_postcode_sectors_parseFromJSON(apiClient->dataReceived);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    apiClient_free(apiClient);
    
    
    
    list_free(localVarHeaderType);
    list_free(localVarContentType);
    free(localVarPath);
    cJSON_Delete(localVarSingleItemJSON_request_time_filter_postcode_sectors);
    free(localVarBodyParameters);
    return elementToReturn;
end:
    return NULL;

}

response_time_filter_postcodes_t*
DefaultAPI_timeFilterPostcodes(apiClient_t *apiClient, request_time_filter_postcodes_t* request_time_filter_postcodes) {
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = list_create();
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v4/time-filter/postcodes")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v4/time-filter/postcodes");


    // Body Param
    cJSON *localVarSingleItemJSON_request_time_filter_postcodes;
    if (request_time_filter_postcodes != NULL) {
        //string
        localVarSingleItemJSON_request_time_filter_postcodes = request_time_filter_postcodes_convertToJSON(request_time_filter_postcodes);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_request_time_filter_postcodes);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "POST");

    if (apiClient->response_code == 200) {
        printf("%s\n","Find reachable postcodes from origin and get statistics about such postcodes. [Docs link](http://docs.traveltimeplatform.com/reference/postcode-search/)");
    }
    if (apiClient->response_code == 0) {
        printf("%s\n","The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    }
    //nonprimitive not container
    response_time_filter_postcodes_t *elementToReturn = response_time_filter_postcodes_parseFromJSON(apiClient->dataReceived);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    apiClient_free(apiClient);
    
    
    
    list_free(localVarHeaderType);
    list_free(localVarContentType);
    free(localVarPath);
    cJSON_Delete(localVarSingleItemJSON_request_time_filter_postcodes);
    free(localVarBodyParameters);
    return elementToReturn;
end:
    return NULL;

}

response_time_map_t*
DefaultAPI_timeMap(apiClient_t *apiClient, request_time_map_t* request_time_map) {
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = list_create();
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v4/time-map")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v4/time-map");


    // Body Param
    cJSON *localVarSingleItemJSON_request_time_map;
    if (request_time_map != NULL) {
        //string
        localVarSingleItemJSON_request_time_map = request_time_map_convertToJSON(request_time_map);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_request_time_map);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"application/vnd.wkt+json"); //produces
    list_addElement(localVarHeaderType,"application/vnd.wkt-no-holes+json"); //produces
    list_addElement(localVarHeaderType,"application/vnd.bounding-boxes+json"); //produces
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "POST");

    if (apiClient->response_code == 200) {
        printf("%s\n","Given origin coordinates, find shapes of zones reachable within corresponding travel time. [Docs link](http://docs.traveltimeplatform.com/reference/time-map/)");
    }
    if (apiClient->response_code == 0) {
        printf("%s\n","The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    }
    //nonprimitive not container
    response_time_map_t *elementToReturn = response_time_map_parseFromJSON(apiClient->dataReceived);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    apiClient_free(apiClient);
    
    
    
    list_free(localVarHeaderType);
    list_free(localVarContentType);
    free(localVarPath);
    cJSON_Delete(localVarSingleItemJSON_request_time_map);
    free(localVarBodyParameters);
    return elementToReturn;
end:
    return NULL;

}

