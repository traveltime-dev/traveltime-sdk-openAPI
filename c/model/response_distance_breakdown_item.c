#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_distance_breakdown_item.h"



response_distance_breakdown_item_t *response_distance_breakdown_item_create(
    response_transportation_mode_e mode,
    int distance
    ) {
	response_distance_breakdown_item_t *response_distance_breakdown_item_local_var = malloc(sizeof(response_distance_breakdown_item_t));
    if (!response_distance_breakdown_item_local_var) {
        return NULL;
    }
	response_distance_breakdown_item_local_var->mode = mode;
	response_distance_breakdown_item_local_var->distance = distance;

	return response_distance_breakdown_item_local_var;
}


void response_distance_breakdown_item_free(response_distance_breakdown_item_t *response_distance_breakdown_item) {
    listEntry_t *listEntry;
	free(response_distance_breakdown_item);
}

cJSON *response_distance_breakdown_item_convertToJSON(response_distance_breakdown_item_t *response_distance_breakdown_item) {
	cJSON *item = cJSON_CreateObject();

	// response_distance_breakdown_item->mode
    
    cJSON *mode_enum_local_JSON = response_transportation_mode_convertToJSON(response_distance_breakdown_item->mode);
    if(mode_enum_local_JSON == NULL) {
    goto fail; // enum
    }
    cJSON_AddItemToObject(item, "mode", mode_enum_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


	// response_distance_breakdown_item->distance
    if (!response_distance_breakdown_item->distance) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "distance", response_distance_breakdown_item->distance) == NULL) {
    goto fail; //Numeric
    }

	return item;
fail:
	if (item) {
        cJSON_Delete(item);
    }
	return NULL;
}

response_distance_breakdown_item_t *response_distance_breakdown_item_parseFromJSON(cJSON *response_distance_breakdown_itemJSON){

    response_distance_breakdown_item_t *response_distance_breakdown_item_local_var = NULL;

    // response_distance_breakdown_item->mode
    cJSON *mode = cJSON_GetObjectItemCaseSensitive(response_distance_breakdown_itemJSON, "mode");
    if (!mode) {
        goto end;
    }

    response_transportation_mode_e mode_local_nonprim_enum;
    
    mode_local_nonprim_enum = response_transportation_mode_parseFromJSON(mode); //enum model

    // response_distance_breakdown_item->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(response_distance_breakdown_itemJSON, "distance");
    if (!distance) {
        goto end;
    }

    
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }


    response_distance_breakdown_item_local_var = response_distance_breakdown_item_create (
        mode_local_nonprim_enum,
        distance->valuedouble
        );

    return response_distance_breakdown_item_local_var;
end:
    return NULL;

}
