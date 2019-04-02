#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_filter_postcodes_result.h"
#include "list.h"
#include "response_time_filter_postcode.h"


response_time_filter_postcodes_result_t *response_time_filter_postcodes_result_create(
    char *search_id,
    list_t *postcodes
    ) {
	response_time_filter_postcodes_result_t *response_time_filter_postcodes_result = malloc(sizeof(response_time_filter_postcodes_result_t));
	response_time_filter_postcodes_result->search_id = search_id;
	response_time_filter_postcodes_result->postcodes = postcodes;

	return response_time_filter_postcodes_result;
}


void response_time_filter_postcodes_result_free(response_time_filter_postcodes_result_t *response_time_filter_postcodes_result) {
    listEntry_t *listEntry;
    free(response_time_filter_postcodes_result->search_id);
		list_ForEach(listEntry, response_time_filter_postcodes_result->postcodes) {
		response_time_filter_postcode_free(listEntry->data);
	}
	list_free(response_time_filter_postcodes_result->postcodes);

	free(response_time_filter_postcodes_result);
}

cJSON *response_time_filter_postcodes_result_convertToJSON(response_time_filter_postcodes_result_t *response_time_filter_postcodes_result) {
	cJSON *item = cJSON_CreateObject();
	// response_time_filter_postcodes_result->search_id
    if(cJSON_AddStringToObject(item, "search_id", response_time_filter_postcodes_result->search_id) == NULL) {
    goto fail; //String
    }

	// response_time_filter_postcodes_result->postcodes
    cJSON *postcodes = cJSON_AddArrayToObject(item, "postcodes");
	if(postcodes == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *postcodesListEntry;
	list_ForEach(postcodesListEntry, response_time_filter_postcodes_result->postcodes) {
		cJSON *item = response_time_filter_postcode_convertToJSON(postcodesListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(postcodes, item);
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_time_filter_postcodes_result_t *response_time_filter_postcodes_result_parseFromJSON(char *jsonString){

    response_time_filter_postcodes_result_t *response_time_filter_postcodes_result = NULL;
    cJSON *response_time_filter_postcodes_resultJSON = cJSON_Parse(jsonString);
    if(response_time_filter_postcodes_resultJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_filter_postcodes_result->search_id
    cJSON *search_id = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcodes_resultJSON, "search_id");
    if(!cJSON_IsString(search_id) || (search_id->valuestring == NULL)){
    goto end; //String
    }

    // response_time_filter_postcodes_result->postcodes
    cJSON *postcodes;
    cJSON *postcodesJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcodes_resultJSON,"postcodes");
    if(!cJSON_IsArray(postcodesJSON)){
        goto end; //nonprimitive container
    }

    list_t *postcodesList = list_create();

    cJSON_ArrayForEach(postcodes,postcodesJSON )
    {
        if(!cJSON_IsObject(postcodes)){
            goto end;
        }
		char *JSONData = cJSON_Print(postcodes);
        response_time_filter_postcode_t *postcodesItem = response_time_filter_postcode_parseFromJSON(JSONData);

        list_addElement(postcodesList, postcodesItem);
        free(JSONData);
    }


    response_time_filter_postcodes_result = response_time_filter_postcodes_result_create (
        strdup(search_id->valuestring),
        postcodesList
        );
 cJSON_Delete(response_time_filter_postcodes_resultJSON);
    return response_time_filter_postcodes_result;
end:
    cJSON_Delete(response_time_filter_postcodes_resultJSON);
    return NULL;

}

