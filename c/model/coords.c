#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "coords.h"



coords_t *coords_create(
    double lat,
    double lng
    ) {
    coords_t *coords_local_var = malloc(sizeof(coords_t));
    if (!coords_local_var) {
        return NULL;
    }
    coords_local_var->lat = lat;
    coords_local_var->lng = lng;

    return coords_local_var;
}


void coords_free(coords_t *coords) {
    listEntry_t *listEntry;
    free(coords);
}

cJSON *coords_convertToJSON(coords_t *coords) {
    cJSON *item = cJSON_CreateObject();

    // coords->lat
    if (!coords->lat) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "lat", coords->lat) == NULL) {
    goto fail; //Numeric
    }


    // coords->lng
    if (!coords->lng) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "lng", coords->lng) == NULL) {
    goto fail; //Numeric
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

coords_t *coords_parseFromJSON(cJSON *coordsJSON){

    coords_t *coords_local_var = NULL;

    // coords->lat
    cJSON *lat = cJSON_GetObjectItemCaseSensitive(coordsJSON, "lat");
    if (!lat) {
        goto end;
    }

    
    if(!cJSON_IsNumber(lat))
    {
    goto end; //Numeric
    }

    // coords->lng
    cJSON *lng = cJSON_GetObjectItemCaseSensitive(coordsJSON, "lng");
    if (!lng) {
        goto end;
    }

    
    if(!cJSON_IsNumber(lng))
    {
    goto end; //Numeric
    }


    coords_local_var = coords_create (
        lat->valuedouble,
        lng->valuedouble
        );

    return coords_local_var;
end:
    return NULL;

}
