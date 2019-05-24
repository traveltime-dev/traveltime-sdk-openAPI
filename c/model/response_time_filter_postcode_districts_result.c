#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_time_filter_postcode_districts_result.h"



response_time_filter_postcode_districts_result_t *response_time_filter_postcode_districts_result_create(
    char *search_id,
    list_t *districts
    ) {
	response_time_filter_postcode_districts_result_t *response_time_filter_postcode_districts_result_local_var = malloc(sizeof(response_time_filter_postcode_districts_result_t));
    if (!response_time_filter_postcode_districts_result_local_var) {
        return NULL;
    }
	response_time_filter_postcode_districts_result_local_var->search_id = search_id;
	response_time_filter_postcode_districts_result_local_var->districts = districts;

	return response_time_filter_postcode_districts_result_local_var;
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
    if (!response_time_filter_postcode_districts_result->search_id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "search_id", response_time_filter_postcode_districts_result->search_id) == NULL) {
    goto fail; //String
    }


	// response_time_filter_postcode_districts_result->districts
    if (!response_time_filter_postcode_districts_result->districts) {
        goto fail;
    }
    
    cJSON *districts = cJSON_AddArrayToObject(item, "districts");
    if(districts == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *districtsListEntry;
    if (response_time_filter_postcode_districts_result->districts) {
    list_ForEach(districtsListEntry, response_time_filter_postcode_districts_result->districts) {
    cJSON *itemLocal = response_time_filter_postcode_district_convertToJSON(districtsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(districts, itemLocal);
    }
    }

	return item;
fail:
	if (item) {
        cJSON_Delete(item);
    }
	return NULL;
}

response_time_filter_postcode_districts_result_t *response_time_filter_postcode_districts_result_parseFromJSON(cJSON *response_time_filter_postcode_districts_resultJSON){

    response_time_filter_postcode_districts_result_t *response_time_filter_postcode_districts_result_local_var = NULL;

    // response_time_filter_postcode_districts_result->search_id
    cJSON *search_id = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_districts_resultJSON, "search_id");
    if (!search_id) {
        goto end;
    }

    
    if(!cJSON_IsString(search_id))
    {
    goto end; //String
    }

    // response_time_filter_postcode_districts_result->districts
    cJSON *districts = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_districts_resultJSON, "districts");
    if (!districts) {
        goto end;
    }

    list_t *districtsList;
    
    cJSON *districts_local_nonprimitive;
    if(!cJSON_IsArray(districts)){
        goto end; //nonprimitive container
    }

    districtsList = list_create();

    cJSON_ArrayForEach(districts_local_nonprimitive,districts )
    {
        if(!cJSON_IsObject(districts_local_nonprimitive)){
            goto end;
        }
        response_time_filter_postcode_district_t *districtsItem = response_time_filter_postcode_district_parseFromJSON(districts_local_nonprimitive);

        list_addElement(districtsList, districtsItem);
    }


    response_time_filter_postcode_districts_result_local_var = response_time_filter_postcode_districts_result_create (
        strdup(search_id->valuestring),
        districtsList
        );

    return response_time_filter_postcode_districts_result_local_var;
end:
    return NULL;

}
