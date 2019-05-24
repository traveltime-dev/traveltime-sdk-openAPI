#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_location.h"



request_location_t *request_location_create(
    char *id,
    coords_t *coords
    ) {
	request_location_t *request_location_local_var = malloc(sizeof(request_location_t));
    if (!request_location_local_var) {
        return NULL;
    }
	request_location_local_var->id = id;
	request_location_local_var->coords = coords;

	return request_location_local_var;
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
    if (!request_location->id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "id", request_location->id) == NULL) {
    goto fail; //String
    }


	// request_location->coords
    if (!request_location->coords) {
        goto fail;
    }
    
    cJSON *coords_local_JSON = coords_convertToJSON(request_location->coords);
    if(coords_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "coords", coords_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }

	return item;
fail:
	if (item) {
        cJSON_Delete(item);
    }
	return NULL;
}

request_location_t *request_location_parseFromJSON(cJSON *request_locationJSON){

    request_location_t *request_location_local_var = NULL;

    // request_location->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(request_locationJSON, "id");
    if (!id) {
        goto end;
    }

    
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }

    // request_location->coords
    cJSON *coords = cJSON_GetObjectItemCaseSensitive(request_locationJSON, "coords");
    if (!coords) {
        goto end;
    }

    coords_t *coords_local_nonprim = NULL;
    
    coords_local_nonprim = coords_parseFromJSON(coords); //nonprimitive


    request_location_local_var = request_location_create (
        strdup(id->valuestring),
        coords_local_nonprim
        );

    return request_location_local_var;
end:
    return NULL;

}
