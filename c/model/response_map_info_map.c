#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_map_info_map.h"



response_map_info_map_t *response_map_info_map_create(
    char *name,
    response_map_info_features_t *features
    ) {
    response_map_info_map_t *response_map_info_map_local_var = malloc(sizeof(response_map_info_map_t));
    if (!response_map_info_map_local_var) {
        return NULL;
    }
    response_map_info_map_local_var->name = name;
    response_map_info_map_local_var->features = features;

    return response_map_info_map_local_var;
}


void response_map_info_map_free(response_map_info_map_t *response_map_info_map) {
    if(NULL == response_map_info_map){
        return ;
    }
    listEntry_t *listEntry;
    if (response_map_info_map->name) {
        free(response_map_info_map->name);
        response_map_info_map->name = NULL;
    }
    if (response_map_info_map->features) {
        response_map_info_features_free(response_map_info_map->features);
        response_map_info_map->features = NULL;
    }
    free(response_map_info_map);
}

cJSON *response_map_info_map_convertToJSON(response_map_info_map_t *response_map_info_map) {
    cJSON *item = cJSON_CreateObject();

    // response_map_info_map->name
    if (!response_map_info_map->name) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "name", response_map_info_map->name) == NULL) {
    goto fail; //String
    }


    // response_map_info_map->features
    if (!response_map_info_map->features) {
        goto fail;
    }
    
    cJSON *features_local_JSON = response_map_info_features_convertToJSON(response_map_info_map->features);
    if(features_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "features", features_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_map_info_map_t *response_map_info_map_parseFromJSON(cJSON *response_map_info_mapJSON){

    response_map_info_map_t *response_map_info_map_local_var = NULL;

    // response_map_info_map->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(response_map_info_mapJSON, "name");
    if (!name) {
        goto end;
    }

    
    if(!cJSON_IsString(name))
    {
    goto end; //String
    }

    // response_map_info_map->features
    cJSON *features = cJSON_GetObjectItemCaseSensitive(response_map_info_mapJSON, "features");
    if (!features) {
        goto end;
    }

    response_map_info_features_t *features_local_nonprim = NULL;
    
    features_local_nonprim = response_map_info_features_parseFromJSON(features); //nonprimitive


    response_map_info_map_local_var = response_map_info_map_create (
        strdup(name->valuestring),
        features_local_nonprim
        );

    return response_map_info_map_local_var;
end:
    if (features_local_nonprim) {
        response_map_info_features_free(features_local_nonprim);
        features_local_nonprim = NULL;
    }
    return NULL;

}
