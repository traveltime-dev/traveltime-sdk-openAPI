#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_time_filter_fast_property.h"


char* request_time_filter_fast_property_ToString(request_time_filter_fast_property_e request_time_filter_fast_property){
char *request_time_filter_fast_propertyArray[] =  { "travel_time","fares" };
    return request_time_filter_fast_propertyArray[request_time_filter_fast_property];
}

request_time_filter_fast_property_e request_time_filter_fast_property_FromString(char* request_time_filter_fast_property){
    int stringToReturn = 0;
    char *request_time_filter_fast_propertyArray[] =  { "travel_time","fares" };
    size_t sizeofArray = sizeof(request_time_filter_fast_propertyArray) / sizeof(request_time_filter_fast_propertyArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(request_time_filter_fast_property, request_time_filter_fast_propertyArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *request_time_filter_fast_property_convertToJSON(request_time_filter_fast_property_e request_time_filter_fast_property) {
cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "request_time_filter_fast_property", request_time_filter_fast_property_ToString(request_time_filter_fast_property)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

request_time_filter_fast_property_e request_time_filter_fast_property_parseFromJSON(cJSON *request_time_filter_fast_propertyJSON){

request_time_filter_fast_property_e *request_time_filter_fast_property = NULL;

request_time_filter_fast_property_e request_time_filter_fast_propertyVariable;
cJSON *request_time_filter_fast_propertyVar = cJSON_GetObjectItemCaseSensitive(request_time_filter_fast_propertyJSON, "request_time_filter_fast_property");
if(!cJSON_IsString(request_time_filter_fast_propertyVar) || (request_time_filter_fast_propertyVar->valuestring == NULL)){
    goto end;
}
request_time_filter_fast_propertyVariable = request_time_filter_fast_property_FromString(request_time_filter_fast_propertyVar->valuestring);
return request_time_filter_fast_propertyVariable;
end:
return 0;
}
