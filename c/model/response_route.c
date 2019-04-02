#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_route.h"
#include "list.h"
#include "response_route_part.h"


response_route_t *response_route_create(
    char *departure_time,
    char *arrival_time,
    list_t *parts
    ) {
	response_route_t *response_route = malloc(sizeof(response_route_t));
	response_route->departure_time = departure_time;
	response_route->arrival_time = arrival_time;
	response_route->parts = parts;

	return response_route;
}


void response_route_free(response_route_t *response_route) {
    listEntry_t *listEntry;
    free(response_route->departure_time);
    free(response_route->arrival_time);
		list_ForEach(listEntry, response_route->parts) {
		response_route_part_free(listEntry->data);
	}
	list_free(response_route->parts);

	free(response_route);
}

cJSON *response_route_convertToJSON(response_route_t *response_route) {
	cJSON *item = cJSON_CreateObject();
	// response_route->departure_time
    if(cJSON_AddStringToObject(item, "departure_time", response_route->departure_time) == NULL) {
    goto fail; //String
    }

	// response_route->arrival_time
    if(cJSON_AddStringToObject(item, "arrival_time", response_route->arrival_time) == NULL) {
    goto fail; //String
    }

	// response_route->parts
    cJSON *parts = cJSON_AddArrayToObject(item, "parts");
	if(parts == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *partsListEntry;
	list_ForEach(partsListEntry, response_route->parts) {
		cJSON *item = response_route_part_convertToJSON(partsListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(parts, item);
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_route_t *response_route_parseFromJSON(char *jsonString){

    response_route_t *response_route = NULL;
    cJSON *response_routeJSON = cJSON_Parse(jsonString);
    if(response_routeJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_route->departure_time
    cJSON *departure_time = cJSON_GetObjectItemCaseSensitive(response_routeJSON, "departure_time");
    if(!cJSON_IsString(departure_time) || (departure_time->valuestring == NULL)){
    goto end; //String
    }

    // response_route->arrival_time
    cJSON *arrival_time = cJSON_GetObjectItemCaseSensitive(response_routeJSON, "arrival_time");
    if(!cJSON_IsString(arrival_time) || (arrival_time->valuestring == NULL)){
    goto end; //String
    }

    // response_route->parts
    cJSON *parts;
    cJSON *partsJSON = cJSON_GetObjectItemCaseSensitive(response_routeJSON,"parts");
    if(!cJSON_IsArray(partsJSON)){
        goto end; //nonprimitive container
    }

    list_t *partsList = list_create();

    cJSON_ArrayForEach(parts,partsJSON )
    {
        if(!cJSON_IsObject(parts)){
            goto end;
        }
		char *JSONData = cJSON_Print(parts);
        response_route_part_t *partsItem = response_route_part_parseFromJSON(JSONData);

        list_addElement(partsList, partsItem);
        free(JSONData);
    }


    response_route = response_route_create (
        strdup(departure_time->valuestring),
        strdup(arrival_time->valuestring),
        partsList
        );
 cJSON_Delete(response_routeJSON);
    return response_route;
end:
    cJSON_Delete(response_routeJSON);
    return NULL;

}

