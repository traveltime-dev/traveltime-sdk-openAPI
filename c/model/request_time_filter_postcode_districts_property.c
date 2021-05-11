#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_time_filter_postcode_districts_property.h"


char* request_time_filter_postcode_districts_property_request_time_filter_postcode_districts_property_ToString(traveltime_api_request_time_filter_postcode_districts_property__e request_time_filter_postcode_districts_property) {
    char *request_time_filter_postcode_districts_propertyArray[] =  { "NULL", "travel_time_reachable", "travel_time_all", "coverage" };
    return request_time_filter_postcode_districts_propertyArray[request_time_filter_postcode_districts_property];
}

traveltime_api_request_time_filter_postcode_districts_property__e request_time_filter_postcode_districts_property_request_time_filter_postcode_districts_property_FromString(char* request_time_filter_postcode_districts_property) {
    int stringToReturn = 0;
    char *request_time_filter_postcode_districts_propertyArray[] =  { "NULL", "travel_time_reachable", "travel_time_all", "coverage" };
    size_t sizeofArray = sizeof(request_time_filter_postcode_districts_propertyArray) / sizeof(request_time_filter_postcode_districts_propertyArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(request_time_filter_postcode_districts_property, request_time_filter_postcode_districts_propertyArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *request_time_filter_postcode_districts_property_request_time_filter_postcode_districts_property_convertToJSON(traveltime_api_request_time_filter_postcode_districts_property__e request_time_filter_postcode_districts_property) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "request_time_filter_postcode_districts_property", request_time_filter_postcode_districts_property_request_time_filter_postcode_districts_property_ToString(request_time_filter_postcode_districts_property)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

traveltime_api_request_time_filter_postcode_districts_property__e request_time_filter_postcode_districts_property_request_time_filter_postcode_districts_property_parseFromJSON(cJSON *request_time_filter_postcode_districts_propertyJSON) {
    traveltime_api_request_time_filter_postcode_districts_property__e *request_time_filter_postcode_districts_property = NULL;
    traveltime_api_request_time_filter_postcode_districts_property__e request_time_filter_postcode_districts_propertyVariable;
    cJSON *request_time_filter_postcode_districts_propertyVar = cJSON_GetObjectItemCaseSensitive(request_time_filter_postcode_districts_propertyJSON, "request_time_filter_postcode_districts_property");
    if(!cJSON_IsString(request_time_filter_postcode_districts_propertyVar) || (request_time_filter_postcode_districts_propertyVar->valuestring == NULL)){
        goto end;
    }
    request_time_filter_postcode_districts_propertyVariable = request_time_filter_postcode_districts_property_request_time_filter_postcode_districts_property_FromString(request_time_filter_postcode_districts_propertyVar->valuestring);
    return request_time_filter_postcode_districts_propertyVariable;
end:
    return 0;
}
