#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_time_filter_postcode_sectors_property.h"


char* request_time_filter_postcode_sectors_property_ToString(request_time_filter_postcode_sectors_property_e request_time_filter_postcode_sectors_property){
char *request_time_filter_postcode_sectors_propertyArray[] =  { "travel_time_reachable","travel_time_all","coverage" };
    return request_time_filter_postcode_sectors_propertyArray[request_time_filter_postcode_sectors_property];
}

request_time_filter_postcode_sectors_property_e request_time_filter_postcode_sectors_property_FromString(char* request_time_filter_postcode_sectors_property){
    int stringToReturn = 0;
    char *request_time_filter_postcode_sectors_propertyArray[] =  { "travel_time_reachable","travel_time_all","coverage" };
    size_t sizeofArray = sizeof(request_time_filter_postcode_sectors_propertyArray) / sizeof(request_time_filter_postcode_sectors_propertyArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(request_time_filter_postcode_sectors_property, request_time_filter_postcode_sectors_propertyArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *request_time_filter_postcode_sectors_property_convertToJSON(request_time_filter_postcode_sectors_property_e request_time_filter_postcode_sectors_property) {
cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "request_time_filter_postcode_sectors_property", request_time_filter_postcode_sectors_property_ToString(request_time_filter_postcode_sectors_property)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

request_time_filter_postcode_sectors_property_e request_time_filter_postcode_sectors_property_parseFromJSON(cJSON *request_time_filter_postcode_sectors_propertyJSON){

request_time_filter_postcode_sectors_property_e *request_time_filter_postcode_sectors_property = NULL;

request_time_filter_postcode_sectors_property_e request_time_filter_postcode_sectors_propertyVariable;
cJSON *request_time_filter_postcode_sectors_propertyVar = cJSON_GetObjectItemCaseSensitive(request_time_filter_postcode_sectors_propertyJSON, "request_time_filter_postcode_sectors_property");
if(!cJSON_IsString(request_time_filter_postcode_sectors_propertyVar) || (request_time_filter_postcode_sectors_propertyVar->valuestring == NULL)){
    goto end;
}
request_time_filter_postcode_sectors_propertyVariable = request_time_filter_postcode_sectors_property_FromString(request_time_filter_postcode_sectors_propertyVar->valuestring);
return request_time_filter_postcode_sectors_propertyVariable;
end:
return 0;
}
