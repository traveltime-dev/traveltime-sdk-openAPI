#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_filter_postcodes.h"
#include "list.h"
#include "response_time_filter_postcodes_result.h"


response_time_filter_postcodes_t *response_time_filter_postcodes_create(
    list_t *results
    ) {
	response_time_filter_postcodes_t *response_time_filter_postcodes = malloc(sizeof(response_time_filter_postcodes_t));
	response_time_filter_postcodes->results = results;

	return response_time_filter_postcodes;
}


void response_time_filter_postcodes_free(response_time_filter_postcodes_t *response_time_filter_postcodes) {
    listEntry_t *listEntry;
		list_ForEach(listEntry, response_time_filter_postcodes->results) {
		response_time_filter_postcodes_result_free(listEntry->data);
	}
	list_free(response_time_filter_postcodes->results);

	free(response_time_filter_postcodes);
}

cJSON *response_time_filter_postcodes_convertToJSON(response_time_filter_postcodes_t *response_time_filter_postcodes) {
	cJSON *item = cJSON_CreateObject();
	// response_time_filter_postcodes->results
    cJSON *results = cJSON_AddArrayToObject(item, "results");
	if(results == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *resultsListEntry;
	list_ForEach(resultsListEntry, response_time_filter_postcodes->results) {
		cJSON *item = response_time_filter_postcodes_result_convertToJSON(resultsListEntry->data);
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

response_time_filter_postcodes_t *response_time_filter_postcodes_parseFromJSON(char *jsonString){

    response_time_filter_postcodes_t *response_time_filter_postcodes = NULL;
    cJSON *response_time_filter_postcodesJSON = cJSON_Parse(jsonString);
    if(response_time_filter_postcodesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_filter_postcodes->results
    cJSON *results;
    cJSON *resultsJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcodesJSON,"results");
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
        response_time_filter_postcodes_result_t *resultsItem = response_time_filter_postcodes_result_parseFromJSON(JSONData);

        list_addElement(resultsList, resultsItem);
        free(JSONData);
    }


    response_time_filter_postcodes = response_time_filter_postcodes_create (
        resultsList
        );
 cJSON_Delete(response_time_filter_postcodesJSON);
    return response_time_filter_postcodes;
end:
    cJSON_Delete(response_time_filter_postcodesJSON);
    return NULL;

}

