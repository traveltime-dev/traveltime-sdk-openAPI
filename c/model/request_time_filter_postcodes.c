#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "request_time_filter_postcodes.h"
#include "list.h"
#include "request_time_filter_postcodes_arrival_search.h"
#include "request_time_filter_postcodes_departure_search.h"


request_time_filter_postcodes_t *request_time_filter_postcodes_create(
    list_t *departure_searches,
    list_t *arrival_searches
    ) {
	request_time_filter_postcodes_t *request_time_filter_postcodes = malloc(sizeof(request_time_filter_postcodes_t));
	request_time_filter_postcodes->departure_searches = departure_searches;
	request_time_filter_postcodes->arrival_searches = arrival_searches;

	return request_time_filter_postcodes;
}


void request_time_filter_postcodes_free(request_time_filter_postcodes_t *request_time_filter_postcodes) {
    listEntry_t *listEntry;
		list_ForEach(listEntry, request_time_filter_postcodes->departure_searches) {
		request_time_filter_postcodes_departure_search_free(listEntry->data);
	}
	list_free(request_time_filter_postcodes->departure_searches);
		list_ForEach(listEntry, request_time_filter_postcodes->arrival_searches) {
		request_time_filter_postcodes_arrival_search_free(listEntry->data);
	}
	list_free(request_time_filter_postcodes->arrival_searches);

	free(request_time_filter_postcodes);
}

cJSON *request_time_filter_postcodes_convertToJSON(request_time_filter_postcodes_t *request_time_filter_postcodes) {
	cJSON *item = cJSON_CreateObject();
	// request_time_filter_postcodes->departure_searches
    cJSON *departure_searches = cJSON_AddArrayToObject(item, "departure_searches");
	if(departure_searches == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *departure_searchesListEntry;
	list_ForEach(departure_searchesListEntry, request_time_filter_postcodes->departure_searches) {
		cJSON *item = request_time_filter_postcodes_departure_search_convertToJSON(departure_searchesListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(departure_searches, item);
	}

	// request_time_filter_postcodes->arrival_searches
    cJSON *arrival_searches = cJSON_AddArrayToObject(item, "arrival_searches");
	if(arrival_searches == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *arrival_searchesListEntry;
	list_ForEach(arrival_searchesListEntry, request_time_filter_postcodes->arrival_searches) {
		cJSON *item = request_time_filter_postcodes_arrival_search_convertToJSON(arrival_searchesListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(arrival_searches, item);
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

request_time_filter_postcodes_t *request_time_filter_postcodes_parseFromJSON(char *jsonString){

    request_time_filter_postcodes_t *request_time_filter_postcodes = NULL;
    cJSON *request_time_filter_postcodesJSON = cJSON_Parse(jsonString);
    if(request_time_filter_postcodesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // request_time_filter_postcodes->departure_searches
    cJSON *departure_searches;
    cJSON *departure_searchesJSON = cJSON_GetObjectItemCaseSensitive(request_time_filter_postcodesJSON,"departure_searches");
    if(!cJSON_IsArray(departure_searchesJSON)){
        goto end; //nonprimitive container
    }

    list_t *departure_searchesList = list_create();

    cJSON_ArrayForEach(departure_searches,departure_searchesJSON )
    {
        if(!cJSON_IsObject(departure_searches)){
            goto end;
        }
		char *JSONData = cJSON_Print(departure_searches);
        request_time_filter_postcodes_departure_search_t *departure_searchesItem = request_time_filter_postcodes_departure_search_parseFromJSON(JSONData);

        list_addElement(departure_searchesList, departure_searchesItem);
        free(JSONData);
    }

    // request_time_filter_postcodes->arrival_searches
    cJSON *arrival_searches;
    cJSON *arrival_searchesJSON = cJSON_GetObjectItemCaseSensitive(request_time_filter_postcodesJSON,"arrival_searches");
    if(!cJSON_IsArray(arrival_searchesJSON)){
        goto end; //nonprimitive container
    }

    list_t *arrival_searchesList = list_create();

    cJSON_ArrayForEach(arrival_searches,arrival_searchesJSON )
    {
        if(!cJSON_IsObject(arrival_searches)){
            goto end;
        }
		char *JSONData = cJSON_Print(arrival_searches);
        request_time_filter_postcodes_arrival_search_t *arrival_searchesItem = request_time_filter_postcodes_arrival_search_parseFromJSON(JSONData);

        list_addElement(arrival_searchesList, arrival_searchesItem);
        free(JSONData);
    }


    request_time_filter_postcodes = request_time_filter_postcodes_create (
        departure_searchesList,
        arrival_searchesList
        );
 cJSON_Delete(request_time_filter_postcodesJSON);
    return request_time_filter_postcodes;
end:
    cJSON_Delete(request_time_filter_postcodesJSON);
    return NULL;

}

