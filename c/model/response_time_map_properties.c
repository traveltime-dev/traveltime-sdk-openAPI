#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_time_map_properties.h"



response_time_map_properties_t *response_time_map_properties_create(
    int is_only_walking
    ) {
    response_time_map_properties_t *response_time_map_properties_local_var = malloc(sizeof(response_time_map_properties_t));
    if (!response_time_map_properties_local_var) {
        return NULL;
    }
    response_time_map_properties_local_var->is_only_walking = is_only_walking;

    return response_time_map_properties_local_var;
}


void response_time_map_properties_free(response_time_map_properties_t *response_time_map_properties) {
    if(NULL == response_time_map_properties){
        return ;
    }
    listEntry_t *listEntry;
    free(response_time_map_properties);
}

cJSON *response_time_map_properties_convertToJSON(response_time_map_properties_t *response_time_map_properties) {
    cJSON *item = cJSON_CreateObject();

    // response_time_map_properties->is_only_walking
    if(response_time_map_properties->is_only_walking) { 
    if(cJSON_AddBoolToObject(item, "is_only_walking", response_time_map_properties->is_only_walking) == NULL) {
    goto fail; //Bool
    }
     } 

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_time_map_properties_t *response_time_map_properties_parseFromJSON(cJSON *response_time_map_propertiesJSON){

    response_time_map_properties_t *response_time_map_properties_local_var = NULL;

    // response_time_map_properties->is_only_walking
    cJSON *is_only_walking = cJSON_GetObjectItemCaseSensitive(response_time_map_propertiesJSON, "is_only_walking");
    if (is_only_walking) { 
    if(!cJSON_IsBool(is_only_walking))
    {
    goto end; //Bool
    }
    }


    response_time_map_properties_local_var = response_time_map_properties_create (
        is_only_walking ? is_only_walking->valueint : 0
        );

    return response_time_map_properties_local_var;
end:
    return NULL;

}
