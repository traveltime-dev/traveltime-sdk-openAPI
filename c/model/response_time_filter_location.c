#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_filter_location.h"
#include "list.h"
#include "response_time_filter_properties.h"


response_time_filter_location_t *response_time_filter_location_create(
    char *id,
    list_t *properties
    ) {
	response_time_filter_location_t *response_time_filter_location = malloc(sizeof(response_time_filter_location_t));
	response_time_filter_location->id = id;
	response_time_filter_location->properties = properties;

	return response_time_filter_location;
}


void response_time_filter_location_free(response_time_filter_location_t *response_time_filter_location) {
    listEntry_t *listEntry;
    free(response_time_filter_location->id);
		list_ForEach(listEntry, response_time_filter_location->properties) {
		response_time_filter_properties_free(listEntry->data);
	}
	list_free(response_time_filter_location->properties);

	free(response_time_filter_location);
}

cJSON *response_time_filter_location_convertToJSON(response_time_filter_location_t *response_time_filter_location) {
	cJSON *item = cJSON_CreateObject();
	// response_time_filter_location->id
    if(cJSON_AddStringToObject(item, "id", response_time_filter_location->id) == NULL) {
    goto fail; //String
    }

	// response_time_filter_location->properties
    cJSON *properties = cJSON_AddArrayToObject(item, "properties");
	if(properties == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *propertiesListEntry;
	list_ForEach(propertiesListEntry, response_time_filter_location->properties) {
		cJSON *item = response_time_filter_properties_convertToJSON(propertiesListEntry->data);
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

response_time_filter_location_t *response_time_filter_location_parseFromJSON(char *jsonString){

    response_time_filter_location_t *response_time_filter_location = NULL;
    cJSON *response_time_filter_locationJSON = cJSON_Parse(jsonString);
    if(response_time_filter_locationJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_filter_location->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(response_time_filter_locationJSON, "id");
    if(!cJSON_IsString(id) || (id->valuestring == NULL)){
    goto end; //String
    }

    // response_time_filter_location->properties
    cJSON *properties;
    cJSON *propertiesJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_locationJSON,"properties");
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
        response_time_filter_properties_t *propertiesItem = response_time_filter_properties_parseFromJSON(JSONData);

        list_addElement(propertiesList, propertiesItem);
        free(JSONData);
    }


    response_time_filter_location = response_time_filter_location_create (
        strdup(id->valuestring),
        propertiesList
        );
 cJSON_Delete(response_time_filter_locationJSON);
    return response_time_filter_location;
end:
    cJSON_Delete(response_time_filter_locationJSON);
    return NULL;

}

