#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_routes_location.h"
#include "list.h"
#include "response_routes_properties.h"


response_routes_location_t *response_routes_location_create(
    char *id,
    list_t *properties
    ) {
	response_routes_location_t *response_routes_location = malloc(sizeof(response_routes_location_t));
	response_routes_location->id = id;
	response_routes_location->properties = properties;

	return response_routes_location;
}


void response_routes_location_free(response_routes_location_t *response_routes_location) {
    listEntry_t *listEntry;
    free(response_routes_location->id);
		list_ForEach(listEntry, response_routes_location->properties) {
		response_routes_properties_free(listEntry->data);
	}
	list_free(response_routes_location->properties);

	free(response_routes_location);
}

cJSON *response_routes_location_convertToJSON(response_routes_location_t *response_routes_location) {
	cJSON *item = cJSON_CreateObject();
	// response_routes_location->id
    if(cJSON_AddStringToObject(item, "id", response_routes_location->id) == NULL) {
    goto fail; //String
    }

	// response_routes_location->properties
    cJSON *properties = cJSON_AddArrayToObject(item, "properties");
	if(properties == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *propertiesListEntry;
	list_ForEach(propertiesListEntry, response_routes_location->properties) {
		cJSON *item = response_routes_properties_convertToJSON(propertiesListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(properties, item);
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_routes_location_t *response_routes_location_parseFromJSON(char *jsonString){

    response_routes_location_t *response_routes_location = NULL;
    cJSON *response_routes_locationJSON = cJSON_Parse(jsonString);
    if(response_routes_locationJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_routes_location->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(response_routes_locationJSON, "id");
    if(!cJSON_IsString(id) || (id->valuestring == NULL)){
    goto end; //String
    }

    // response_routes_location->properties
    cJSON *properties;
    cJSON *propertiesJSON = cJSON_GetObjectItemCaseSensitive(response_routes_locationJSON,"properties");
    if(!cJSON_IsArray(propertiesJSON)){
        goto end; //nonprimitive container
    }

    list_t *propertiesList = list_create();

    cJSON_ArrayForEach(properties,propertiesJSON )
    {
        if(!cJSON_IsObject(properties)){
            goto end;
        }
		char *JSONData = cJSON_Print(properties);
        response_routes_properties_t *propertiesItem = response_routes_properties_parseFromJSON(JSONData);

        list_addElement(propertiesList, propertiesItem);
        free(JSONData);
    }


    response_routes_location = response_routes_location_create (
        strdup(id->valuestring),
        propertiesList
        );
 cJSON_Delete(response_routes_locationJSON);
    return response_routes_location;
end:
    cJSON_Delete(response_routes_locationJSON);
    return NULL;

}

