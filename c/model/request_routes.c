#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_routes.h"



request_routes_t *request_routes_create(
    list_t *locations,
    list_t *departure_searches,
    list_t *arrival_searches
    ) {
    request_routes_t *request_routes_local_var = malloc(sizeof(request_routes_t));
    if (!request_routes_local_var) {
        return NULL;
    }
    request_routes_local_var->locations = locations;
    request_routes_local_var->departure_searches = departure_searches;
    request_routes_local_var->arrival_searches = arrival_searches;

    return request_routes_local_var;
}


void request_routes_free(request_routes_t *request_routes) {
    if(NULL == request_routes){
        return ;
    }
    listEntry_t *listEntry;
    if (request_routes->locations) {
        list_ForEach(listEntry, request_routes->locations) {
            request_location_free(listEntry->data);
        }
        list_free(request_routes->locations);
        request_routes->locations = NULL;
    }
    if (request_routes->departure_searches) {
        list_ForEach(listEntry, request_routes->departure_searches) {
            request_routes_departure_search_free(listEntry->data);
        }
        list_free(request_routes->departure_searches);
        request_routes->departure_searches = NULL;
    }
    if (request_routes->arrival_searches) {
        list_ForEach(listEntry, request_routes->arrival_searches) {
            request_routes_arrival_search_free(listEntry->data);
        }
        list_free(request_routes->arrival_searches);
        request_routes->arrival_searches = NULL;
    }
    free(request_routes);
}

cJSON *request_routes_convertToJSON(request_routes_t *request_routes) {
    cJSON *item = cJSON_CreateObject();

    // request_routes->locations
    if (!request_routes->locations) {
        goto fail;
    }
    
    cJSON *locations = cJSON_AddArrayToObject(item, "locations");
    if(locations == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *locationsListEntry;
    if (request_routes->locations) {
    list_ForEach(locationsListEntry, request_routes->locations) {
    cJSON *itemLocal = request_location_convertToJSON(locationsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(locations, itemLocal);
    }
    }


    // request_routes->departure_searches
    if(request_routes->departure_searches) { 
    cJSON *departure_searches = cJSON_AddArrayToObject(item, "departure_searches");
    if(departure_searches == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *departure_searchesListEntry;
    if (request_routes->departure_searches) {
    list_ForEach(departure_searchesListEntry, request_routes->departure_searches) {
    cJSON *itemLocal = request_routes_departure_search_convertToJSON(departure_searchesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(departure_searches, itemLocal);
    }
    }
     } 


    // request_routes->arrival_searches
    if(request_routes->arrival_searches) { 
    cJSON *arrival_searches = cJSON_AddArrayToObject(item, "arrival_searches");
    if(arrival_searches == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *arrival_searchesListEntry;
    if (request_routes->arrival_searches) {
    list_ForEach(arrival_searchesListEntry, request_routes->arrival_searches) {
    cJSON *itemLocal = request_routes_arrival_search_convertToJSON(arrival_searchesListEntry->data);
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

request_routes_t *request_routes_parseFromJSON(cJSON *request_routesJSON){

    request_routes_t *request_routes_local_var = NULL;

    // request_routes->locations
    cJSON *locations = cJSON_GetObjectItemCaseSensitive(request_routesJSON, "locations");
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

    // request_routes->departure_searches
    cJSON *departure_searches = cJSON_GetObjectItemCaseSensitive(request_routesJSON, "departure_searches");
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
        request_routes_departure_search_t *departure_searchesItem = request_routes_departure_search_parseFromJSON(departure_searches_local_nonprimitive);

        list_addElement(departure_searchesList, departure_searchesItem);
    }
    }

    // request_routes->arrival_searches
    cJSON *arrival_searches = cJSON_GetObjectItemCaseSensitive(request_routesJSON, "arrival_searches");
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
        request_routes_arrival_search_t *arrival_searchesItem = request_routes_arrival_search_parseFromJSON(arrival_searches_local_nonprimitive);

        list_addElement(arrival_searchesList, arrival_searchesItem);
    }
    }


    request_routes_local_var = request_routes_create (
        locationsList,
        departure_searches ? departure_searchesList : NULL,
        arrival_searches ? arrival_searchesList : NULL
        );

    return request_routes_local_var;
end:
    return NULL;

}
