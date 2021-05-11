#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_geocoding_geometry.h"



response_geocoding_geometry_t *response_geocoding_geometry_create(
    char *type,
    list_t *coordinates
    ) {
    response_geocoding_geometry_t *response_geocoding_geometry_local_var = malloc(sizeof(response_geocoding_geometry_t));
    if (!response_geocoding_geometry_local_var) {
        return NULL;
    }
    response_geocoding_geometry_local_var->type = type;
    response_geocoding_geometry_local_var->coordinates = coordinates;

    return response_geocoding_geometry_local_var;
}


void response_geocoding_geometry_free(response_geocoding_geometry_t *response_geocoding_geometry) {
    if(NULL == response_geocoding_geometry){
        return ;
    }
    listEntry_t *listEntry;
    if (response_geocoding_geometry->type) {
        free(response_geocoding_geometry->type);
        response_geocoding_geometry->type = NULL;
    }
    if (response_geocoding_geometry->coordinates) {
        list_ForEach(listEntry, response_geocoding_geometry->coordinates) {
            free(listEntry->data);
        }
        list_free(response_geocoding_geometry->coordinates);
        response_geocoding_geometry->coordinates = NULL;
    }
    free(response_geocoding_geometry);
}

cJSON *response_geocoding_geometry_convertToJSON(response_geocoding_geometry_t *response_geocoding_geometry) {
    cJSON *item = cJSON_CreateObject();

    // response_geocoding_geometry->type
    if (!response_geocoding_geometry->type) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "type", response_geocoding_geometry->type) == NULL) {
    goto fail; //String
    }


    // response_geocoding_geometry->coordinates
    if (!response_geocoding_geometry->coordinates) {
        goto fail;
    }
    
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
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_geocoding_geometry_t *response_geocoding_geometry_parseFromJSON(cJSON *response_geocoding_geometryJSON){

    response_geocoding_geometry_t *response_geocoding_geometry_local_var = NULL;

    // response_geocoding_geometry->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(response_geocoding_geometryJSON, "type");
    if (!type) {
        goto end;
    }

    
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }

    // response_geocoding_geometry->coordinates
    cJSON *coordinates = cJSON_GetObjectItemCaseSensitive(response_geocoding_geometryJSON, "coordinates");
    if (!coordinates) {
        goto end;
    }

    list_t *coordinatesList;
    
    cJSON *coordinates_local;
    if(!cJSON_IsArray(coordinates)) {
        goto end;//primitive container
    }
    coordinatesList = list_create();

    cJSON_ArrayForEach(coordinates_local, coordinates)
    {
        if(!cJSON_IsNumber(coordinates_local))
        {
            goto end;
        }
        list_addElement(coordinatesList , &coordinates_local->valuedouble);
    }


    response_geocoding_geometry_local_var = response_geocoding_geometry_create (
        strdup(type->valuestring),
        coordinatesList
        );

    return response_geocoding_geometry_local_var;
end:
    return NULL;

}
