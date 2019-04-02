#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "request_range_no_max_results.h"


request_range_no_max_results_t *request_range_no_max_results_create(
    bool enabled,
    int width
    ) {
	request_range_no_max_results_t *request_range_no_max_results = malloc(sizeof(request_range_no_max_results_t));
	request_range_no_max_results->enabled = enabled;
	request_range_no_max_results->width = width;

	return request_range_no_max_results;
}


void request_range_no_max_results_free(request_range_no_max_results_t *request_range_no_max_results) {
    listEntry_t *listEntry;

	free(request_range_no_max_results);
}

cJSON *request_range_no_max_results_convertToJSON(request_range_no_max_results_t *request_range_no_max_results) {
	cJSON *item = cJSON_CreateObject();
	// request_range_no_max_results->enabled
    if(cJSON_AddBoolToObject(item, "enabled", request_range_no_max_results->enabled) == NULL) {
    goto fail; //Numeric
    }

	// request_range_no_max_results->width
    if(cJSON_AddNumberToObject(item, "width", request_range_no_max_results->width) == NULL) {
    goto fail; //Numeric
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

request_range_no_max_results_t *request_range_no_max_results_parseFromJSON(char *jsonString){

    request_range_no_max_results_t *request_range_no_max_results = NULL;
    cJSON *request_range_no_max_resultsJSON = cJSON_Parse(jsonString);
    if(request_range_no_max_resultsJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // request_range_no_max_results->enabled
    cJSON *enabled = cJSON_GetObjectItemCaseSensitive(request_range_no_max_resultsJSON, "enabled");
    if(!cJSON_IsBool(enabled))
    {
    goto end; //Numeric
    }

    // request_range_no_max_results->width
    cJSON *width = cJSON_GetObjectItemCaseSensitive(request_range_no_max_resultsJSON, "width");
    if(!cJSON_IsNumber(width))
    {
    goto end; //Numeric
    }


    request_range_no_max_results = request_range_no_max_results_create (
        enabled->valueint,
        width->valuedouble
        );
 cJSON_Delete(request_range_no_max_resultsJSON);
    return request_range_no_max_results;
end:
    cJSON_Delete(request_range_no_max_resultsJSON);
    return NULL;

}

