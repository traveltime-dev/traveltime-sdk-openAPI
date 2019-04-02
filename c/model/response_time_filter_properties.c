#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_filter_properties.h"
#include "list.h"
#include "response_distance_breakdown_item.h"
#include "response_fares.h"
#include "response_route.h"


response_time_filter_properties_t *response_time_filter_properties_create(
    int travel_time,
    int distance,
    list_t *distance_breakdown,
    response_fares_t *fares,
    response_route_t *route
    ) {
	response_time_filter_properties_t *response_time_filter_properties = malloc(sizeof(response_time_filter_properties_t));
	response_time_filter_properties->travel_time = travel_time;
	response_time_filter_properties->distance = distance;
	response_time_filter_properties->distance_breakdown = distance_breakdown;
	response_time_filter_properties->fares = fares;
	response_time_filter_properties->route = route;

	return response_time_filter_properties;
}


void response_time_filter_properties_free(response_time_filter_properties_t *response_time_filter_properties) {
    listEntry_t *listEntry;
		list_ForEach(listEntry, response_time_filter_properties->distance_breakdown) {
		response_distance_breakdown_item_free(listEntry->data);
	}
	list_free(response_time_filter_properties->distance_breakdown);
	response_fares_free(response_time_filter_properties->fares);
	response_route_free(response_time_filter_properties->route);

	free(response_time_filter_properties);
}

cJSON *response_time_filter_properties_convertToJSON(response_time_filter_properties_t *response_time_filter_properties) {
	cJSON *item = cJSON_CreateObject();
	// response_time_filter_properties->travel_time
    if(cJSON_AddNumberToObject(item, "travel_time", response_time_filter_properties->travel_time) == NULL) {
    goto fail; //Numeric
    }

	// response_time_filter_properties->distance
    if(cJSON_AddNumberToObject(item, "distance", response_time_filter_properties->distance) == NULL) {
    goto fail; //Numeric
    }

	// response_time_filter_properties->distance_breakdown
    cJSON *distance_breakdown = cJSON_AddArrayToObject(item, "distance_breakdown");
	if(distance_breakdown == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *distance_breakdownListEntry;
	list_ForEach(distance_breakdownListEntry, response_time_filter_properties->distance_breakdown) {
		cJSON *item = response_distance_breakdown_item_convertToJSON(distance_breakdownListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(distance_breakdown, item);
	}

	// response_time_filter_properties->fares
	cJSON *fares = response_fares_convertToJSON(response_time_filter_properties->fares);
	if(fares == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "fares", fares);
	if(item->child == NULL) {
		goto fail;
	}

	// response_time_filter_properties->route
	cJSON *route = response_route_convertToJSON(response_time_filter_properties->route);
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

response_time_filter_properties_t *response_time_filter_properties_parseFromJSON(char *jsonString){

    response_time_filter_properties_t *response_time_filter_properties = NULL;
    cJSON *response_time_filter_propertiesJSON = cJSON_Parse(jsonString);
    if(response_time_filter_propertiesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_filter_properties->travel_time
    cJSON *travel_time = cJSON_GetObjectItemCaseSensitive(response_time_filter_propertiesJSON, "travel_time");
    if(!cJSON_IsNumber(travel_time))
    {
    goto end; //Numeric
    }

    // response_time_filter_properties->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(response_time_filter_propertiesJSON, "distance");
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }

    // response_time_filter_properties->distance_breakdown
    cJSON *distance_breakdown;
    cJSON *distance_breakdownJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_propertiesJSON,"distance_breakdown");
    if(!cJSON_IsArray(distance_breakdownJSON)){
        goto end; //nonprimitive container
    }

    list_t *distance_breakdownList = list_create();

    cJSON_ArrayForEach(distance_breakdown,distance_breakdownJSON )
    {
        if(!cJSON_IsObject(distance_breakdown)){
            goto end;
        }
		char *JSONData = cJSON_Print(distance_breakdown);
        response_distance_breakdown_item_t *distance_breakdownItem = response_distance_breakdown_item_parseFromJSON(JSONData);

        list_addElement(distance_breakdownList, distance_breakdownItem);
        free(JSONData);
    }

    // response_time_filter_properties->fares
    response_fares_t *fares;
    cJSON *faresJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_propertiesJSON, "fares");
    if(response_time_filter_propertiesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *faresJSONData = cJSON_Print(faresJSON);
    fares = response_fares_parseFromJSON(faresJSONData);

    // response_time_filter_properties->route
    response_route_t *route;
    cJSON *routeJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_propertiesJSON, "route");
    if(response_time_filter_propertiesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *routeJSONData = cJSON_Print(routeJSON);
    route = response_route_parseFromJSON(routeJSONData);


    response_time_filter_properties = response_time_filter_properties_create (
        travel_time->valuedouble,
        distance->valuedouble,
        distance_breakdownList,
        fares,
        route
        );
        free(faresJSONData);
        free(routeJSONData);
 cJSON_Delete(response_time_filter_propertiesJSON);
    return response_time_filter_properties;
end:
    cJSON_Delete(response_time_filter_propertiesJSON);
    return NULL;

}

