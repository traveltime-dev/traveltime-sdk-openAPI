#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "request_range_full.h"


request_range_full_t *request_range_full_create(
    bool enabled,
    int max_results,
    int width
    ) {
	request_range_full_t *request_range_full = malloc(sizeof(request_range_full_t));
	request_range_full->enabled = enabled;
	request_range_full->max_results = max_results;
	request_range_full->width = width;

	return request_range_full;
}


void request_range_full_free(request_range_full_t *request_range_full) {
    listEntry_t *listEntry;

	free(request_range_full);
}

cJSON *request_range_full_convertToJSON(request_range_full_t *request_range_full) {
	cJSON *item = cJSON_CreateObject();
	// request_range_full->enabled
    if(cJSON_AddBoolToObject(item, "enabled", request_range_full->enabled) == NULL) {
    goto fail; //Numeric
    }

	// request_range_full->max_results
    if(cJSON_AddNumberToObject(item, "max_results", request_range_full->max_results) == NULL) {
    goto fail; //Numeric
    }

	// request_range_full->width
    if(cJSON_AddNumberToObject(item, "width", request_range_full->width) == NULL) {
    goto fail; //Numeric
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

request_range_full_t *request_range_full_parseFromJSON(char *jsonString){

    request_range_full_t *request_range_full = NULL;
    cJSON *request_range_fullJSON = cJSON_Parse(jsonString);
    if(request_range_fullJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // request_range_full->enabled
    cJSON *enabled = cJSON_GetObjectItemCaseSensitive(request_range_fullJSON, "enabled");
    if(!cJSON_IsBool(enabled))
    {
    goto end; //Numeric
    }

    // request_range_full->max_results
    cJSON *max_results = cJSON_GetObjectItemCaseSensitive(request_range_fullJSON, "max_results");
    if(!cJSON_IsNumber(max_results))
    {
    goto end; //Numeric
    }

    // request_range_full->width
    cJSON *width = cJSON_GetObjectItemCaseSensitive(request_range_fullJSON, "width");
    if(!cJSON_IsNumber(width))
    {
    goto end; //Numeric
    }


    request_range_full = request_range_full_create (
        enabled->valueint,
        max_results->valuedouble,
        width->valuedouble
        );
 cJSON_Delete(request_range_fullJSON);
    return request_range_full;
end:
    cJSON_Delete(request_range_fullJSON);
    return NULL;

}

