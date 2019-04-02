#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_map_bounding_boxes_result.h"
#include "list.h"
#include "response_bounding_box.h"
#include "response_time_map_properties.h"


response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result_create(
    char *search_id,
    list_t *bounding_boxes,
    response_time_map_properties_t *properties
    ) {
	response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result = malloc(sizeof(response_time_map_bounding_boxes_result_t));
	response_time_map_bounding_boxes_result->search_id = search_id;
	response_time_map_bounding_boxes_result->bounding_boxes = bounding_boxes;
	response_time_map_bounding_boxes_result->properties = properties;

	return response_time_map_bounding_boxes_result;
}


void response_time_map_bounding_boxes_result_free(response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result) {
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
    if(cJSON_AddStringToObject(item, "search_id", response_time_map_bounding_boxes_result->search_id) == NULL) {
    goto fail; //String
    }

	// response_time_map_bounding_boxes_result->bounding_boxes
    cJSON *bounding_boxes = cJSON_AddArrayToObject(item, "bounding_boxes");
	if(bounding_boxes == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *bounding_boxesListEntry;
	list_ForEach(bounding_boxesListEntry, response_time_map_bounding_boxes_result->bounding_boxes) {
		cJSON *item = response_bounding_box_convertToJSON(bounding_boxesListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(bounding_boxes, item);
	}

	// response_time_map_bounding_boxes_result->properties
	cJSON *properties = response_time_map_properties_convertToJSON(response_time_map_bounding_boxes_result->properties);
	if(properties == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "properties", properties);
	if(item->child == NULL) {
		goto fail;
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result_parseFromJSON(char *jsonString){

    response_time_map_bounding_boxes_result_t *response_time_map_bounding_boxes_result = NULL;
    cJSON *response_time_map_bounding_boxes_resultJSON = cJSON_Parse(jsonString);
    if(response_time_map_bounding_boxes_resultJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_map_bounding_boxes_result->search_id
    cJSON *search_id = cJSON_GetObjectItemCaseSensitive(response_time_map_bounding_boxes_resultJSON, "search_id");
    if(!cJSON_IsString(search_id) || (search_id->valuestring == NULL)){
    goto end; //String
    }

    // response_time_map_bounding_boxes_result->bounding_boxes
    cJSON *bounding_boxes;
    cJSON *bounding_boxesJSON = cJSON_GetObjectItemCaseSensitive(response_time_map_bounding_boxes_resultJSON,"bounding_boxes");
    if(!cJSON_IsArray(bounding_boxesJSON)){
        goto end; //nonprimitive container
    }

    list_t *bounding_boxesList = list_create();

    cJSON_ArrayForEach(bounding_boxes,bounding_boxesJSON )
    {
        if(!cJSON_IsObject(bounding_boxes)){
            goto end;
        }
		char *JSONData = cJSON_Print(bounding_boxes);
        response_bounding_box_t *bounding_boxesItem = response_bounding_box_parseFromJSON(JSONData);

        list_addElement(bounding_boxesList, bounding_boxesItem);
        free(JSONData);
    }

    // response_time_map_bounding_boxes_result->properties
    response_time_map_properties_t *properties;
    cJSON *propertiesJSON = cJSON_GetObjectItemCaseSensitive(response_time_map_bounding_boxes_resultJSON, "properties");
    if(response_time_map_bounding_boxes_resultJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *propertiesJSONData = cJSON_Print(propertiesJSON);
    properties = response_time_map_properties_parseFromJSON(propertiesJSONData);


    response_time_map_bounding_boxes_result = response_time_map_bounding_boxes_result_create (
        strdup(search_id->valuestring),
        bounding_boxesList,
        properties
        );
        free(propertiesJSONData);
 cJSON_Delete(response_time_map_bounding_boxes_resultJSON);
    return response_time_map_bounding_boxes_result;
end:
    cJSON_Delete(response_time_map_bounding_boxes_resultJSON);
    return NULL;

}

