#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "request_time_map.h"
#include "list.h"
#include "request_time_map_arrival_search.h"
#include "request_time_map_departure_search.h"
#include "request_union_on_intersection.h"


request_time_map_t *request_time_map_create(
    list_t *departure_searches,
    list_t *arrival_searches,
    list_t *unions,
    list_t *intersections
    ) {
	request_time_map_t *request_time_map = malloc(sizeof(request_time_map_t));
	request_time_map->departure_searches = departure_searches;
	request_time_map->arrival_searches = arrival_searches;
	request_time_map->unions = unions;
	request_time_map->intersections = intersections;

	return request_time_map;
}


void request_time_map_free(request_time_map_t *request_time_map) {
    listEntry_t *listEntry;
		list_ForEach(listEntry, request_time_map->departure_searches) {
		request_time_map_departure_search_free(listEntry->data);
	}
	list_free(request_time_map->departure_searches);
		list_ForEach(listEntry, request_time_map->arrival_searches) {
		request_time_map_arrival_search_free(listEntry->data);
	}
	list_free(request_time_map->arrival_searches);
		list_ForEach(listEntry, request_time_map->unions) {
		request_union_on_intersection_free(listEntry->data);
	}
	list_free(request_time_map->unions);
		list_ForEach(listEntry, request_time_map->intersections) {
		request_union_on_intersection_free(listEntry->data);
	}
	list_free(request_time_map->intersections);

	free(request_time_map);
}

cJSON *request_time_map_convertToJSON(request_time_map_t *request_time_map) {
	cJSON *item = cJSON_CreateObject();
	// request_time_map->departure_searches
    cJSON *departure_searches = cJSON_AddArrayToObject(item, "departure_searches");
	if(departure_searches == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *departure_searchesListEntry;
	list_ForEach(departure_searchesListEntry, request_time_map->departure_searches) {
		cJSON *item = request_time_map_departure_search_convertToJSON(departure_searchesListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(departure_searches, item);
	}

	// request_time_map->arrival_searches
    cJSON *arrival_searches = cJSON_AddArrayToObject(item, "arrival_searches");
	if(arrival_searches == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *arrival_searchesListEntry;
	list_ForEach(arrival_searchesListEntry, request_time_map->arrival_searches) {
		cJSON *item = request_time_map_arrival_search_convertToJSON(arrival_searchesListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(arrival_searches, item);
	}

	// request_time_map->unions
    cJSON *unions = cJSON_AddArrayToObject(item, "unions");
	if(unions == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *unionsListEntry;
	list_ForEach(unionsListEntry, request_time_map->unions) {
		cJSON *item = request_union_on_intersection_convertToJSON(unionsListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(unions, item);
	}

	// request_time_map->intersections
    cJSON *intersections = cJSON_AddArrayToObject(item, "intersections");
	if(intersections == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *intersectionsListEntry;
	list_ForEach(intersectionsListEntry, request_time_map->intersections) {
		cJSON *item = request_union_on_intersection_convertToJSON(intersectionsListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(intersections, item);
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

request_time_map_t *request_time_map_parseFromJSON(char *jsonString){

    request_time_map_t *request_time_map = NULL;
    cJSON *request_time_mapJSON = cJSON_Parse(jsonString);
    if(request_time_mapJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // request_time_map->departure_searches
    cJSON *departure_searches;
    cJSON *departure_searchesJSON = cJSON_GetObjectItemCaseSensitive(request_time_mapJSON,"departure_searches");
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
        request_time_map_departure_search_t *departure_searchesItem = request_time_map_departure_search_parseFromJSON(JSONData);

        list_addElement(departure_searchesList, departure_searchesItem);
        free(JSONData);
    }

    // request_time_map->arrival_searches
    cJSON *arrival_searches;
    cJSON *arrival_searchesJSON = cJSON_GetObjectItemCaseSensitive(request_time_mapJSON,"arrival_searches");
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
        request_time_map_arrival_search_t *arrival_searchesItem = request_time_map_arrival_search_parseFromJSON(JSONData);

        list_addElement(arrival_searchesList, arrival_searchesItem);
        free(JSONData);
    }

    // request_time_map->unions
    cJSON *unions;
    cJSON *unionsJSON = cJSON_GetObjectItemCaseSensitive(request_time_mapJSON,"unions");
    if(!cJSON_IsArray(unionsJSON)){
        goto end; //nonprimitive container
    }

    list_t *unionsList = list_create();

    cJSON_ArrayForEach(unions,unionsJSON )
    {
        if(!cJSON_IsObject(unions)){
            goto end;
        }
		char *JSONData = cJSON_Print(unions);
        request_union_on_intersection_t *unionsItem = request_union_on_intersection_parseFromJSON(JSONData);

        list_addElement(unionsList, unionsItem);
        free(JSONData);
    }

    // request_time_map->intersections
    cJSON *intersections;
    cJSON *intersectionsJSON = cJSON_GetObjectItemCaseSensitive(request_time_mapJSON,"intersections");
    if(!cJSON_IsArray(intersectionsJSON)){
        goto end; //nonprimitive container
    }

    list_t *intersectionsList = list_create();

    cJSON_ArrayForEach(intersections,intersectionsJSON )
    {
        if(!cJSON_IsObject(intersections)){
            goto end;
        }
		char *JSONData = cJSON_Print(intersections);
        request_union_on_intersection_t *intersectionsItem = request_union_on_intersection_parseFromJSON(JSONData);

        list_addElement(intersectionsList, intersectionsItem);
        free(JSONData);
    }


    request_time_map = request_time_map_create (
        departure_searchesList,
        arrival_searchesList,
        unionsList,
        intersectionsList
        );
 cJSON_Delete(request_time_mapJSON);
    return request_time_map;
end:
    cJSON_Delete(request_time_mapJSON);
    return NULL;

}

