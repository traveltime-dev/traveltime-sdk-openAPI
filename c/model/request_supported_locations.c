#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "request_supported_locations.h"
#include "list.h"
#include "request_location.h"


request_supported_locations_t *request_supported_locations_create(
    list_t *locations
    ) {
	request_supported_locations_t *request_supported_locations = malloc(sizeof(request_supported_locations_t));
	request_supported_locations->locations = locations;

	return request_supported_locations;
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
    cJSON *locations = cJSON_AddArrayToObject(item, "locations");
	if(locations == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *locationsListEntry;
	list_ForEach(locationsListEntry, request_supported_locations->locations) {
		cJSON *item = request_location_convertToJSON(locationsListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(locations, item);
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

request_supported_locations_t *request_supported_locations_parseFromJSON(char *jsonString){

    request_supported_locations_t *request_supported_locations = NULL;
    cJSON *request_supported_locationsJSON = cJSON_Parse(jsonString);
    if(request_supported_locationsJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // request_supported_locations->locations
    cJSON *locations;
    cJSON *locationsJSON = cJSON_GetObjectItemCaseSensitive(request_supported_locationsJSON,"locations");
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
        request_location_t *locationsItem = request_location_parseFromJSON(JSONData);

        list_addElement(locationsList, locationsItem);
        free(JSONData);
    }


    request_supported_locations = request_supported_locations_create (
        locationsList
        );
 cJSON_Delete(request_supported_locationsJSON);
    return request_supported_locations;
end:
    cJSON_Delete(request_supported_locationsJSON);
    return NULL;

}

