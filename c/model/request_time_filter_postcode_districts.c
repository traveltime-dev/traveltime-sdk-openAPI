#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_time_filter_postcode_districts.h"



request_time_filter_postcode_districts_t *request_time_filter_postcode_districts_create(
    list_t *departure_searches,
    list_t *arrival_searches
    ) {
    request_time_filter_postcode_districts_t *request_time_filter_postcode_districts_local_var = malloc(sizeof(request_time_filter_postcode_districts_t));
    if (!request_time_filter_postcode_districts_local_var) {
        return NULL;
    }
    request_time_filter_postcode_districts_local_var->departure_searches = departure_searches;
    request_time_filter_postcode_districts_local_var->arrival_searches = arrival_searches;

    return request_time_filter_postcode_districts_local_var;
}


void request_time_filter_postcode_districts_free(request_time_filter_postcode_districts_t *request_time_filter_postcode_districts) {
    listEntry_t *listEntry;
    list_ForEach(listEntry, request_time_filter_postcode_districts->departure_searches) {
        request_time_filter_postcode_districts_departure_search_free(listEntry->data);
    }
    list_free(request_time_filter_postcode_districts->departure_searches);
    list_ForEach(listEntry, request_time_filter_postcode_districts->arrival_searches) {
        request_time_filter_postcode_districts_arrival_search_free(listEntry->data);
    }
    list_free(request_time_filter_postcode_districts->arrival_searches);
    free(request_time_filter_postcode_districts);
}

cJSON *request_time_filter_postcode_districts_convertToJSON(request_time_filter_postcode_districts_t *request_time_filter_postcode_districts) {
    cJSON *item = cJSON_CreateObject();

    // request_time_filter_postcode_districts->departure_searches
    if(request_time_filter_postcode_districts->departure_searches) { 
    cJSON *departure_searches = cJSON_AddArrayToObject(item, "departure_searches");
    if(departure_searches == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *departure_searchesListEntry;
    if (request_time_filter_postcode_districts->departure_searches) {
    list_ForEach(departure_searchesListEntry, request_time_filter_postcode_districts->departure_searches) {
    cJSON *itemLocal = request_time_filter_postcode_districts_departure_search_convertToJSON(departure_searchesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(departure_searches, itemLocal);
    }
    }
     } 


    // request_time_filter_postcode_districts->arrival_searches
    if(request_time_filter_postcode_districts->arrival_searches) { 
    cJSON *arrival_searches = cJSON_AddArrayToObject(item, "arrival_searches");
    if(arrival_searches == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *arrival_searchesListEntry;
    if (request_time_filter_postcode_districts->arrival_searches) {
    list_ForEach(arrival_searchesListEntry, request_time_filter_postcode_districts->arrival_searches) {
    cJSON *itemLocal = request_time_filter_postcode_districts_arrival_search_convertToJSON(arrival_searchesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(arrival_searches, itemLocal);
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

request_time_filter_postcode_districts_t *request_time_filter_postcode_districts_parseFromJSON(cJSON *request_time_filter_postcode_districtsJSON){

    request_time_filter_postcode_districts_t *request_time_filter_postcode_districts_local_var = NULL;

    // request_time_filter_postcode_districts->departure_searches
    cJSON *departure_searches = cJSON_GetObjectItemCaseSensitive(request_time_filter_postcode_districtsJSON, "departure_searches");
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
        request_time_filter_postcode_districts_departure_search_t *departure_searchesItem = request_time_filter_postcode_districts_departure_search_parseFromJSON(departure_searches_local_nonprimitive);

        list_addElement(departure_searchesList, departure_searchesItem);
    }
    }

    // request_time_filter_postcode_districts->arrival_searches
    cJSON *arrival_searches = cJSON_GetObjectItemCaseSensitive(request_time_filter_postcode_districtsJSON, "arrival_searches");
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
        request_time_filter_postcode_districts_arrival_search_t *arrival_searchesItem = request_time_filter_postcode_districts_arrival_search_parseFromJSON(arrival_searches_local_nonprimitive);

        list_addElement(arrival_searchesList, arrival_searchesItem);
    }
    }


    request_time_filter_postcode_districts_local_var = request_time_filter_postcode_districts_create (
        departure_searches ? departure_searchesList : NULL,
        arrival_searches ? arrival_searchesList : NULL
        );

    return request_time_filter_postcode_districts_local_var;
end:
    return NULL;

}
