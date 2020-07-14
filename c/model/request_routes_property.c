#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_routes_property.h"


char* request_routes_property_request_routes_property_ToString(traveltime_api_request_routes_property__e request_routes_property) {
    char *request_routes_propertyArray[] =  { "NULL", "travel_time", "distance", "fares", "route" };
    return request_routes_propertyArray[request_routes_property];
}

traveltime_api_request_routes_property__e request_routes_property_request_routes_property_FromString(char* request_routes_property) {
    int stringToReturn = 0;
    char *request_routes_propertyArray[] =  { "NULL", "travel_time", "distance", "fares", "route" };
    size_t sizeofArray = sizeof(request_routes_propertyArray) / sizeof(request_routes_propertyArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(request_routes_property, request_routes_propertyArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *request_routes_property_request_routes_property_convertToJSON(traveltime_api_request_routes_property__e request_routes_property) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "request_routes_property", request_routes_property_request_routes_property_ToString(request_routes_property)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

request_routes_property_request_routes_property_e request_routes_property_request_routes_property_parseFromJSON(cJSON *request_routes_propertyJSON) {
    request_routes_property_request_routes_property_e *request_routes_property = NULL;
    request_routes_property_request_routes_property_e request_routes_propertyVariable;
    cJSON *request_routes_propertyVar = cJSON_GetObjectItemCaseSensitive(request_routes_propertyJSON, "request_routes_property");
    if(!cJSON_IsString(request_routes_propertyVar) || (request_routes_propertyVar->valuestring == NULL)){
        goto end;
    }
    request_routes_propertyVariable = request_routes_property_request_routes_property_FromString(request_routes_propertyVar->valuestring);
    return request_routes_propertyVariable;
end:
    return 0;
}
