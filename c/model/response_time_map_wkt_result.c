#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_map_wkt_result.h"
#include "response_time_map_properties.h"


response_time_map_wkt_result_t *response_time_map_wkt_result_create(
    char *search_id,
    char *shape,
    response_time_map_properties_t *properties
    ) {
	response_time_map_wkt_result_t *response_time_map_wkt_result = malloc(sizeof(response_time_map_wkt_result_t));
	response_time_map_wkt_result->search_id = search_id;
	response_time_map_wkt_result->shape = shape;
	response_time_map_wkt_result->properties = properties;

	return response_time_map_wkt_result;
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
    if(cJSON_AddStringToObject(item, "search_id", response_time_map_wkt_result->search_id) == NULL) {
    goto fail; //String
    }

	// response_time_map_wkt_result->shape
    if(cJSON_AddStringToObject(item, "shape", response_time_map_wkt_result->shape) == NULL) {
    goto fail; //String
    }

	// response_time_map_wkt_result->properties
	cJSON *properties = response_time_map_properties_convertToJSON(response_time_map_wkt_result->properties);
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

response_time_map_wkt_result_t *response_time_map_wkt_result_parseFromJSON(char *jsonString){

    response_time_map_wkt_result_t *response_time_map_wkt_result = NULL;
    cJSON *response_time_map_wkt_resultJSON = cJSON_Parse(jsonString);
    if(response_time_map_wkt_resultJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_map_wkt_result->search_id
    cJSON *search_id = cJSON_GetObjectItemCaseSensitive(response_time_map_wkt_resultJSON, "search_id");
    if(!cJSON_IsString(search_id) || (search_id->valuestring == NULL)){
    goto end; //String
    }

    // response_time_map_wkt_result->shape
    cJSON *shape = cJSON_GetObjectItemCaseSensitive(response_time_map_wkt_resultJSON, "shape");
    if(!cJSON_IsString(shape) || (shape->valuestring == NULL)){
    goto end; //String
    }

    // response_time_map_wkt_result->properties
    response_time_map_properties_t *properties;
    cJSON *propertiesJSON = cJSON_GetObjectItemCaseSensitive(response_time_map_wkt_resultJSON, "properties");
    if(response_time_map_wkt_resultJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *propertiesJSONData = cJSON_Print(propertiesJSON);
    properties = response_time_map_properties_parseFromJSON(propertiesJSONData);


    response_time_map_wkt_result = response_time_map_wkt_result_create (
        strdup(search_id->valuestring),
        strdup(shape->valuestring),
        properties
        );
        free(propertiesJSONData);
 cJSON_Delete(response_time_map_wkt_resultJSON);
    return response_time_map_wkt_result;
end:
    cJSON_Delete(response_time_map_wkt_resultJSON);
    return NULL;

}

