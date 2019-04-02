#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_filter_fast_properties.h"
#include "response_fares_fast.h"


response_time_filter_fast_properties_t *response_time_filter_fast_properties_create(
    int travel_time,
    response_fares_fast_t *fares
    ) {
	response_time_filter_fast_properties_t *response_time_filter_fast_properties = malloc(sizeof(response_time_filter_fast_properties_t));
	response_time_filter_fast_properties->travel_time = travel_time;
	response_time_filter_fast_properties->fares = fares;

	return response_time_filter_fast_properties;
}


void response_time_filter_fast_properties_free(response_time_filter_fast_properties_t *response_time_filter_fast_properties) {
    listEntry_t *listEntry;
	response_fares_fast_free(response_time_filter_fast_properties->fares);

	free(response_time_filter_fast_properties);
}

cJSON *response_time_filter_fast_properties_convertToJSON(response_time_filter_fast_properties_t *response_time_filter_fast_properties) {
	cJSON *item = cJSON_CreateObject();
	// response_time_filter_fast_properties->travel_time
    if(cJSON_AddNumberToObject(item, "travel_time", response_time_filter_fast_properties->travel_time) == NULL) {
    goto fail; //Numeric
    }

	// response_time_filter_fast_properties->fares
	cJSON *fares = response_fares_fast_convertToJSON(response_time_filter_fast_properties->fares);
	if(fares == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "fares", fares);
	if(item->child == NULL) {
		goto fail;
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_time_filter_fast_properties_t *response_time_filter_fast_properties_parseFromJSON(char *jsonString){

    response_time_filter_fast_properties_t *response_time_filter_fast_properties = NULL;
    cJSON *response_time_filter_fast_propertiesJSON = cJSON_Parse(jsonString);
    if(response_time_filter_fast_propertiesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_filter_fast_properties->travel_time
    cJSON *travel_time = cJSON_GetObjectItemCaseSensitive(response_time_filter_fast_propertiesJSON, "travel_time");
    if(!cJSON_IsNumber(travel_time))
    {
    goto end; //Numeric
    }

    // response_time_filter_fast_properties->fares
    response_fares_fast_t *fares;
    cJSON *faresJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_fast_propertiesJSON, "fares");
    if(response_time_filter_fast_propertiesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *faresJSONData = cJSON_Print(faresJSON);
    fares = response_fares_fast_parseFromJSON(faresJSONData);


    response_time_filter_fast_properties = response_time_filter_fast_properties_create (
        travel_time->valuedouble,
        fares
        );
        free(faresJSONData);
 cJSON_Delete(response_time_filter_fast_propertiesJSON);
    return response_time_filter_fast_properties;
end:
    cJSON_Delete(response_time_filter_fast_propertiesJSON);
    return NULL;

}

