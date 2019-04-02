#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "request_routes.h"
#include "list.h"
#include "request_location.h"
#include "request_routes_arrival_search.h"
#include "request_routes_departure_search.h"


request_routes_t *request_routes_create(
    list_t *locations,
    list_t *departure_searches,
    list_t *arrival_searches
    ) {
	request_routes_t *request_routes = malloc(sizeof(request_routes_t));
	request_routes->locations = locations;
	request_routes->departure_searches = departure_searches;
	request_routes->arrival_searches = arrival_searches;

	return request_routes;
}


void request_routes_free(request_routes_t *request_routes) {
    listEntry_t *listEntry;
		list_ForEach(listEntry, request_routes->locations) {
		request_location_free(listEntry->data);
	}
	list_free(request_routes->locations);
		list_ForEach(listEntry, request_routes->departure_searches) {
		request_routes_departure_search_free(listEntry->data);
	}
	list_free(request_routes->departure_searches);
		list_ForEach(listEntry, request_routes->arrival_searches) {
		request_routes_arrival_search_free(listEntry->data);
	}
	list_free(request_routes->arrival_searches);

	free(request_routes);
}

cJSON *request_routes_convertToJSON(request_routes_t *request_routes) {
	cJSON *item = cJSON_CreateObject();
	// request_routes->locations
    cJSON *locations = cJSON_AddArrayToObject(item, "locations");
	if(locations == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *locationsListEntry;
	list_ForEach(locationsListEntry, request_routes->locations) {
		cJSON *item = request_location_convertToJSON(locationsListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(locations, item);
	}

	// request_routes->departure_searches
    cJSON *departure_searches = cJSON_AddArrayToObject(item, "departure_searches");
	if(departure_searches == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *departure_searchesListEntry;
	list_ForEach(departure_searchesListEntry, request_routes->departure_searches) {
		cJSON *item = request_routes_departure_search_convertToJSON(departure_searchesListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(departure_searches, item);
	}

	// request_routes->arrival_searches
    cJSON *arrival_searches = cJSON_AddArrayToObject(item, "arrival_searches");
	if(arrival_searches == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *arrival_searchesListEntry;
	list_ForEach(arrival_searchesListEntry, request_routes->arrival_searches) {
		cJSON *item = request_routes_arrival_search_convertToJSON(arrival_searchesListEntry->data);
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

request_routes_t *request_routes_parseFromJSON(char *jsonString){

    request_routes_t *request_routes = NULL;
    cJSON *request_routesJSON = cJSON_Parse(jsonString);
    if(request_routesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // request_routes->locations
    cJSON *locations;
    cJSON *locationsJSON = cJSON_GetObjectItemCaseSensitive(request_routesJSON,"locations");
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

    // request_routes->departure_searches
    cJSON *departure_searches;
    cJSON *departure_searchesJSON = cJSON_GetObjectItemCaseSensitive(request_routesJSON,"departure_searches");
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
        request_routes_departure_search_t *departure_searchesItem = request_routes_departure_search_parseFromJSON(JSONData);

        list_addElement(departure_searchesList, departure_searchesItem);
        free(JSONData);
    }

    // request_routes->arrival_searches
    cJSON *arrival_searches;
    cJSON *arrival_searchesJSON = cJSON_GetObjectItemCaseSensitive(request_routesJSON,"arrival_searches");
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
        request_routes_arrival_search_t *arrival_searchesItem = request_routes_arrival_search_parseFromJSON(JSONData);

        list_addElement(arrival_searchesList, arrival_searchesItem);
        free(JSONData);
    }


    request_routes = request_routes_create (
        locationsList,
        departure_searchesList,
        arrival_searchesList
        );
 cJSON_Delete(request_routesJSON);
    return request_routes;
end:
    cJSON_Delete(request_routesJSON);
    return NULL;

}

