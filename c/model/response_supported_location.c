#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_supported_location.h"


response_supported_location_t *response_supported_location_create(
    char *id,
    char *map_name
    ) {
	response_supported_location_t *response_supported_location = malloc(sizeof(response_supported_location_t));
	response_supported_location->id = id;
	response_supported_location->map_name = map_name;

	return response_supported_location;
}


void response_supported_location_free(response_supported_location_t *response_supported_location) {
    listEntry_t *listEntry;
    free(response_supported_location->id);
    free(response_supported_location->map_name);

	free(response_supported_location);
}

cJSON *response_supported_location_convertToJSON(response_supported_location_t *response_supported_location) {
	cJSON *item = cJSON_CreateObject();
	// response_supported_location->id
    if(cJSON_AddStringToObject(item, "id", response_supported_location->id) == NULL) {
    goto fail; //String
    }

	// response_supported_location->map_name
    if(cJSON_AddStringToObject(item, "map_name", response_supported_location->map_name) == NULL) {
    goto fail; //String
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_supported_location_t *response_supported_location_parseFromJSON(char *jsonString){

    response_supported_location_t *response_supported_location = NULL;
    cJSON *response_supported_locationJSON = cJSON_Parse(jsonString);
    if(response_supported_locationJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_supported_location->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(response_supported_locationJSON, "id");
    if(!cJSON_IsString(id) || (id->valuestring == NULL)){
    goto end; //String
    }

    // response_supported_location->map_name
    cJSON *map_name = cJSON_GetObjectItemCaseSensitive(response_supported_locationJSON, "map_name");
    if(!cJSON_IsString(map_name) || (map_name->valuestring == NULL)){
    goto end; //String
    }


    response_supported_location = response_supported_location_create (
        strdup(id->valuestring),
        strdup(map_name->valuestring)
        );
 cJSON_Delete(response_supported_locationJSON);
    return response_supported_location;
end:
    cJSON_Delete(response_supported_locationJSON);
    return NULL;

}

