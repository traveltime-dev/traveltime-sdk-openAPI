#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_routes_properties.h"
#include "response_fares.h"
#include "response_route.h"


response_routes_properties_t *response_routes_properties_create(
    int travel_time,
    int distance,
    response_fares_t *fares,
    response_route_t *route
    ) {
	response_routes_properties_t *response_routes_properties = malloc(sizeof(response_routes_properties_t));
	response_routes_properties->travel_time = travel_time;
	response_routes_properties->distance = distance;
	response_routes_properties->fares = fares;
	response_routes_properties->route = route;

	return response_routes_properties;
}


void response_routes_properties_free(response_routes_properties_t *response_routes_properties) {
    listEntry_t *listEntry;
	response_fares_free(response_routes_properties->fares);
	response_route_free(response_routes_properties->route);

	free(response_routes_properties);
}

cJSON *response_routes_properties_convertToJSON(response_routes_properties_t *response_routes_properties) {
	cJSON *item = cJSON_CreateObject();
	// response_routes_properties->travel_time
    if(cJSON_AddNumberToObject(item, "travel_time", response_routes_properties->travel_time) == NULL) {
    goto fail; //Numeric
    }

	// response_routes_properties->distance
    if(cJSON_AddNumberToObject(item, "distance", response_routes_properties->distance) == NULL) {
    goto fail; //Numeric
    }

	// response_routes_properties->fares
	cJSON *fares = response_fares_convertToJSON(response_routes_properties->fares);
	if(fares == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "fares", fares);
	if(item->child == NULL) {
		goto fail;
	}

	// response_routes_properties->route
	cJSON *route = response_route_convertToJSON(response_routes_properties->route);
	if(route == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "route", route);
	if(item->child == NULL) {
		goto fail;
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_routes_properties_t *response_routes_properties_parseFromJSON(char *jsonString){

    response_routes_properties_t *response_routes_properties = NULL;
    cJSON *response_routes_propertiesJSON = cJSON_Parse(jsonString);
    if(response_routes_propertiesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_routes_properties->travel_time
    cJSON *travel_time = cJSON_GetObjectItemCaseSensitive(response_routes_propertiesJSON, "travel_time");
    if(!cJSON_IsNumber(travel_time))
    {
    goto end; //Numeric
    }

    // response_routes_properties->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(response_routes_propertiesJSON, "distance");
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }

    // response_routes_properties->fares
    response_fares_t *fares;
    cJSON *faresJSON = cJSON_GetObjectItemCaseSensitive(response_routes_propertiesJSON, "fares");
    if(response_routes_propertiesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *faresJSONData = cJSON_Print(faresJSON);
    fares = response_fares_parseFromJSON(faresJSONData);

    // response_routes_properties->route
    response_route_t *route;
    cJSON *routeJSON = cJSON_GetObjectItemCaseSensitive(response_routes_propertiesJSON, "route");
    if(response_routes_propertiesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *routeJSONData = cJSON_Print(routeJSON);
    route = response_route_parseFromJSON(routeJSONData);


    response_routes_properties = response_routes_properties_create (
        travel_time->valuedouble,
        distance->valuedouble,
        fares,
        route
        );
        free(faresJSONData);
        free(routeJSONData);
 cJSON_Delete(response_routes_propertiesJSON);
    return response_routes_properties;
end:
    cJSON_Delete(response_routes_propertiesJSON);
    return NULL;

}

