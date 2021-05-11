#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_time_filter.h"



request_time_filter_t *request_time_filter_create(
    list_t *locations,
    list_t *departure_searches,
    list_t *arrival_searches
    ) {
    request_time_filter_t *request_time_filter_local_var = malloc(sizeof(request_time_filter_t));
    if (!request_time_filter_local_var) {
        return NULL;
    }
    request_time_filter_local_var->locations = locations;
    request_time_filter_local_var->departure_searches = departure_searches;
    request_time_filter_local_var->arrival_searches = arrival_searches;

    return request_time_filter_local_var;
}


void request_time_filter_free(request_time_filter_t *request_time_filter) {
    if(NULL == request_time_filter){
        return ;
    }
    listEntry_t *listEntry;
    if (request_time_filter->locations) {
        list_ForEach(listEntry, request_time_filter->locations) {
            request_location_free(listEntry->data);
        }
        list_free(request_time_filter->locations);
        request_time_filter->locations = NULL;
    }
    if (request_time_filter->departure_searches) {
        list_ForEach(listEntry, request_time_filter->departure_searches) {
            request_time_filter_departure_search_free(listEntry->data);
        }
        list_free(request_time_filter->departure_searches);
        request_time_filter->departure_searches = NULL;
    }
    if (request_time_filter->arrival_searches) {
        list_ForEach(listEntry, request_time_filter->arrival_searches) {
            request_time_filter_arrival_search_free(listEntry->data);
        }
        list_free(request_time_filter->arrival_searches);
        request_time_filter->arrival_searches = NULL;
    }
    free(request_time_filter);
}

cJSON *request_time_filter_convertToJSON(request_time_filter_t *request_time_filter) {
    cJSON *item = cJSON_CreateObject();

    // request_time_filter->locations
    if (!request_time_filter->locations) {
        goto fail;
    }
    
    cJSON *locations = cJSON_AddArrayToObject(item, "locations");
    if(locations == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *locationsListEntry;
    if (request_time_filter->locations) {
    list_ForEach(locationsListEntry, request_time_filter->locations) {
    cJSON *itemLocal = request_location_convertToJSON(locationsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(locations, itemLocal);
    }
    }


    // request_time_filter->departure_searches
    if(request_time_filter->departure_searches) { 
    cJSON *departure_searches = cJSON_AddArrayToObject(item, "departure_searches");
    if(departure_searches == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *departure_searchesListEntry;
    if (request_time_filter->departure_searches) {
    list_ForEach(departure_searchesListEntry, request_time_filter->departure_searches) {
    cJSON *itemLocal = request_time_filter_departure_search_convertToJSON(departure_searchesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(departure_searches, itemLocal);
    }
    }
     } 


    // request_time_filter->arrival_searches
    if(request_time_filter->arrival_searches) { 
    cJSON *arrival_searches = cJSON_AddArrayToObject(item, "arrival_searches");
    if(arrival_searches == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *arrival_searchesListEntry;
    if (request_time_filter->arrival_searches) {
    list_ForEach(arrival_searchesListEntry, request_time_filter->arrival_searches) {
    cJSON *itemLocal = request_time_filter_arrival_search_convertToJSON(arrival_searchesListEntry->data);
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

request_time_filter_t *request_time_filter_parseFromJSON(cJSON *request_time_filterJSON){

    request_time_filter_t *request_time_filter_local_var = NULL;

    // request_time_filter->locations
    cJSON *locations = cJSON_GetObjectItemCaseSensitive(request_time_filterJSON, "locations");
    if (!locations) {
        goto end;
    }

    list_t *locationsList;
    
    cJSON *locations_local_nonprimitive;
    if(!cJSON_IsArray(locations)){
        goto end; //nonprimitive container
    }

    locationsList = list_create();

    cJSON_ArrayForEach(locations_local_nonprimitive,locations )
    {
        if(!cJSON_IsObject(locations_local_nonprimitive)){
            goto end;
        }
        request_location_t *locationsItem = request_location_parseFromJSON(locations_local_nonprimitive);

        list_addElement(locationsList, locationsItem);
    }

    // request_time_filter->departure_searches
    cJSON *departure_searches = cJSON_GetObjectItemCaseSensitive(request_time_filterJSON, "departure_searches");
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
        request_time_filter_departure_search_t *departure_searchesItem = request_time_filter_departure_search_parseFromJSON(departure_searches_local_nonprimitive);

        list_addElement(departure_searchesList, departure_searchesItem);
    }
    }

    // request_time_filter->arrival_searches
    cJSON *arrival_searches = cJSON_GetObjectItemCaseSensitive(request_time_filterJSON, "arrival_searches");
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
        request_time_filter_arrival_search_t *arrival_searchesItem = request_time_filter_arrival_search_parseFromJSON(arrival_searches_local_nonprimitive);

        list_addElement(arrival_searchesList, arrival_searchesItem);
    }
    }


    request_time_filter_local_var = request_time_filter_create (
        locationsList,
        departure_searches ? departure_searchesList : NULL,
        arrival_searches ? arrival_searchesList : NULL
        );

    return request_time_filter_local_var;
end:
    return NULL;

}
