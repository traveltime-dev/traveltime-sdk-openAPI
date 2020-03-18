#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_transportation_mode.h"


char* response_transportation_mode_response_transportation_mode_ToString(traveltime_platform_api_response_transportation_mode__e response_transportation_mode) {
    char *response_transportation_modeArray[] =  { "NULL", "car", "parking", "boarding", "walk", "bike", "train", "rail_national", "rail_overground", "rail_underground", "rail_dlr", "bus", "cable_car", "plane", "ferry", "coach" };
    return response_transportation_modeArray[response_transportation_mode];
}

traveltime_platform_api_response_transportation_mode__e response_transportation_mode_response_transportation_mode_FromString(char* response_transportation_mode) {
    int stringToReturn = 0;
    char *response_transportation_modeArray[] =  { "NULL", "car", "parking", "boarding", "walk", "bike", "train", "rail_national", "rail_overground", "rail_underground", "rail_dlr", "bus", "cable_car", "plane", "ferry", "coach" };
    size_t sizeofArray = sizeof(response_transportation_modeArray) / sizeof(response_transportation_modeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(response_transportation_mode, response_transportation_modeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *response_transportation_mode_response_transportation_mode_convertToJSON(traveltime_platform_api_response_transportation_mode__e response_transportation_mode) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_transportation_mode", response_transportation_mode_response_transportation_mode_ToString(response_transportation_mode)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

response_transportation_mode_response_transportation_mode_e response_transportation_mode_response_transportation_mode_parseFromJSON(cJSON *response_transportation_modeJSON) {
    response_transportation_mode_response_transportation_mode_e *response_transportation_mode = NULL;
    response_transportation_mode_response_transportation_mode_e response_transportation_modeVariable;
    cJSON *response_transportation_modeVar = cJSON_GetObjectItemCaseSensitive(response_transportation_modeJSON, "response_transportation_mode");
    if(!cJSON_IsString(response_transportation_modeVar) || (response_transportation_modeVar->valuestring == NULL)){
        goto end;
    }
    response_transportation_modeVariable = response_transportation_mode_response_transportation_mode_FromString(response_transportation_modeVar->valuestring);
    return response_transportation_modeVariable;
end:
    return 0;
}
