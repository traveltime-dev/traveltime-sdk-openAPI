#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_arrival_time_period.h"


char* request_arrival_time_period_request_arrival_time_period_ToString(traveltime_platform_api_request_arrival_time_period__e request_arrival_time_period) {
    char *request_arrival_time_periodArray[] =  { "NULL", "weekday_morning" };
    return request_arrival_time_periodArray[request_arrival_time_period];
}

traveltime_platform_api_request_arrival_time_period__e request_arrival_time_period_request_arrival_time_period_FromString(char* request_arrival_time_period) {
    int stringToReturn = 0;
    char *request_arrival_time_periodArray[] =  { "NULL", "weekday_morning" };
    size_t sizeofArray = sizeof(request_arrival_time_periodArray) / sizeof(request_arrival_time_periodArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(request_arrival_time_period, request_arrival_time_periodArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *request_arrival_time_period_request_arrival_time_period_convertToJSON(traveltime_platform_api_request_arrival_time_period__e request_arrival_time_period) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "request_arrival_time_period", request_arrival_time_period_request_arrival_time_period_ToString(request_arrival_time_period)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

request_arrival_time_period_request_arrival_time_period_e request_arrival_time_period_request_arrival_time_period_parseFromJSON(cJSON *request_arrival_time_periodJSON) {
    request_arrival_time_period_request_arrival_time_period_e *request_arrival_time_period = NULL;
    request_arrival_time_period_request_arrival_time_period_e request_arrival_time_periodVariable;
    cJSON *request_arrival_time_periodVar = cJSON_GetObjectItemCaseSensitive(request_arrival_time_periodJSON, "request_arrival_time_period");
    if(!cJSON_IsString(request_arrival_time_periodVar) || (request_arrival_time_periodVar->valuestring == NULL)){
        goto end;
    }
    request_arrival_time_periodVariable = request_arrival_time_period_request_arrival_time_period_FromString(request_arrival_time_periodVar->valuestring);
    return request_arrival_time_periodVariable;
end:
    return 0;
}
