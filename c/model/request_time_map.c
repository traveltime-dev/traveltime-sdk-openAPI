#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_time_map.h"



request_time_map_t *request_time_map_create(
    list_t *departure_searches,
    list_t *arrival_searches,
    list_t *unions,
    list_t *intersections
    ) {
	request_time_map_t *request_time_map_local_var = malloc(sizeof(request_time_map_t));
    if (!request_time_map_local_var) {
        return NULL;
    }
	request_time_map_local_var->departure_searches = departure_searches;
	request_time_map_local_var->arrival_searches = arrival_searches;
	request_time_map_local_var->unions = unions;
	request_time_map_local_var->intersections = intersections;

	return request_time_map_local_var;
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
    if(request_time_map->departure_searches) { 
    cJSON *departure_searches = cJSON_AddArrayToObject(item, "departure_searches");
    if(departure_searches == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *departure_searchesListEntry;
    if (request_time_map->departure_searches) {
    list_ForEach(departure_searchesListEntry, request_time_map->departure_searches) {
    cJSON *itemLocal = request_time_map_departure_search_convertToJSON(departure_searchesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(departure_searches, itemLocal);
    }
    }
     } 


	// request_time_map->arrival_searches
    if(request_time_map->arrival_searches) { 
    cJSON *arrival_searches = cJSON_AddArrayToObject(item, "arrival_searches");
    if(arrival_searches == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *arrival_searchesListEntry;
    if (request_time_map->arrival_searches) {
    list_ForEach(arrival_searchesListEntry, request_time_map->arrival_searches) {
    cJSON *itemLocal = request_time_map_arrival_search_convertToJSON(arrival_searchesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(arrival_searches, itemLocal);
    }
    }
     } 


	// request_time_map->unions
    if(request_time_map->unions) { 
    cJSON *unions = cJSON_AddArrayToObject(item, "unions");
    if(unions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *unionsListEntry;
    if (request_time_map->unions) {
    list_ForEach(unionsListEntry, request_time_map->unions) {
    cJSON *itemLocal = request_union_on_intersection_convertToJSON(unionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(unions, itemLocal);
    }
    }
     } 


	// request_time_map->intersections
    if(request_time_map->intersections) { 
    cJSON *intersections = cJSON_AddArrayToObject(item, "intersections");
    if(intersections == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *intersectionsListEntry;
    if (request_time_map->intersections) {
    list_ForEach(intersectionsListEntry, request_time_map->intersections) {
    cJSON *itemLocal = request_union_on_intersection_convertToJSON(intersectionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(intersections, itemLocal);
    }
    }
     } 

	return item;
fail:
	if (item) {
        cJSON_Delete(item);
    }
	return NULL;
}

request_time_map_t *request_time_map_parseFromJSON(cJSON *request_time_mapJSON){

    request_time_map_t *request_time_map_local_var = NULL;

    // request_time_map->departure_searches
    cJSON *departure_searches = cJSON_GetObjectItemCaseSensitive(request_time_mapJSON, "departure_searches");
    list_t *departure_searchesList;
    if (departure_searches) { 
    cJSON *departure_searches_local_nonprimitive;
    if(!cJSON_IsArray(departure_searches)){
        goto end; //nonprimitive container
    }

    departure_searchesList = list_create();

    cJSON_ArrayForEach(departure_searches_local_nonprimitive,departure_searches )
    {
        if(!cJSON_IsObject(departure_searches_local_nonprimitive)){
            goto end;
        }
        request_time_map_departure_search_t *departure_searchesItem = request_time_map_departure_search_parseFromJSON(departure_searches_local_nonprimitive);

        list_addElement(departure_searchesList, departure_searchesItem);
    }
    }

    // request_time_map->arrival_searches
    cJSON *arrival_searches = cJSON_GetObjectItemCaseSensitive(request_time_mapJSON, "arrival_searches");
    list_t *arrival_searchesList;
    if (arrival_searches) { 
    cJSON *arrival_searches_local_nonprimitive;
    if(!cJSON_IsArray(arrival_searches)){
        goto end; //nonprimitive container
    }

    arrival_searchesList = list_create();

    cJSON_ArrayForEach(arrival_searches_local_nonprimitive,arrival_searches )
    {
        if(!cJSON_IsObject(arrival_searches_local_nonprimitive)){
            goto end;
        }
        request_time_map_arrival_search_t *arrival_searchesItem = request_time_map_arrival_search_parseFromJSON(arrival_searches_local_nonprimitive);

        list_addElement(arrival_searchesList, arrival_searchesItem);
    }
    }

    // request_time_map->unions
    cJSON *unions = cJSON_GetObjectItemCaseSensitive(request_time_mapJSON, "unions");
    list_t *unionsList;
    if (unions) { 
    cJSON *unions_local_nonprimitive;
    if(!cJSON_IsArray(unions)){
        goto end; //nonprimitive container
    }

    unionsList = list_create();

    cJSON_ArrayForEach(unions_local_nonprimitive,unions )
    {
        if(!cJSON_IsObject(unions_local_nonprimitive)){
            goto end;
        }
        request_union_on_intersection_t *unionsItem = request_union_on_intersection_parseFromJSON(unions_local_nonprimitive);

        list_addElement(unionsList, unionsItem);
    }
    }

    // request_time_map->intersections
    cJSON *intersections = cJSON_GetObjectItemCaseSensitive(request_time_mapJSON, "intersections");
    list_t *intersectionsList;
    if (intersections) { 
    cJSON *intersections_local_nonprimitive;
    if(!cJSON_IsArray(intersections)){
        goto end; //nonprimitive container
    }

    intersectionsList = list_create();

    cJSON_ArrayForEach(intersections_local_nonprimitive,intersections )
    {
        if(!cJSON_IsObject(intersections_local_nonprimitive)){
            goto end;
        }
        request_union_on_intersection_t *intersectionsItem = request_union_on_intersection_parseFromJSON(intersections_local_nonprimitive);

        list_addElement(intersectionsList, intersectionsItem);
    }
    }


    request_time_map_local_var = request_time_map_create (
        departure_searches ? departure_searchesList : NULL,
        arrival_searches ? arrival_searchesList : NULL,
        unions ? unionsList : NULL,
        intersections ? intersectionsList : NULL
        );

    return request_time_map_local_var;
end:
    return NULL;

}
