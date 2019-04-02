#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "request_location.h"
#include "coords.h"


request_location_t *request_location_create(
    char *id,
    coords_t *coords
    ) {
	request_location_t *request_location = malloc(sizeof(request_location_t));
	request_location->id = id;
	request_location->coords = coords;

	return request_location;
}


void request_location_free(request_location_t *request_location) {
    listEntry_t *listEntry;
    free(request_location->id);
	coords_free(request_location->coords);

	free(request_location);
}

cJSON *request_location_convertToJSON(request_location_t *request_location) {
	cJSON *item = cJSON_CreateObject();
	// request_location->id
    if(cJSON_AddStringToObject(item, "id", request_location->id) == NULL) {
    goto fail; //String
    }

	// request_location->coords
	cJSON *coords = coords_convertToJSON(request_location->coords);
	if(coords == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "coords", coords);
	if(item->child == NULL) {
		goto fail;
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

request_location_t *request_location_parseFromJSON(char *jsonString){

    request_location_t *request_location = NULL;
    cJSON *request_locationJSON = cJSON_Parse(jsonString);
    if(request_locationJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // request_location->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(request_locationJSON, "id");
    if(!cJSON_IsString(id) || (id->valuestring == NULL)){
    goto end; //String
    }

    // request_location->coords
    coords_t *coords;
    cJSON *coordsJSON = cJSON_GetObjectItemCaseSensitive(request_locationJSON, "coords");
    if(request_locationJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *coordsJSONData = cJSON_Print(coordsJSON);
    coords = coords_parseFromJSON(coordsJSONData);


    request_location = request_location_create (
        strdup(id->valuestring),
        coords
        );
        free(coordsJSONData);
 cJSON_Delete(request_locationJSON);
    return request_location;
end:
    cJSON_Delete(request_locationJSON);
    return NULL;

}

