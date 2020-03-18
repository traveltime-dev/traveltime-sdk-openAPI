#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_time_map_property.h"


char* request_time_map_property_request_time_map_property_ToString(traveltime_platform_api_request_time_map_property__e request_time_map_property) {
    char *request_time_map_propertyArray[] =  { "NULL", "is_only_walking" };
    return request_time_map_propertyArray[request_time_map_property];
}

traveltime_platform_api_request_time_map_property__e request_time_map_property_request_time_map_property_FromString(char* request_time_map_property) {
    int stringToReturn = 0;
    char *request_time_map_propertyArray[] =  { "NULL", "is_only_walking" };
    size_t sizeofArray = sizeof(request_time_map_propertyArray) / sizeof(request_time_map_propertyArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(request_time_map_property, request_time_map_propertyArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *request_time_map_property_request_time_map_property_convertToJSON(traveltime_platform_api_request_time_map_property__e request_time_map_property) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "request_time_map_property", request_time_map_property_request_time_map_property_ToString(request_time_map_property)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

request_time_map_property_request_time_map_property_e request_time_map_property_request_time_map_property_parseFromJSON(cJSON *request_time_map_propertyJSON) {
    request_time_map_property_request_time_map_property_e *request_time_map_property = NULL;
    request_time_map_property_request_time_map_property_e request_time_map_propertyVariable;
    cJSON *request_time_map_propertyVar = cJSON_GetObjectItemCaseSensitive(request_time_map_propertyJSON, "request_time_map_property");
    if(!cJSON_IsString(request_time_map_propertyVar) || (request_time_map_propertyVar->valuestring == NULL)){
        goto end;
    }
    request_time_map_propertyVariable = request_time_map_property_request_time_map_property_FromString(request_time_map_propertyVar->valuestring);
    return request_time_map_propertyVariable;
end:
    return 0;
}
