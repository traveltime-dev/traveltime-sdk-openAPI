#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_supported_locations.h"
#include "list.h"
#include "response_supported_location.h"


response_supported_locations_t *response_supported_locations_create(
    list_t *locations,
    list_t *unsupported_locations
    ) {
	response_supported_locations_t *response_supported_locations = malloc(sizeof(response_supported_locations_t));
	response_supported_locations->locations = locations;
	response_supported_locations->unsupported_locations = unsupported_locations;

	return response_supported_locations;
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
    cJSON *locations = cJSON_AddArrayToObject(item, "locations");
	if(locations == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *locationsListEntry;
	list_ForEach(locationsListEntry, response_supported_locations->locations) {
		cJSON *item = response_supported_location_convertToJSON(locationsListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(locations, item);
	}

	// response_supported_locations->unsupported_locations
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
	cJSON_Delete(item);
	return NULL;
}

response_supported_locations_t *response_supported_locations_parseFromJSON(char *jsonString){

    response_supported_locations_t *response_supported_locations = NULL;
    cJSON *response_supported_locationsJSON = cJSON_Parse(jsonString);
    if(response_supported_locationsJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_supported_locations->locations
    cJSON *locations;
    cJSON *locationsJSON = cJSON_GetObjectItemCaseSensitive(response_supported_locationsJSON,"locations");
    if(!cJSON_IsArray(locationsJSON)){
        goto end; //nonprimitive container
    }

    list_t *locationsList = list_create();

    cJSON_ArrayForEach(locations,locationsJSON )
    {
        if(!cJSON_IsObject(locations)){
            goto end;
        }
		char *JSONData = cJSON_Print(locations);
        response_supported_location_t *locationsItem = response_supported_location_parseFromJSON(JSONData);

        list_addElement(locationsList, locationsItem);
        free(JSONData);
    }

    // response_supported_locations->unsupported_locations
    cJSON *unsupported_locations;
    cJSON *unsupported_locationsJSON = cJSON_GetObjectItemCaseSensitive(response_supported_locationsJSON, "unsupported_locations");
    if(!cJSON_IsArray(unsupported_locationsJSON)) {
        goto end;//primitive container
    }
    list_t *unsupported_locationsList = list_create();

    cJSON_ArrayForEach(unsupported_locations, unsupported_locationsJSON)
    {
        if(!cJSON_IsString(unsupported_locations))
        {
            goto end;
        }
        list_addElement(unsupported_locationsList , strdup(unsupported_locations->valuestring));

    }


    response_supported_locations = response_supported_locations_create (
        locationsList,
        unsupported_locationsList
        );
 cJSON_Delete(response_supported_locationsJSON);
    return response_supported_locations;
end:
    cJSON_Delete(response_supported_locationsJSON);
    return NULL;

}

