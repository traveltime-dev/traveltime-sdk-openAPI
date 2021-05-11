#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_supported_location.h"



response_supported_location_t *response_supported_location_create(
    char *id,
    char *map_name
    ) {
    response_supported_location_t *response_supported_location_local_var = malloc(sizeof(response_supported_location_t));
    if (!response_supported_location_local_var) {
        return NULL;
    }
    response_supported_location_local_var->id = id;
    response_supported_location_local_var->map_name = map_name;

    return response_supported_location_local_var;
}


void response_supported_location_free(response_supported_location_t *response_supported_location) {
    if(NULL == response_supported_location){
        return ;
    }
    listEntry_t *listEntry;
    if (response_supported_location->id) {
        free(response_supported_location->id);
        response_supported_location->id = NULL;
    }
    if (response_supported_location->map_name) {
        free(response_supported_location->map_name);
        response_supported_location->map_name = NULL;
    }
    free(response_supported_location);
}

cJSON *response_supported_location_convertToJSON(response_supported_location_t *response_supported_location) {
    cJSON *item = cJSON_CreateObject();

    // response_supported_location->id
    if (!response_supported_location->id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "id", response_supported_location->id) == NULL) {
    goto fail; //String
    }


    // response_supported_location->map_name
    if (!response_supported_location->map_name) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "map_name", response_supported_location->map_name) == NULL) {
    goto fail; //String
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_supported_location_t *response_supported_location_parseFromJSON(cJSON *response_supported_locationJSON){

    response_supported_location_t *response_supported_location_local_var = NULL;

    // response_supported_location->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(response_supported_locationJSON, "id");
    if (!id) {
        goto end;
    }

    
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }

    // response_supported_location->map_name
    cJSON *map_name = cJSON_GetObjectItemCaseSensitive(response_supported_locationJSON, "map_name");
    if (!map_name) {
        goto end;
    }

    
    if(!cJSON_IsString(map_name))
    {
    goto end; //String
    }


    response_supported_location_local_var = response_supported_location_create (
        strdup(id->valuestring),
        strdup(map_name->valuestring)
        );

    return response_supported_location_local_var;
end:
    return NULL;

}
