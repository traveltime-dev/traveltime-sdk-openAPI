#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_map_properties.h"


response_time_map_properties_t *response_time_map_properties_create(
    bool is_only_walking
    ) {
	response_time_map_properties_t *response_time_map_properties = malloc(sizeof(response_time_map_properties_t));
	response_time_map_properties->is_only_walking = is_only_walking;

	return response_time_map_properties;
}


void response_time_map_properties_free(response_time_map_properties_t *response_time_map_properties) {
    listEntry_t *listEntry;

	free(response_time_map_properties);
}

cJSON *response_time_map_properties_convertToJSON(response_time_map_properties_t *response_time_map_properties) {
	cJSON *item = cJSON_CreateObject();
	// response_time_map_properties->is_only_walking
    if(cJSON_AddBoolToObject(item, "is_only_walking", response_time_map_properties->is_only_walking) == NULL) {
    goto fail; //Numeric
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_time_map_properties_t *response_time_map_properties_parseFromJSON(char *jsonString){

    response_time_map_properties_t *response_time_map_properties = NULL;
    cJSON *response_time_map_propertiesJSON = cJSON_Parse(jsonString);
    if(response_time_map_propertiesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_map_properties->is_only_walking
    cJSON *is_only_walking = cJSON_GetObjectItemCaseSensitive(response_time_map_propertiesJSON, "is_only_walking");
    if(!cJSON_IsBool(is_only_walking))
    {
    goto end; //Numeric
    }


    response_time_map_properties = response_time_map_properties_create (
        is_only_walking->valueint
        );
 cJSON_Delete(response_time_map_propertiesJSON);
    return response_time_map_properties;
end:
    cJSON_Delete(response_time_map_propertiesJSON);
    return NULL;

}

