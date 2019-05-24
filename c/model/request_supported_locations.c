#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_supported_locations.h"



request_supported_locations_t *request_supported_locations_create(
    list_t *locations
    ) {
	request_supported_locations_t *request_supported_locations_local_var = malloc(sizeof(request_supported_locations_t));
    if (!request_supported_locations_local_var) {
        return NULL;
    }
	request_supported_locations_local_var->locations = locations;

	return request_supported_locations_local_var;
}


void request_supported_locations_free(request_supported_locations_t *request_supported_locations) {
    listEntry_t *listEntry;
	list_ForEach(listEntry, request_supported_locations->locations) {
		request_location_free(listEntry->data);
	}
	list_free(request_supported_locations->locations);
	free(request_supported_locations);
}

cJSON *request_supported_locations_convertToJSON(request_supported_locations_t *request_supported_locations) {
	cJSON *item = cJSON_CreateObject();

	// request_supported_locations->locations
    if (!request_supported_locations->locations) {
        goto fail;
    }
    
    cJSON *locations = cJSON_AddArrayToObject(item, "locations");
    if(locations == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *locationsListEntry;
    if (request_supported_locations->locations) {
    list_ForEach(locationsListEntry, request_supported_locations->locations) {
    cJSON *itemLocal = request_location_convertToJSON(locationsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(locations, itemLocal);
    }
    }

	return item;
fail:
	if (item) {
        cJSON_Delete(item);
    }
	return NULL;
}

request_supported_locations_t *request_supported_locations_parseFromJSON(cJSON *request_supported_locationsJSON){

    request_supported_locations_t *request_supported_locations_local_var = NULL;

    // request_supported_locations->locations
    cJSON *locations = cJSON_GetObjectItemCaseSensitive(request_supported_locationsJSON, "locations");
    if (!locations) {
        goto end;
    }

    list_t *locationsList;
    
    cJSON *locations_local_nonprimitive;
    if(!cJSON_IsArray(locations)){
        goto end; //nonprimitive container
    }

    locationsList = list_create();

    cJSON_ArrayForEach(locations_local_nonprimitive,locations )
    {
        if(!cJSON_IsObject(locations_local_nonprimitive)){
            goto end;
        }
        request_location_t *locationsItem = request_location_parseFromJSON(locations_local_nonprimitive);

        list_addElement(locationsList, locationsItem);
    }


    request_supported_locations_local_var = request_supported_locations_create (
        locationsList
        );

    return request_supported_locations_local_var;
end:
    return NULL;

}
