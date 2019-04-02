#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "request_transportation.h"

char* typerequest_transportation_ToString(type_e type){
    char *typeArray[] =  { "cycling","driving","driving+train","public_transport","walking","coach","bus","train","ferry","driving+ferry","cycling+ferry" };
    return typeArray[type];

}

type_e typerequest_transportation_FromString(char* type){
    int stringToReturn = 0;
    char *typeArray[] =  { "cycling","driving","driving+train","public_transport","walking","coach","bus","train","ferry","driving+ferry","cycling+ferry" };
    size_t sizeofArray = sizeof(typeArray) / sizeof(typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(type, typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
}

request_transportation_t *request_transportation_create(
    type_e type,
    int pt_change_delay,
    int walking_time,
    int driving_time_to_station,
    int parking_time,
    int boarding_time
    ) {
	request_transportation_t *request_transportation = malloc(sizeof(request_transportation_t));
	request_transportation->type = type;
	request_transportation->pt_change_delay = pt_change_delay;
	request_transportation->walking_time = walking_time;
	request_transportation->driving_time_to_station = driving_time_to_station;
	request_transportation->parking_time = parking_time;
	request_transportation->boarding_time = boarding_time;

	return request_transportation;
}


void request_transportation_free(request_transportation_t *request_transportation) {
    listEntry_t *listEntry;

	free(request_transportation);
}

cJSON *request_transportation_convertToJSON(request_transportation_t *request_transportation) {
	cJSON *item = cJSON_CreateObject();
	// request_transportation->type
    if(cJSON_AddStringToObject(item, "type", typerequest_transportation_ToString(request_transportation->type)) == NULL) {
    goto fail; //String
    }

	// request_transportation->pt_change_delay
    if(cJSON_AddNumberToObject(item, "pt_change_delay", request_transportation->pt_change_delay) == NULL) {
    goto fail; //Numeric
    }

	// request_transportation->walking_time
    if(cJSON_AddNumberToObject(item, "walking_time", request_transportation->walking_time) == NULL) {
    goto fail; //Numeric
    }

	// request_transportation->driving_time_to_station
    if(cJSON_AddNumberToObject(item, "driving_time_to_station", request_transportation->driving_time_to_station) == NULL) {
    goto fail; //Numeric
    }

	// request_transportation->parking_time
    if(cJSON_AddNumberToObject(item, "parking_time", request_transportation->parking_time) == NULL) {
    goto fail; //Numeric
    }

	// request_transportation->boarding_time
    if(cJSON_AddNumberToObject(item, "boarding_time", request_transportation->boarding_time) == NULL) {
    goto fail; //Numeric
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

request_transportation_t *request_transportation_parseFromJSON(char *jsonString){

    request_transportation_t *request_transportation = NULL;
    cJSON *request_transportationJSON = cJSON_Parse(jsonString);
    if(request_transportationJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // request_transportation->type
    type_e typeVariable;
    cJSON *type = cJSON_GetObjectItemCaseSensitive(request_transportationJSON, "type");
    if(!cJSON_IsString(type) || (type->valuestring == NULL)){
    goto end; //String
    }

    typeVariable = typerequest_transportation_FromString(type->valuestring);

    // request_transportation->pt_change_delay
    cJSON *pt_change_delay = cJSON_GetObjectItemCaseSensitive(request_transportationJSON, "pt_change_delay");
    if(!cJSON_IsNumber(pt_change_delay))
    {
    goto end; //Numeric
    }

    // request_transportation->walking_time
    cJSON *walking_time = cJSON_GetObjectItemCaseSensitive(request_transportationJSON, "walking_time");
    if(!cJSON_IsNumber(walking_time))
    {
    goto end; //Numeric
    }

    // request_transportation->driving_time_to_station
    cJSON *driving_time_to_station = cJSON_GetObjectItemCaseSensitive(request_transportationJSON, "driving_time_to_station");
    if(!cJSON_IsNumber(driving_time_to_station))
    {
    goto end; //Numeric
    }

    // request_transportation->parking_time
    cJSON *parking_time = cJSON_GetObjectItemCaseSensitive(request_transportationJSON, "parking_time");
    if(!cJSON_IsNumber(parking_time))
    {
    goto end; //Numeric
    }

    // request_transportation->boarding_time
    cJSON *boarding_time = cJSON_GetObjectItemCaseSensitive(request_transportationJSON, "boarding_time");
    if(!cJSON_IsNumber(boarding_time))
    {
    goto end; //Numeric
    }


    request_transportation = request_transportation_create (
        typeVariable,
        pt_change_delay->valuedouble,
        walking_time->valuedouble,
        driving_time_to_station->valuedouble,
        parking_time->valuedouble,
        boarding_time->valuedouble
        );
 cJSON_Delete(request_transportationJSON);
    return request_transportation;
end:
    cJSON_Delete(request_transportationJSON);
    return NULL;

}

