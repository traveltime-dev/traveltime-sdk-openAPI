#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_filter.h"
#include "list.h"
#include "response_time_filter_result.h"


response_time_filter_t *response_time_filter_create(
    list_t *results
    ) {
	response_time_filter_t *response_time_filter = malloc(sizeof(response_time_filter_t));
	response_time_filter->results = results;

	return response_time_filter;
}


void response_time_filter_free(response_time_filter_t *response_time_filter) {
    listEntry_t *listEntry;
		list_ForEach(listEntry, response_time_filter->results) {
		response_time_filter_result_free(listEntry->data);
	}
	list_free(response_time_filter->results);

	free(response_time_filter);
}

cJSON *response_time_filter_convertToJSON(response_time_filter_t *response_time_filter) {
	cJSON *item = cJSON_CreateObject();
	// response_time_filter->results
    cJSON *results = cJSON_AddArrayToObject(item, "results");
	if(results == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *resultsListEntry;
	list_ForEach(resultsListEntry, response_time_filter->results) {
		cJSON *item = response_time_filter_result_convertToJSON(resultsListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(results, item);
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_time_filter_t *response_time_filter_parseFromJSON(char *jsonString){

    response_time_filter_t *response_time_filter = NULL;
    cJSON *response_time_filterJSON = cJSON_Parse(jsonString);
    if(response_time_filterJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_filter->results
    cJSON *results;
    cJSON *resultsJSON = cJSON_GetObjectItemCaseSensitive(response_time_filterJSON,"results");
    if(!cJSON_IsArray(resultsJSON)){
        goto end; //nonprimitive container
    }

    list_t *resultsList = list_create();

    cJSON_ArrayForEach(results,resultsJSON )
    {
        if(!cJSON_IsObject(results)){
            goto end;
        }
		char *JSONData = cJSON_Print(results);
        response_time_filter_result_t *resultsItem = response_time_filter_result_parseFromJSON(JSONData);

        list_addElement(resultsList, resultsItem);
        free(JSONData);
    }


    response_time_filter = response_time_filter_create (
        resultsList
        );
 cJSON_Delete(response_time_filterJSON);
    return response_time_filter;
end:
    cJSON_Delete(response_time_filterJSON);
    return NULL;

}

