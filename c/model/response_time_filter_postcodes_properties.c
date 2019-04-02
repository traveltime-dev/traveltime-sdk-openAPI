#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_filter_postcodes_properties.h"


response_time_filter_postcodes_properties_t *response_time_filter_postcodes_properties_create(
    int travel_time,
    int distance
    ) {
	response_time_filter_postcodes_properties_t *response_time_filter_postcodes_properties = malloc(sizeof(response_time_filter_postcodes_properties_t));
	response_time_filter_postcodes_properties->travel_time = travel_time;
	response_time_filter_postcodes_properties->distance = distance;

	return response_time_filter_postcodes_properties;
}


void response_time_filter_postcodes_properties_free(response_time_filter_postcodes_properties_t *response_time_filter_postcodes_properties) {
    listEntry_t *listEntry;

	free(response_time_filter_postcodes_properties);
}

cJSON *response_time_filter_postcodes_properties_convertToJSON(response_time_filter_postcodes_properties_t *response_time_filter_postcodes_properties) {
	cJSON *item = cJSON_CreateObject();
	// response_time_filter_postcodes_properties->travel_time
    if(cJSON_AddNumberToObject(item, "travel_time", response_time_filter_postcodes_properties->travel_time) == NULL) {
    goto fail; //Numeric
    }

	// response_time_filter_postcodes_properties->distance
    if(cJSON_AddNumberToObject(item, "distance", response_time_filter_postcodes_properties->distance) == NULL) {
    goto fail; //Numeric
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_time_filter_postcodes_properties_t *response_time_filter_postcodes_properties_parseFromJSON(char *jsonString){

    response_time_filter_postcodes_properties_t *response_time_filter_postcodes_properties = NULL;
    cJSON *response_time_filter_postcodes_propertiesJSON = cJSON_Parse(jsonString);
    if(response_time_filter_postcodes_propertiesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_filter_postcodes_properties->travel_time
    cJSON *travel_time = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcodes_propertiesJSON, "travel_time");
    if(!cJSON_IsNumber(travel_time))
    {
    goto end; //Numeric
    }

    // response_time_filter_postcodes_properties->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcodes_propertiesJSON, "distance");
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }


    response_time_filter_postcodes_properties = response_time_filter_postcodes_properties_create (
        travel_time->valuedouble,
        distance->valuedouble
        );
 cJSON_Delete(response_time_filter_postcodes_propertiesJSON);
    return response_time_filter_postcodes_properties;
end:
    cJSON_Delete(response_time_filter_postcodes_propertiesJSON);
    return NULL;

}

