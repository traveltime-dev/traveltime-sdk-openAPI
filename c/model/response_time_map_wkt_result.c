#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_time_map_wkt_result.h"



response_time_map_wkt_result_t *response_time_map_wkt_result_create(
    char *search_id,
    char *shape,
    response_time_map_properties_t *properties
    ) {
    response_time_map_wkt_result_t *response_time_map_wkt_result_local_var = malloc(sizeof(response_time_map_wkt_result_t));
    if (!response_time_map_wkt_result_local_var) {
        return NULL;
    }
    response_time_map_wkt_result_local_var->search_id = search_id;
    response_time_map_wkt_result_local_var->shape = shape;
    response_time_map_wkt_result_local_var->properties = properties;

    return response_time_map_wkt_result_local_var;
}


void response_time_map_wkt_result_free(response_time_map_wkt_result_t *response_time_map_wkt_result) {
    listEntry_t *listEntry;
    free(response_time_map_wkt_result->search_id);
    free(response_time_map_wkt_result->shape);
    response_time_map_properties_free(response_time_map_wkt_result->properties);
    free(response_time_map_wkt_result);
}

cJSON *response_time_map_wkt_result_convertToJSON(response_time_map_wkt_result_t *response_time_map_wkt_result) {
    cJSON *item = cJSON_CreateObject();

    // response_time_map_wkt_result->search_id
    if (!response_time_map_wkt_result->search_id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "search_id", response_time_map_wkt_result->search_id) == NULL) {
    goto fail; //String
    }


    // response_time_map_wkt_result->shape
    if (!response_time_map_wkt_result->shape) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "shape", response_time_map_wkt_result->shape) == NULL) {
    goto fail; //String
    }


    // response_time_map_wkt_result->properties
    if (!response_time_map_wkt_result->properties) {
        goto fail;
    }
    
    cJSON *properties_local_JSON = response_time_map_properties_convertToJSON(response_time_map_wkt_result->properties);
    if(properties_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "properties", properties_local_JSON);
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

response_time_map_wkt_result_t *response_time_map_wkt_result_parseFromJSON(cJSON *response_time_map_wkt_resultJSON){

    response_time_map_wkt_result_t *response_time_map_wkt_result_local_var = NULL;

    // response_time_map_wkt_result->search_id
    cJSON *search_id = cJSON_GetObjectItemCaseSensitive(response_time_map_wkt_resultJSON, "search_id");
    if (!search_id) {
        goto end;
    }

    
    if(!cJSON_IsString(search_id))
    {
    goto end; //String
    }

    // response_time_map_wkt_result->shape
    cJSON *shape = cJSON_GetObjectItemCaseSensitive(response_time_map_wkt_resultJSON, "shape");
    if (!shape) {
        goto end;
    }

    
    if(!cJSON_IsString(shape))
    {
    goto end; //String
    }

    // response_time_map_wkt_result->properties
    cJSON *properties = cJSON_GetObjectItemCaseSensitive(response_time_map_wkt_resultJSON, "properties");
    if (!properties) {
        goto end;
    }

    response_time_map_properties_t *properties_local_nonprim = NULL;
    
    properties_local_nonprim = response_time_map_properties_parseFromJSON(properties); //nonprimitive


    response_time_map_wkt_result_local_var = response_time_map_wkt_result_create (
        strdup(search_id->valuestring),
        strdup(shape->valuestring),
        properties_local_nonprim
        );

    return response_time_map_wkt_result_local_var;
end:
    return NULL;

}
