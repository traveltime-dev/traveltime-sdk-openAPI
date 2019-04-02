#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_geocoding_geometry.h"
#include "list.h"


response_geocoding_geometry_t *response_geocoding_geometry_create(
    char *type,
    list_t *coordinates
    ) {
	response_geocoding_geometry_t *response_geocoding_geometry = malloc(sizeof(response_geocoding_geometry_t));
	response_geocoding_geometry->type = type;
	response_geocoding_geometry->coordinates = coordinates;

	return response_geocoding_geometry;
}


void response_geocoding_geometry_free(response_geocoding_geometry_t *response_geocoding_geometry) {
    listEntry_t *listEntry;
    free(response_geocoding_geometry->type);
	list_ForEach(listEntry, response_geocoding_geometry->coordinates) {
		free(listEntry->data);
	}
	list_free(response_geocoding_geometry->coordinates);

	free(response_geocoding_geometry);
}

cJSON *response_geocoding_geometry_convertToJSON(response_geocoding_geometry_t *response_geocoding_geometry) {
	cJSON *item = cJSON_CreateObject();
	// response_geocoding_geometry->type
    if(cJSON_AddStringToObject(item, "type", response_geocoding_geometry->type) == NULL) {
    goto fail; //String
    }

	// response_geocoding_geometry->coordinates
	cJSON *coordinates = cJSON_AddArrayToObject(item, "coordinates");
	if(coordinates == NULL) {
		goto fail; //primitive container
	}

	listEntry_t *coordinatesListEntry;
    list_ForEach(coordinatesListEntry, response_geocoding_geometry->coordinates) {
        if(cJSON_AddNumberToObject(coordinates, "", *(double *)coordinatesListEntry->data) == NULL)
        {
            goto fail;
        }
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_geocoding_geometry_t *response_geocoding_geometry_parseFromJSON(char *jsonString){

    response_geocoding_geometry_t *response_geocoding_geometry = NULL;
    cJSON *response_geocoding_geometryJSON = cJSON_Parse(jsonString);
    if(response_geocoding_geometryJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_geocoding_geometry->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(response_geocoding_geometryJSON, "type");
    if(!cJSON_IsString(type) || (type->valuestring == NULL)){
    goto end; //String
    }

    // response_geocoding_geometry->coordinates
    cJSON *coordinates;
    cJSON *coordinatesJSON = cJSON_GetObjectItemCaseSensitive(response_geocoding_geometryJSON, "coordinates");
    if(!cJSON_IsArray(coordinatesJSON)) {
        goto end;//primitive container
    }
    list_t *coordinatesList = list_create();

    cJSON_ArrayForEach(coordinates, coordinatesJSON)
    {
        if(!cJSON_IsNumber(coordinates))
        {
            goto end;
        }
        list_addElement(coordinatesList , &coordinates->valuedouble);

    }


    response_geocoding_geometry = response_geocoding_geometry_create (
        strdup(type->valuestring),
        coordinatesList
        );
 cJSON_Delete(response_geocoding_geometryJSON);
    return response_geocoding_geometry;
end:
    cJSON_Delete(response_geocoding_geometryJSON);
    return NULL;

}

