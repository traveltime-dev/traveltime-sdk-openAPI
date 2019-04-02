#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_bounding_box.h"
#include "list.h"
#include "response_box.h"


response_bounding_box_t *response_bounding_box_create(
    response_box_t *envelope,
    list_t *boxes
    ) {
	response_bounding_box_t *response_bounding_box = malloc(sizeof(response_bounding_box_t));
	response_bounding_box->envelope = envelope;
	response_bounding_box->boxes = boxes;

	return response_bounding_box;
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
	cJSON *envelope = response_box_convertToJSON(response_bounding_box->envelope);
	if(envelope == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "envelope", envelope);
	if(item->child == NULL) {
		goto fail;
	}

	// response_bounding_box->boxes
    cJSON *boxes = cJSON_AddArrayToObject(item, "boxes");
	if(boxes == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *boxesListEntry;
	list_ForEach(boxesListEntry, response_bounding_box->boxes) {
		cJSON *item = response_box_convertToJSON(boxesListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(boxes, item);
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_bounding_box_t *response_bounding_box_parseFromJSON(char *jsonString){

    response_bounding_box_t *response_bounding_box = NULL;
    cJSON *response_bounding_boxJSON = cJSON_Parse(jsonString);
    if(response_bounding_boxJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_bounding_box->envelope
    response_box_t *envelope;
    cJSON *envelopeJSON = cJSON_GetObjectItemCaseSensitive(response_bounding_boxJSON, "envelope");
    if(response_bounding_boxJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *envelopeJSONData = cJSON_Print(envelopeJSON);
    envelope = response_box_parseFromJSON(envelopeJSONData);

    // response_bounding_box->boxes
    cJSON *boxes;
    cJSON *boxesJSON = cJSON_GetObjectItemCaseSensitive(response_bounding_boxJSON,"boxes");
    if(!cJSON_IsArray(boxesJSON)){
        goto end; //nonprimitive container
    }

    list_t *boxesList = list_create();

    cJSON_ArrayForEach(boxes,boxesJSON )
    {
        if(!cJSON_IsObject(boxes)){
            goto end;
        }
		char *JSONData = cJSON_Print(boxes);
        response_box_t *boxesItem = response_box_parseFromJSON(JSONData);

        list_addElement(boxesList, boxesItem);
        free(JSONData);
    }


    response_bounding_box = response_bounding_box_create (
        envelope,
        boxesList
        );
        free(envelopeJSONData);
 cJSON_Delete(response_bounding_boxJSON);
    return response_bounding_box;
end:
    cJSON_Delete(response_bounding_boxJSON);
    return NULL;

}

