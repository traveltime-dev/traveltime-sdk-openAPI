#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_filter_postcode_districts.h"
#include "list.h"
#include "response_time_filter_postcode_districts_result.h"


response_time_filter_postcode_districts_t *response_time_filter_postcode_districts_create(
    list_t *results
    ) {
	response_time_filter_postcode_districts_t *response_time_filter_postcode_districts = malloc(sizeof(response_time_filter_postcode_districts_t));
	response_time_filter_postcode_districts->results = results;

	return response_time_filter_postcode_districts;
}


void response_time_filter_postcode_districts_free(response_time_filter_postcode_districts_t *response_time_filter_postcode_districts) {
    listEntry_t *listEntry;
		list_ForEach(listEntry, response_time_filter_postcode_districts->results) {
		response_time_filter_postcode_districts_result_free(listEntry->data);
	}
	list_free(response_time_filter_postcode_districts->results);

	free(response_time_filter_postcode_districts);
}

cJSON *response_time_filter_postcode_districts_convertToJSON(response_time_filter_postcode_districts_t *response_time_filter_postcode_districts) {
	cJSON *item = cJSON_CreateObject();
	// response_time_filter_postcode_districts->results
    cJSON *results = cJSON_AddArrayToObject(item, "results");
	if(results == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *resultsListEntry;
	list_ForEach(resultsListEntry, response_time_filter_postcode_districts->results) {
		cJSON *item = response_time_filter_postcode_districts_result_convertToJSON(resultsListEntry->data);
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

response_time_filter_postcode_districts_t *response_time_filter_postcode_districts_parseFromJSON(char *jsonString){

    response_time_filter_postcode_districts_t *response_time_filter_postcode_districts = NULL;
    cJSON *response_time_filter_postcode_districtsJSON = cJSON_Parse(jsonString);
    if(response_time_filter_postcode_districtsJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_filter_postcode_districts->results
    cJSON *results;
    cJSON *resultsJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_districtsJSON,"results");
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
        response_time_filter_postcode_districts_result_t *resultsItem = response_time_filter_postcode_districts_result_parseFromJSON(JSONData);

        list_addElement(resultsList, resultsItem);
        free(JSONData);
    }


    response_time_filter_postcode_districts = response_time_filter_postcode_districts_create (
        resultsList
        );
 cJSON_Delete(response_time_filter_postcode_districtsJSON);
    return response_time_filter_postcode_districts;
end:
    cJSON_Delete(response_time_filter_postcode_districtsJSON);
    return NULL;

}

