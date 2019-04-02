#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_filter_fast_result.h"
#include "list.h"
#include "response_time_filter_fast_location.h"


response_time_filter_fast_result_t *response_time_filter_fast_result_create(
    char *search_id,
    list_t *locations,
    list_t *unreachable
    ) {
	response_time_filter_fast_result_t *response_time_filter_fast_result = malloc(sizeof(response_time_filter_fast_result_t));
	response_time_filter_fast_result->search_id = search_id;
	response_time_filter_fast_result->locations = locations;
	response_time_filter_fast_result->unreachable = unreachable;

	return response_time_filter_fast_result;
}


void response_time_filter_fast_result_free(response_time_filter_fast_result_t *response_time_filter_fast_result) {
    listEntry_t *listEntry;
    free(response_time_filter_fast_result->search_id);
		list_ForEach(listEntry, response_time_filter_fast_result->locations) {
		response_time_filter_fast_location_free(listEntry->data);
	}
	list_free(response_time_filter_fast_result->locations);
	list_ForEach(listEntry, response_time_filter_fast_result->unreachable) {
		free(listEntry->data);
	}
	list_free(response_time_filter_fast_result->unreachable);

	free(response_time_filter_fast_result);
}

cJSON *response_time_filter_fast_result_convertToJSON(response_time_filter_fast_result_t *response_time_filter_fast_result) {
	cJSON *item = cJSON_CreateObject();
	// response_time_filter_fast_result->search_id
    if(cJSON_AddStringToObject(item, "search_id", response_time_filter_fast_result->search_id) == NULL) {
    goto fail; //String
    }

	// response_time_filter_fast_result->locations
    cJSON *locations = cJSON_AddArrayToObject(item, "locations");
	if(locations == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *locationsListEntry;
	list_ForEach(locationsListEntry, response_time_filter_fast_result->locations) {
		cJSON *item = response_time_filter_fast_location_convertToJSON(locationsListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(locations, item);
	}

	// response_time_filter_fast_result->unreachable
	cJSON *unreachable = cJSON_AddArrayToObject(item, "unreachable");
	if(unreachable == NULL) {
		goto fail; //primitive container
	}

	listEntry_t *unreachableListEntry;
    list_ForEach(unreachableListEntry, response_time_filter_fast_result->unreachable) {
        if(cJSON_AddStringToObject(unreachable, "", (char*)unreachableListEntry->data) == NULL)
        {
            goto fail;
        }
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_time_filter_fast_result_t *response_time_filter_fast_result_parseFromJSON(char *jsonString){

    response_time_filter_fast_result_t *response_time_filter_fast_result = NULL;
    cJSON *response_time_filter_fast_resultJSON = cJSON_Parse(jsonString);
    if(response_time_filter_fast_resultJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_filter_fast_result->search_id
    cJSON *search_id = cJSON_GetObjectItemCaseSensitive(response_time_filter_fast_resultJSON, "search_id");
    if(!cJSON_IsString(search_id) || (search_id->valuestring == NULL)){
    goto end; //String
    }

    // response_time_filter_fast_result->locations
    cJSON *locations;
    cJSON *locationsJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_fast_resultJSON,"locations");
    if(!cJSON_IsArray(locationsJSON)){
        goto end; //nonprimitive container
    }

    list_t *locationsList = list_create();

    cJSON_ArrayForEach(locations,locationsJSON )
    {
        if(!cJSON_IsObject(locations)){
            goto end;
        }
		char *JSONData = cJSON_Print(locations);
        response_time_filter_fast_location_t *locationsItem = response_time_filter_fast_location_parseFromJSON(JSONData);

        list_addElement(locationsList, locationsItem);
        free(JSONData);
    }

    // response_time_filter_fast_result->unreachable
    cJSON *unreachable;
    cJSON *unreachableJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_fast_resultJSON, "unreachable");
    if(!cJSON_IsArray(unreachableJSON)) {
        goto end;//primitive container
    }
    list_t *unreachableList = list_create();

    cJSON_ArrayForEach(unreachable, unreachableJSON)
    {
        if(!cJSON_IsString(unreachable))
        {
            goto end;
        }
        list_addElement(unreachableList , strdup(unreachable->valuestring));

    }


    response_time_filter_fast_result = response_time_filter_fast_result_create (
        strdup(search_id->valuestring),
        locationsList,
        unreachableList
        );
 cJSON_Delete(response_time_filter_fast_resultJSON);
    return response_time_filter_fast_result;
end:
    cJSON_Delete(response_time_filter_fast_resultJSON);
    return NULL;

}

