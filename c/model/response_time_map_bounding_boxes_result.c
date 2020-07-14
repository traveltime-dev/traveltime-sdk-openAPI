#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_time_map_bounding_boxes_result.h"



response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result_create(
    char *search_id,
    list_t *bounding_boxes,
    response_time_map_properties_t *properties
    ) {
    response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result_local_var = malloc(sizeof(response_time_map_bounding_boxes_result_t));
    if (!response_time_map_bounding_boxes_result_local_var) {
        return NULL;
    }
    response_time_map_bounding_boxes_result_local_var->search_id = search_id;
    response_time_map_bounding_boxes_result_local_var->bounding_boxes = bounding_boxes;
    response_time_map_bounding_boxes_result_local_var->properties = properties;

    return response_time_map_bounding_boxes_result_local_var;
}


void response_time_map_bounding_boxes_result_free(response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result) {
    if(NULL == response_time_map_bounding_boxes_result){
        return ;
    }
    listEntry_t *listEntry;
    free(response_time_map_bounding_boxes_result->search_id);
    list_ForEach(listEntry, response_time_map_bounding_boxes_result->bounding_boxes) {
        response_bounding_box_free(listEntry->data);
    }
    list_free(response_time_map_bounding_boxes_result->bounding_boxes);
    response_time_map_properties_free(response_time_map_bounding_boxes_result->properties);
    free(response_time_map_bounding_boxes_result);
}

cJSON *response_time_map_bounding_boxes_result_convertToJSON(response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result) {
    cJSON *item = cJSON_CreateObject();

    // response_time_map_bounding_boxes_result->search_id
    if (!response_time_map_bounding_boxes_result->search_id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "search_id", response_time_map_bounding_boxes_result->search_id) == NULL) {
    goto fail; //String
    }


    // response_time_map_bounding_boxes_result->bounding_boxes
    if (!response_time_map_bounding_boxes_result->bounding_boxes) {
        goto fail;
    }
    
    cJSON *bounding_boxes = cJSON_AddArrayToObject(item, "bounding_boxes");
    if(bounding_boxes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *bounding_boxesListEntry;
    if (response_time_map_bounding_boxes_result->bounding_boxes) {
    list_ForEach(bounding_boxesListEntry, response_time_map_bounding_boxes_result->bounding_boxes) {
    cJSON *itemLocal = response_bounding_box_convertToJSON(bounding_boxesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(bounding_boxes, itemLocal);
    }
    }


    // response_time_map_bounding_boxes_result->properties
    if (!response_time_map_bounding_boxes_result->properties) {
        goto fail;
    }
    
    cJSON *properties_local_JSON = response_time_map_properties_convertToJSON(response_time_map_bounding_boxes_result->properties);
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

response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result_parseFromJSON(cJSON *response_time_map_bounding_boxes_resultJSON){

    response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result_local_var = NULL;

    // response_time_map_bounding_boxes_result->search_id
    cJSON *search_id = cJSON_GetObjectItemCaseSensitive(response_time_map_bounding_boxes_resultJSON, "search_id");
    if (!search_id) {
        goto end;
    }

    
    if(!cJSON_IsString(search_id))
    {
    goto end; //String
    }

    // response_time_map_bounding_boxes_result->bounding_boxes
    cJSON *bounding_boxes = cJSON_GetObjectItemCaseSensitive(response_time_map_bounding_boxes_resultJSON, "bounding_boxes");
    if (!bounding_boxes) {
        goto end;
    }

    list_t *bounding_boxesList;
    
    cJSON *bounding_boxes_local_nonprimitive;
    if(!cJSON_IsArray(bounding_boxes)){
        goto end; //nonprimitive container
    }

    bounding_boxesList = list_create();

    cJSON_ArrayForEach(bounding_boxes_local_nonprimitive,bounding_boxes )
    {
        if(!cJSON_IsObject(bounding_boxes_local_nonprimitive)){
            goto end;
        }
        response_bounding_box_t *bounding_boxesItem = response_bounding_box_parseFromJSON(bounding_boxes_local_nonprimitive);

        list_addElement(bounding_boxesList, bounding_boxesItem);
    }

    // response_time_map_bounding_boxes_result->properties
    cJSON *properties = cJSON_GetObjectItemCaseSensitive(response_time_map_bounding_boxes_resultJSON, "properties");
    if (!properties) {
        goto end;
    }

    response_time_map_properties_t *properties_local_nonprim = NULL;
    
    properties_local_nonprim = response_time_map_properties_parseFromJSON(properties); //nonprimitive


    response_time_map_bounding_boxes_result_local_var = response_time_map_bounding_boxes_result_create (
        strdup(search_id->valuestring),
        bounding_boxesList,
        properties_local_nonprim
        );

    return response_time_map_bounding_boxes_result_local_var;
end:
    return NULL;

}
