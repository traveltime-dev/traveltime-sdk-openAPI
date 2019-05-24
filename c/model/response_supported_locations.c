#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_supported_locations.h"



response_supported_locations_t *response_supported_locations_create(
    list_t *locations,
    list_t *unsupported_locations
    ) {
	response_supported_locations_t *response_supported_locations_local_var = malloc(sizeof(response_supported_locations_t));
    if (!response_supported_locations_local_var) {
        return NULL;
    }
	response_supported_locations_local_var->locations = locations;
	response_supported_locations_local_var->unsupported_locations = unsupported_locations;

	return response_supported_locations_local_var;
}


void response_supported_locations_free(response_supported_locations_t *response_supported_locations) {
    listEntry_t *listEntry;
	list_ForEach(listEntry, response_supported_locations->locations) {
		response_supported_location_free(listEntry->data);
	}
	list_free(response_supported_locations->locations);
	list_ForEach(listEntry, response_supported_locations->unsupported_locations) {
		free(listEntry->data);
	}
	list_free(response_supported_locations->unsupported_locations);
	free(response_supported_locations);
}

cJSON *response_supported_locations_convertToJSON(response_supported_locations_t *response_supported_locations) {
	cJSON *item = cJSON_CreateObject();

	// response_supported_locations->locations
    if (!response_supported_locations->locations) {
        goto fail;
    }
    
    cJSON *locations = cJSON_AddArrayToObject(item, "locations");
    if(locations == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *locationsListEntry;
    if (response_supported_locations->locations) {
    list_ForEach(locationsListEntry, response_supported_locations->locations) {
    cJSON *itemLocal = response_supported_location_convertToJSON(locationsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(locations, itemLocal);
    }
    }


	// response_supported_locations->unsupported_locations
    if (!response_supported_locations->unsupported_locations) {
        goto fail;
    }
    
	cJSON *unsupported_locations = cJSON_AddArrayToObject(item, "unsupported_locations");
	if(unsupported_locations == NULL) {
		goto fail; //primitive container
	}

	listEntry_t *unsupported_locationsListEntry;
    list_ForEach(unsupported_locationsListEntry, response_supported_locations->unsupported_locations) {
    if(cJSON_AddStringToObject(unsupported_locations, "", (char*)unsupported_locationsListEntry->data) == NULL)
    {
        goto fail;
    }
    }

	return item;
fail:
	if (item) {
        cJSON_Delete(item);
    }
	return NULL;
}

response_supported_locations_t *response_supported_locations_parseFromJSON(cJSON *response_supported_locationsJSON){

    response_supported_locations_t *response_supported_locations_local_var = NULL;

    // response_supported_locations->locations
    cJSON *locations = cJSON_GetObjectItemCaseSensitive(response_supported_locationsJSON, "locations");
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
        response_supported_location_t *locationsItem = response_supported_location_parseFromJSON(locations_local_nonprimitive);

        list_addElement(locationsList, locationsItem);
    }

    // response_supported_locations->unsupported_locations
    cJSON *unsupported_locations = cJSON_GetObjectItemCaseSensitive(response_supported_locationsJSON, "unsupported_locations");
    if (!unsupported_locations) {
        goto end;
    }

    list_t *unsupported_locationsList;
    
    cJSON *unsupported_locations_local;
    if(!cJSON_IsArray(unsupported_locations)) {
        goto end;//primitive container
    }
    unsupported_locationsList = list_create();

    cJSON_ArrayForEach(unsupported_locations_local, unsupported_locations)
    {
        if(!cJSON_IsString(unsupported_locations_local))
        {
            goto end;
        }
        list_addElement(unsupported_locationsList , strdup(unsupported_locations_local->valuestring));
    }


    response_supported_locations_local_var = response_supported_locations_create (
        locationsList,
        unsupported_locationsList
        );

    return response_supported_locations_local_var;
end:
    return NULL;

}
