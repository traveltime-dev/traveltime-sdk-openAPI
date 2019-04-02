#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_distance_breakdown_item.h"
#include "response_transportation_mode.h"


response_distance_breakdown_item_t *response_distance_breakdown_item_create(
    response_transportation_mode_t *mode,
    int distance
    ) {
	response_distance_breakdown_item_t *response_distance_breakdown_item = malloc(sizeof(response_distance_breakdown_item_t));
	response_distance_breakdown_item->mode = mode;
	response_distance_breakdown_item->distance = distance;

	return response_distance_breakdown_item;
}


void response_distance_breakdown_item_free(response_distance_breakdown_item_t *response_distance_breakdown_item) {
    listEntry_t *listEntry;
	response_transportation_mode_free(response_distance_breakdown_item->mode);

	free(response_distance_breakdown_item);
}

cJSON *response_distance_breakdown_item_convertToJSON(response_distance_breakdown_item_t *response_distance_breakdown_item) {
	cJSON *item = cJSON_CreateObject();
	// response_distance_breakdown_item->mode
	cJSON *mode = response_transportation_mode_convertToJSON(response_distance_breakdown_item->mode);
	if(mode == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "mode", mode);
	if(item->child == NULL) {
		goto fail;
	}

	// response_distance_breakdown_item->distance
    if(cJSON_AddNumberToObject(item, "distance", response_distance_breakdown_item->distance) == NULL) {
    goto fail; //Numeric
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_distance_breakdown_item_t *response_distance_breakdown_item_parseFromJSON(char *jsonString){

    response_distance_breakdown_item_t *response_distance_breakdown_item = NULL;
    cJSON *response_distance_breakdown_itemJSON = cJSON_Parse(jsonString);
    if(response_distance_breakdown_itemJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_distance_breakdown_item->mode
    response_transportation_mode_t *mode;
    cJSON *modeJSON = cJSON_GetObjectItemCaseSensitive(response_distance_breakdown_itemJSON, "mode");
    if(response_distance_breakdown_itemJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *modeJSONData = cJSON_Print(modeJSON);
    mode = response_transportation_mode_parseFromJSON(modeJSONData);

    // response_distance_breakdown_item->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(response_distance_breakdown_itemJSON, "distance");
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }


    response_distance_breakdown_item = response_distance_breakdown_item_create (
        mode,
        distance->valuedouble
        );
        free(modeJSONData);
 cJSON_Delete(response_distance_breakdown_itemJSON);
    return response_distance_breakdown_item;
end:
    cJSON_Delete(response_distance_breakdown_itemJSON);
    return NULL;

}

