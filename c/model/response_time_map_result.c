#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_time_map_result.h"



response_time_map_result_t *response_time_map_result_create(
    char *search_id,
    list_t *shapes,
    response_time_map_properties_t *properties
    ) {
    response_time_map_result_t *response_time_map_result_local_var = malloc(sizeof(response_time_map_result_t));
    if (!response_time_map_result_local_var) {
        return NULL;
    }
    response_time_map_result_local_var->search_id = search_id;
    response_time_map_result_local_var->shapes = shapes;
    response_time_map_result_local_var->properties = properties;

    return response_time_map_result_local_var;
}


void response_time_map_result_free(response_time_map_result_t *response_time_map_result) {
    if(NULL == response_time_map_result){
        return ;
    }
    listEntry_t *listEntry;
    free(response_time_map_result->search_id);
    list_ForEach(listEntry, response_time_map_result->shapes) {
        response_shape_free(listEntry->data);
    }
    list_free(response_time_map_result->shapes);
    response_time_map_properties_free(response_time_map_result->properties);
    free(response_time_map_result);
}

cJSON *response_time_map_result_convertToJSON(response_time_map_result_t *response_time_map_result) {
    cJSON *item = cJSON_CreateObject();

    // response_time_map_result->search_id
    if (!response_time_map_result->search_id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "search_id", response_time_map_result->search_id) == NULL) {
    goto fail; //String
    }


    // response_time_map_result->shapes
    if (!response_time_map_result->shapes) {
        goto fail;
    }
    
    cJSON *shapes = cJSON_AddArrayToObject(item, "shapes");
    if(shapes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *shapesListEntry;
    if (response_time_map_result->shapes) {
    list_ForEach(shapesListEntry, response_time_map_result->shapes) {
    cJSON *itemLocal = response_shape_convertToJSON(shapesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(shapes, itemLocal);
    }
    }


    // response_time_map_result->properties
    if (!response_time_map_result->properties) {
        goto fail;
    }
    
    cJSON *properties_local_JSON = response_time_map_properties_convertToJSON(response_time_map_result->properties);
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

response_time_map_result_t *response_time_map_result_parseFromJSON(cJSON *response_time_map_resultJSON){

    response_time_map_result_t *response_time_map_result_local_var = NULL;

    // response_time_map_result->search_id
    cJSON *search_id = cJSON_GetObjectItemCaseSensitive(response_time_map_resultJSON, "search_id");
    if (!search_id) {
        goto end;
    }

    
    if(!cJSON_IsString(search_id))
    {
    goto end; //String
    }

    // response_time_map_result->shapes
    cJSON *shapes = cJSON_GetObjectItemCaseSensitive(response_time_map_resultJSON, "shapes");
    if (!shapes) {
        goto end;
    }

    list_t *shapesList;
    
    cJSON *shapes_local_nonprimitive;
    if(!cJSON_IsArray(shapes)){
        goto end; //nonprimitive container
    }

    shapesList = list_create();

    cJSON_ArrayForEach(shapes_local_nonprimitive,shapes )
    {
        if(!cJSON_IsObject(shapes_local_nonprimitive)){
            goto end;
        }
        response_shape_t *shapesItem = response_shape_parseFromJSON(shapes_local_nonprimitive);

        list_addElement(shapesList, shapesItem);
    }

    // response_time_map_result->properties
    cJSON *properties = cJSON_GetObjectItemCaseSensitive(response_time_map_resultJSON, "properties");
    if (!properties) {
        goto end;
    }

    response_time_map_properties_t *properties_local_nonprim = NULL;
    
    properties_local_nonprim = response_time_map_properties_parseFromJSON(properties); //nonprimitive


    response_time_map_result_local_var = response_time_map_result_create (
        strdup(search_id->valuestring),
        shapesList,
        properties_local_nonprim
        );

    return response_time_map_result_local_var;
end:
    return NULL;

}
