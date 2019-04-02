#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "coords.h"


coords_t *coords_create(
    double lat,
    double lng
    ) {
	coords_t *coords = malloc(sizeof(coords_t));
	coords->lat = lat;
	coords->lng = lng;

	return coords;
}


void coords_free(coords_t *coords) {
    listEntry_t *listEntry;

	free(coords);
}

cJSON *coords_convertToJSON(coords_t *coords) {
	cJSON *item = cJSON_CreateObject();
	// coords->lat
    if(cJSON_AddNumberToObject(item, "lat", coords->lat) == NULL) {
    goto fail; //Numeric
    }

	// coords->lng
    if(cJSON_AddNumberToObject(item, "lng", coords->lng) == NULL) {
    goto fail; //Numeric
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

coords_t *coords_parseFromJSON(char *jsonString){

    coords_t *coords = NULL;
    cJSON *coordsJSON = cJSON_Parse(jsonString);
    if(coordsJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // coords->lat
    cJSON *lat = cJSON_GetObjectItemCaseSensitive(coordsJSON, "lat");
    if(!cJSON_IsNumber(lat))
    {
    goto end; //Numeric
    }

    // coords->lng
    cJSON *lng = cJSON_GetObjectItemCaseSensitive(coordsJSON, "lng");
    if(!cJSON_IsNumber(lng))
    {
    goto end; //Numeric
    }


    coords = coords_create (
        lat->valuedouble,
        lng->valuedouble
        );
 cJSON_Delete(coordsJSON);
    return coords;
end:
    cJSON_Delete(coordsJSON);
    return NULL;

}

