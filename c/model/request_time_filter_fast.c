#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "request_time_filter_fast.h"
#include "list.h"
#include "request_location.h"
#include "request_time_filter_fast_arrival_searches.h"


request_time_filter_fast_t *request_time_filter_fast_create(
    list_t *locations,
    request_time_filter_fast_arrival_searches_t *arrival_searches
    ) {
	request_time_filter_fast_t *request_time_filter_fast = malloc(sizeof(request_time_filter_fast_t));
	request_time_filter_fast->locations = locations;
	request_time_filter_fast->arrival_searches = arrival_searches;

	return request_time_filter_fast;
}


void request_time_filter_fast_free(request_time_filter_fast_t *request_time_filter_fast) {
    listEntry_t *listEntry;
		list_ForEach(listEntry, request_time_filter_fast->locations) {
		request_location_free(listEntry->data);
	}
	list_free(request_time_filter_fast->locations);
	request_time_filter_fast_arrival_searches_free(request_time_filter_fast->arrival_searches);

	free(request_time_filter_fast);
}

cJSON *request_time_filter_fast_convertToJSON(request_time_filter_fast_t *request_time_filter_fast) {
	cJSON *item = cJSON_CreateObject();
	// request_time_filter_fast->locations
    cJSON *locations = cJSON_AddArrayToObject(item, "locations");
	if(locations == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *locationsListEntry;
	list_ForEach(locationsListEntry, request_time_filter_fast->locations) {
		cJSON *item = request_location_convertToJSON(locationsListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(locations, item);
	}

	// request_time_filter_fast->arrival_searches
	cJSON *arrival_searches = request_time_filter_fast_arrival_searches_convertToJSON(request_time_filter_fast->arrival_searches);
	if(arrival_searches == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "arrival_searches", arrival_searches);
	if(item->child == NULL) {
		goto fail;
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

request_time_filter_fast_t *request_time_filter_fast_parseFromJSON(char *jsonString){

    request_time_filter_fast_t *request_time_filter_fast = NULL;
    cJSON *request_time_filter_fastJSON = cJSON_Parse(jsonString);
    if(request_time_filter_fastJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // request_time_filter_fast->locations
    cJSON *locations;
    cJSON *locationsJSON = cJSON_GetObjectItemCaseSensitive(request_time_filter_fastJSON,"locations");
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
        request_location_t *locationsItem = request_location_parseFromJSON(JSONData);

        list_addElement(locationsList, locationsItem);
        free(JSONData);
    }

    // request_time_filter_fast->arrival_searches
    request_time_filter_fast_arrival_searches_t *arrival_searches;
    cJSON *arrival_searchesJSON = cJSON_GetObjectItemCaseSensitive(request_time_filter_fastJSON, "arrival_searches");
    if(request_time_filter_fastJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *arrival_searchesJSONData = cJSON_Print(arrival_searchesJSON);
    arrival_searches = request_time_filter_fast_arrival_searches_parseFromJSON(arrival_searchesJSONData);


    request_time_filter_fast = request_time_filter_fast_create (
        locationsList,
        arrival_searches
        );
        free(arrival_searchesJSONData);
 cJSON_Delete(request_time_filter_fastJSON);
    return request_time_filter_fast;
end:
    cJSON_Delete(request_time_filter_fastJSON);
    return NULL;

}

