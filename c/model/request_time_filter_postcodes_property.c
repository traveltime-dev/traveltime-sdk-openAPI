#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_time_filter_postcodes_property.h"


char* request_time_filter_postcodes_property_ToString(request_time_filter_postcodes_property_e request_time_filter_postcodes_property){
char *request_time_filter_postcodes_propertyArray[] =  { "travel_time","distance" };
    return request_time_filter_postcodes_propertyArray[request_time_filter_postcodes_property];
}

request_time_filter_postcodes_property_e request_time_filter_postcodes_property_FromString(char* request_time_filter_postcodes_property){
    int stringToReturn = 0;
    char *request_time_filter_postcodes_propertyArray[] =  { "travel_time","distance" };
    size_t sizeofArray = sizeof(request_time_filter_postcodes_propertyArray) / sizeof(request_time_filter_postcodes_propertyArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(request_time_filter_postcodes_property, request_time_filter_postcodes_propertyArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *request_time_filter_postcodes_property_convertToJSON(request_time_filter_postcodes_property_e request_time_filter_postcodes_property) {
cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "request_time_filter_postcodes_property", request_time_filter_postcodes_property_ToString(request_time_filter_postcodes_property)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

request_time_filter_postcodes_property_e request_time_filter_postcodes_property_parseFromJSON(cJSON *request_time_filter_postcodes_propertyJSON){

request_time_filter_postcodes_property_e *request_time_filter_postcodes_property = NULL;

request_time_filter_postcodes_property_e request_time_filter_postcodes_propertyVariable;
cJSON *request_time_filter_postcodes_propertyVar = cJSON_GetObjectItemCaseSensitive(request_time_filter_postcodes_propertyJSON, "request_time_filter_postcodes_property");
if(!cJSON_IsString(request_time_filter_postcodes_propertyVar) || (request_time_filter_postcodes_propertyVar->valuestring == NULL)){
    goto end;
}
request_time_filter_postcodes_propertyVariable = request_time_filter_postcodes_property_FromString(request_time_filter_postcodes_propertyVar->valuestring);
return request_time_filter_postcodes_propertyVariable;
end:
return 0;
}
