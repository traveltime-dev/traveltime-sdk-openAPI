#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_map_result.h"
#include "list.h"
#include "response_shape.h"
#include "response_time_map_properties.h"


response_time_map_result_t *response_time_map_result_create(
    char *search_id,
    list_t *shapes,
    response_time_map_properties_t *properties
    ) {
	response_time_map_result_t *response_time_map_result = malloc(sizeof(response_time_map_result_t));
	response_time_map_result->search_id = search_id;
	response_time_map_result->shapes = shapes;
	response_time_map_result->properties = properties;

	return response_time_map_result;
}


void response_time_map_result_free(response_time_map_result_t *response_time_map_result) {
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
    if(cJSON_AddStringToObject(item, "search_id", response_time_map_result->search_id) == NULL) {
    goto fail; //String
    }

	// response_time_map_result->shapes
    cJSON *shapes = cJSON_AddArrayToObject(item, "shapes");
	if(shapes == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *shapesListEntry;
	list_ForEach(shapesListEntry, response_time_map_result->shapes) {
		cJSON *item = response_shape_convertToJSON(shapesListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(shapes, item);
	}

	// response_time_map_result->properties
	cJSON *properties = response_time_map_properties_convertToJSON(response_time_map_result->properties);
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

response_time_map_result_t *response_time_map_result_parseFromJSON(char *jsonString){

    response_time_map_result_t *response_time_map_result = NULL;
    cJSON *response_time_map_resultJSON = cJSON_Parse(jsonString);
    if(response_time_map_resultJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_map_result->search_id
    cJSON *search_id = cJSON_GetObjectItemCaseSensitive(response_time_map_resultJSON, "search_id");
    if(!cJSON_IsString(search_id) || (search_id->valuestring == NULL)){
    goto end; //String
    }

    // response_time_map_result->shapes
    cJSON *shapes;
    cJSON *shapesJSON = cJSON_GetObjectItemCaseSensitive(response_time_map_resultJSON,"shapes");
    if(!cJSON_IsArray(shapesJSON)){
        goto end; //nonprimitive container
    }

    list_t *shapesList = list_create();

    cJSON_ArrayForEach(shapes,shapesJSON )
    {
        if(!cJSON_IsObject(shapes)){
            goto end;
        }
		char *JSONData = cJSON_Print(shapes);
        response_shape_t *shapesItem = response_shape_parseFromJSON(JSONData);

        list_addElement(shapesList, shapesItem);
        free(JSONData);
    }

    // response_time_map_result->properties
    response_time_map_properties_t *properties;
    cJSON *propertiesJSON = cJSON_GetObjectItemCaseSensitive(response_time_map_resultJSON, "properties");
    if(response_time_map_resultJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *propertiesJSONData = cJSON_Print(propertiesJSON);
    properties = response_time_map_properties_parseFromJSON(propertiesJSONData);


    response_time_map_result = response_time_map_result_create (
        strdup(search_id->valuestring),
        shapesList,
        properties
        );
        free(propertiesJSONData);
 cJSON_Delete(response_time_map_resultJSON);
    return response_time_map_result;
end:
    cJSON_Delete(response_time_map_resultJSON);
    return NULL;

}

