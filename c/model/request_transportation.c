#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_transportation.h"


char* typerequest_transportation_ToString(traveltime_api_request_transportation_TYPE_e type) {
    char* typeArray[] =  { "NULL", "cycling", "driving", "driving+train", "public_transport", "walking", "coach", "bus", "train", "ferry", "driving+ferry", "cycling+ferry" };
	return typeArray[type];
}

traveltime_api_request_transportation_TYPE_e typerequest_transportation_FromString(char* type){
    int stringToReturn = 0;
    char *typeArray[] =  { "NULL", "cycling", "driving", "driving+train", "public_transport", "walking", "coach", "bus", "train", "ferry", "driving+ferry", "cycling+ferry" };
    size_t sizeofArray = sizeof(typeArray) / sizeof(typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(type, typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

request_transportation_t *request_transportation_create(
    traveltime_api_request_transportation_TYPE_e type,
    int disable_border_crossing,
    int pt_change_delay,
    int walking_time,
    int driving_time_to_station,
    int cycling_time_to_station,
    int parking_time,
    int boarding_time
    ) {
    request_transportation_t *request_transportation_local_var = malloc(sizeof(request_transportation_t));
    if (!request_transportation_local_var) {
        return NULL;
    }
    request_transportation_local_var->type = type;
    request_transportation_local_var->disable_border_crossing = disable_border_crossing;
    request_transportation_local_var->pt_change_delay = pt_change_delay;
    request_transportation_local_var->walking_time = walking_time;
    request_transportation_local_var->driving_time_to_station = driving_time_to_station;
    request_transportation_local_var->cycling_time_to_station = cycling_time_to_station;
    request_transportation_local_var->parking_time = parking_time;
    request_transportation_local_var->boarding_time = boarding_time;

    return request_transportation_local_var;
}


void request_transportation_free(request_transportation_t *request_transportation) {
    if(NULL == request_transportation){
        return ;
    }
    listEntry_t *listEntry;
    free(request_transportation);
}

cJSON *request_transportation_convertToJSON(request_transportation_t *request_transportation) {
    cJSON *item = cJSON_CreateObject();

    // request_transportation->type
    
    if(cJSON_AddStringToObject(item, "type", typerequest_transportation_ToString(request_transportation->type)) == NULL)
    {
    goto fail; //Enum
    }


    // request_transportation->disable_border_crossing
    if(request_transportation->disable_border_crossing) { 
    if(cJSON_AddBoolToObject(item, "disable_border_crossing", request_transportation->disable_border_crossing) == NULL) {
    goto fail; //Bool
    }
     } 


    // request_transportation->pt_change_delay
    if(request_transportation->pt_change_delay) { 
    if(cJSON_AddNumberToObject(item, "pt_change_delay", request_transportation->pt_change_delay) == NULL) {
    goto fail; //Numeric
    }
     } 


    // request_transportation->walking_time
    if(request_transportation->walking_time) { 
    if(cJSON_AddNumberToObject(item, "walking_time", request_transportation->walking_time) == NULL) {
    goto fail; //Numeric
    }
     } 


    // request_transportation->driving_time_to_station
    if(request_transportation->driving_time_to_station) { 
    if(cJSON_AddNumberToObject(item, "driving_time_to_station", request_transportation->driving_time_to_station) == NULL) {
    goto fail; //Numeric
    }
     } 


    // request_transportation->cycling_time_to_station
    if(request_transportation->cycling_time_to_station) { 
    if(cJSON_AddNumberToObject(item, "cycling_time_to_station", request_transportation->cycling_time_to_station) == NULL) {
    goto fail; //Numeric
    }
     } 


    // request_transportation->parking_time
    if(request_transportation->parking_time) { 
    if(cJSON_AddNumberToObject(item, "parking_time", request_transportation->parking_time) == NULL) {
    goto fail; //Numeric
    }
     } 


    // request_transportation->boarding_time
    if(request_transportation->boarding_time) { 
    if(cJSON_AddNumberToObject(item, "boarding_time", request_transportation->boarding_time) == NULL) {
    goto fail; //Numeric
    }
     } 

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

request_transportation_t *request_transportation_parseFromJSON(cJSON *request_transportationJSON){

    request_transportation_t *request_transportation_local_var = NULL;

    // request_transportation->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(request_transportationJSON, "type");
    if (!type) {
        goto end;
    }

    traveltime_api_request_transportation_TYPE_e typeVariable;
    
    if(!cJSON_IsString(type))
    {
    goto end; //Enum
    }
    typeVariable = typerequest_transportation_FromString(type->valuestring);

    // request_transportation->disable_border_crossing
    cJSON *disable_border_crossing = cJSON_GetObjectItemCaseSensitive(request_transportationJSON, "disable_border_crossing");
    if (disable_border_crossing) { 
    if(!cJSON_IsBool(disable_border_crossing))
    {
    goto end; //Bool
    }
    }

    // request_transportation->pt_change_delay
    cJSON *pt_change_delay = cJSON_GetObjectItemCaseSensitive(request_transportationJSON, "pt_change_delay");
    if (pt_change_delay) { 
    if(!cJSON_IsNumber(pt_change_delay))
    {
    goto end; //Numeric
    }
    }

    // request_transportation->walking_time
    cJSON *walking_time = cJSON_GetObjectItemCaseSensitive(request_transportationJSON, "walking_time");
    if (walking_time) { 
    if(!cJSON_IsNumber(walking_time))
    {
    goto end; //Numeric
    }
    }

    // request_transportation->driving_time_to_station
    cJSON *driving_time_to_station = cJSON_GetObjectItemCaseSensitive(request_transportationJSON, "driving_time_to_station");
    if (driving_time_to_station) { 
    if(!cJSON_IsNumber(driving_time_to_station))
    {
    goto end; //Numeric
    }
    }

    // request_transportation->cycling_time_to_station
    cJSON *cycling_time_to_station = cJSON_GetObjectItemCaseSensitive(request_transportationJSON, "cycling_time_to_station");
    if (cycling_time_to_station) { 
    if(!cJSON_IsNumber(cycling_time_to_station))
    {
    goto end; //Numeric
    }
    }

    // request_transportation->parking_time
    cJSON *parking_time = cJSON_GetObjectItemCaseSensitive(request_transportationJSON, "parking_time");
    if (parking_time) { 
    if(!cJSON_IsNumber(parking_time))
    {
    goto end; //Numeric
    }
    }

    // request_transportation->boarding_time
    cJSON *boarding_time = cJSON_GetObjectItemCaseSensitive(request_transportationJSON, "boarding_time");
    if (boarding_time) { 
    if(!cJSON_IsNumber(boarding_time))
    {
    goto end; //Numeric
    }
    }


    request_transportation_local_var = request_transportation_create (
        typeVariable,
        disable_border_crossing ? disable_border_crossing->valueint : 0,
        pt_change_delay ? pt_change_delay->valuedouble : 0,
        walking_time ? walking_time->valuedouble : 0,
        driving_time_to_station ? driving_time_to_station->valuedouble : 0,
        cycling_time_to_station ? cycling_time_to_station->valuedouble : 0,
        parking_time ? parking_time->valuedouble : 0,
        boarding_time ? boarding_time->valuedouble : 0
        );

    return request_transportation_local_var;
end:
    return NULL;

}
