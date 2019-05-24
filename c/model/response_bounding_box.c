#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_bounding_box.h"



response_bounding_box_t *response_bounding_box_create(
    response_box_t *envelope,
    list_t *boxes
    ) {
	response_bounding_box_t *response_bounding_box_local_var = malloc(sizeof(response_bounding_box_t));
    if (!response_bounding_box_local_var) {
        return NULL;
    }
	response_bounding_box_local_var->envelope = envelope;
	response_bounding_box_local_var->boxes = boxes;

	return response_bounding_box_local_var;
}


void response_bounding_box_free(response_bounding_box_t *response_bounding_box) {
    listEntry_t *listEntry;
    response_box_free(response_bounding_box->envelope);
	list_ForEach(listEntry, response_bounding_box->boxes) {
		response_box_free(listEntry->data);
	}
	list_free(response_bounding_box->boxes);
	free(response_bounding_box);
}

cJSON *response_bounding_box_convertToJSON(response_bounding_box_t *response_bounding_box) {
	cJSON *item = cJSON_CreateObject();

	// response_bounding_box->envelope
    if (!response_bounding_box->envelope) {
        goto fail;
    }
    
    cJSON *envelope_local_JSON = response_box_convertToJSON(response_bounding_box->envelope);
    if(envelope_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "envelope", envelope_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


	// response_bounding_box->boxes
    if (!response_bounding_box->boxes) {
        goto fail;
    }
    
    cJSON *boxes = cJSON_AddArrayToObject(item, "boxes");
    if(boxes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *boxesListEntry;
    if (response_bounding_box->boxes) {
    list_ForEach(boxesListEntry, response_bounding_box->boxes) {
    cJSON *itemLocal = response_box_convertToJSON(boxesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(boxes, itemLocal);
    }
    }

	return item;
fail:
	if (item) {
        cJSON_Delete(item);
    }
	return NULL;
}

response_bounding_box_t *response_bounding_box_parseFromJSON(cJSON *response_bounding_boxJSON){

    response_bounding_box_t *response_bounding_box_local_var = NULL;

    // response_bounding_box->envelope
    cJSON *envelope = cJSON_GetObjectItemCaseSensitive(response_bounding_boxJSON, "envelope");
    if (!envelope) {
        goto end;
    }

    response_box_t *envelope_local_nonprim = NULL;
    
    envelope_local_nonprim = response_box_parseFromJSON(envelope); //nonprimitive

    // response_bounding_box->boxes
    cJSON *boxes = cJSON_GetObjectItemCaseSensitive(response_bounding_boxJSON, "boxes");
    if (!boxes) {
        goto end;
    }

    list_t *boxesList;
    
    cJSON *boxes_local_nonprimitive;
    if(!cJSON_IsArray(boxes)){
        goto end; //nonprimitive container
    }

    boxesList = list_create();

    cJSON_ArrayForEach(boxes_local_nonprimitive,boxes )
    {
        if(!cJSON_IsObject(boxes_local_nonprimitive)){
            goto end;
        }
        response_box_t *boxesItem = response_box_parseFromJSON(boxes_local_nonprimitive);

        list_addElement(boxesList, boxesItem);
    }


    response_bounding_box_local_var = response_bounding_box_create (
        envelope_local_nonprim,
        boxesList
        );

    return response_bounding_box_local_var;
end:
    return NULL;

}
