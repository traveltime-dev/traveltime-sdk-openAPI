#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_filter_postcode_districts_result.h"
#include "list.h"
#include "response_time_filter_postcode_district.h"


response_time_filter_postcode_districts_result_t *response_time_filter_postcode_districts_result_create(
    char *search_id,
    list_t *districts
    ) {
	response_time_filter_postcode_districts_result_t *response_time_filter_postcode_districts_result = malloc(sizeof(response_time_filter_postcode_districts_result_t));
	response_time_filter_postcode_districts_result->search_id = search_id;
	response_time_filter_postcode_districts_result->districts = districts;

	return response_time_filter_postcode_districts_result;
}


void response_time_filter_postcode_districts_result_free(response_time_filter_postcode_districts_result_t *response_time_filter_postcode_districts_result) {
    listEntry_t *listEntry;
    free(response_time_filter_postcode_districts_result->search_id);
		list_ForEach(listEntry, response_time_filter_postcode_districts_result->districts) {
		response_time_filter_postcode_district_free(listEntry->data);
	}
	list_free(response_time_filter_postcode_districts_result->districts);

	free(response_time_filter_postcode_districts_result);
}

cJSON *response_time_filter_postcode_districts_result_convertToJSON(response_time_filter_postcode_districts_result_t *response_time_filter_postcode_districts_result) {
	cJSON *item = cJSON_CreateObject();
	// response_time_filter_postcode_districts_result->search_id
    if(cJSON_AddStringToObject(item, "search_id", response_time_filter_postcode_districts_result->search_id) == NULL) {
    goto fail; //String
    }

	// response_time_filter_postcode_districts_result->districts
    cJSON *districts = cJSON_AddArrayToObject(item, "districts");
	if(districts == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *districtsListEntry;
	list_ForEach(districtsListEntry, response_time_filter_postcode_districts_result->districts) {
		cJSON *item = response_time_filter_postcode_district_convertToJSON(districtsListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(districts, item);
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_time_filter_postcode_districts_result_t *response_time_filter_postcode_districts_result_parseFromJSON(char *jsonString){

    response_time_filter_postcode_districts_result_t *response_time_filter_postcode_districts_result = NULL;
    cJSON *response_time_filter_postcode_districts_resultJSON = cJSON_Parse(jsonString);
    if(response_time_filter_postcode_districts_resultJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_filter_postcode_districts_result->search_id
    cJSON *search_id = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_districts_resultJSON, "search_id");
    if(!cJSON_IsString(search_id) || (search_id->valuestring == NULL)){
    goto end; //String
    }

    // response_time_filter_postcode_districts_result->districts
    cJSON *districts;
    cJSON *districtsJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_districts_resultJSON,"districts");
    if(!cJSON_IsArray(districtsJSON)){
        goto end; //nonprimitive container
    }

    list_t *districtsList = list_create();

    cJSON_ArrayForEach(districts,districtsJSON )
    {
        if(!cJSON_IsObject(districts)){
            goto end;
        }
		char *JSONData = cJSON_Print(districts);
        response_time_filter_postcode_district_t *districtsItem = response_time_filter_postcode_district_parseFromJSON(JSONData);

        list_addElement(districtsList, districtsItem);
        free(JSONData);
    }


    response_time_filter_postcode_districts_result = response_time_filter_postcode_districts_result_create (
        strdup(search_id->valuestring),
        districtsList
        );
 cJSON_Delete(response_time_filter_postcode_districts_resultJSON);
    return response_time_filter_postcode_districts_result;
end:
    cJSON_Delete(response_time_filter_postcode_districts_resultJSON);
    return NULL;

}

