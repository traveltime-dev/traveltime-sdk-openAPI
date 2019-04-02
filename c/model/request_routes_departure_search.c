#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "request_routes_departure_search.h"
#include "list.h"
#include "request_range_full.h"
#include "request_routes_property.h"
#include "request_transportation.h"


request_routes_departure_search_t *request_routes_departure_search_create(
    char *id,
    char *departure_location_id,
    list_t *arrival_location_ids,
    request_transportation_t *transportation,
    char *departure_time,
    list_t *properties,
    request_range_full_t *range
    ) {
	request_routes_departure_search_t *request_routes_departure_search = malloc(sizeof(request_routes_departure_search_t));
	request_routes_departure_search->id = id;
	request_routes_departure_search->departure_location_id = departure_location_id;
	request_routes_departure_search->arrival_location_ids = arrival_location_ids;
	request_routes_departure_search->transportation = transportation;
	request_routes_departure_search->departure_time = departure_time;
	request_routes_departure_search->properties = properties;
	request_routes_departure_search->range = range;

	return request_routes_departure_search;
}


void request_routes_departure_search_free(request_routes_departure_search_t *request_routes_departure_search) {
    listEntry_t *listEntry;
    free(request_routes_departure_search->id);
    free(request_routes_departure_search->departure_location_id);
	list_ForEach(listEntry, request_routes_departure_search->arrival_location_ids) {
		free(listEntry->data);
	}
	list_free(request_routes_departure_search->arrival_location_ids);
	request_transportation_free(request_routes_departure_search->transportation);
    free(request_routes_departure_search->departure_time);
		list_ForEach(listEntry, request_routes_departure_search->properties) {
		request_routes_property_free(listEntry->data);
	}
	list_free(request_routes_departure_search->properties);
	request_range_full_free(request_routes_departure_search->range);

	free(request_routes_departure_search);
}

cJSON *request_routes_departure_search_convertToJSON(request_routes_departure_search_t *request_routes_departure_search) {
	cJSON *item = cJSON_CreateObject();
	// request_routes_departure_search->id
    if(cJSON_AddStringToObject(item, "id", request_routes_departure_search->id) == NULL) {
    goto fail; //String
    }

	// request_routes_departure_search->departure_location_id
    if(cJSON_AddStringToObject(item, "departure_location_id", request_routes_departure_search->departure_location_id) == NULL) {
    goto fail; //String
    }

	// request_routes_departure_search->arrival_location_ids
	cJSON *arrival_location_ids = cJSON_AddArrayToObject(item, "arrival_location_ids");
	if(arrival_location_ids == NULL) {
		goto fail; //primitive container
	}

	listEntry_t *arrival_location_idsListEntry;
    list_ForEach(arrival_location_idsListEntry, request_routes_departure_search->arrival_location_ids) {
        if(cJSON_AddStringToObject(arrival_location_ids, "", (char*)arrival_location_idsListEntry->data) == NULL)
        {
            goto fail;
        }
    }

	// request_routes_departure_search->transportation
	cJSON *transportation = request_transportation_convertToJSON(request_routes_departure_search->transportation);
	if(transportation == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "transportation", transportation);
	if(item->child == NULL) {
		goto fail;
	}

	// request_routes_departure_search->departure_time
    if(cJSON_AddStringToObject(item, "departure_time", request_routes_departure_search->departure_time) == NULL) {
    goto fail; //String
    }

	// request_routes_departure_search->properties
    cJSON *properties = cJSON_AddArrayToObject(item, "properties");
	if(properties == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *propertiesListEntry;
	list_ForEach(propertiesListEntry, request_routes_departure_search->properties) {
		cJSON *item = request_routes_property_convertToJSON(propertiesListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(properties, item);
	}

	// request_routes_departure_search->range
	cJSON *range = request_range_full_convertToJSON(request_routes_departure_search->range);
	if(range == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "range", range);
	if(item->child == NULL) {
		goto fail;
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

request_routes_departure_search_t *request_routes_departure_search_parseFromJSON(char *jsonString){

    request_routes_departure_search_t *request_routes_departure_search = NULL;
    cJSON *request_routes_departure_searchJSON = cJSON_Parse(jsonString);
    if(request_routes_departure_searchJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // request_routes_departure_search->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(request_routes_departure_searchJSON, "id");
    if(!cJSON_IsString(id) || (id->valuestring == NULL)){
    goto end; //String
    }

    // request_routes_departure_search->departure_location_id
    cJSON *departure_location_id = cJSON_GetObjectItemCaseSensitive(request_routes_departure_searchJSON, "departure_location_id");
    if(!cJSON_IsString(departure_location_id) || (departure_location_id->valuestring == NULL)){
    goto end; //String
    }

    // request_routes_departure_search->arrival_location_ids
    cJSON *arrival_location_ids;
    cJSON *arrival_location_idsJSON = cJSON_GetObjectItemCaseSensitive(request_routes_departure_searchJSON, "arrival_location_ids");
    if(!cJSON_IsArray(arrival_location_idsJSON)) {
        goto end;//primitive container
    }
    list_t *arrival_location_idsList = list_create();

    cJSON_ArrayForEach(arrival_location_ids, arrival_location_idsJSON)
    {
        if(!cJSON_IsString(arrival_location_ids))
        {
            goto end;
        }
        list_addElement(arrival_location_idsList , strdup(arrival_location_ids->valuestring));

    }

    // request_routes_departure_search->transportation
    request_transportation_t *transportation;
    cJSON *transportationJSON = cJSON_GetObjectItemCaseSensitive(request_routes_departure_searchJSON, "transportation");
    if(request_routes_departure_searchJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *transportationJSONData = cJSON_Print(transportationJSON);
    transportation = request_transportation_parseFromJSON(transportationJSONData);

    // request_routes_departure_search->departure_time
    cJSON *departure_time = cJSON_GetObjectItemCaseSensitive(request_routes_departure_searchJSON, "departure_time");
    if(!cJSON_IsString(departure_time) || (departure_time->valuestring == NULL)){
    goto end; //String
    }

    // request_routes_departure_search->properties
    cJSON *properties;
    cJSON *propertiesJSON = cJSON_GetObjectItemCaseSensitive(request_routes_departure_searchJSON,"properties");
    if(!cJSON_IsArray(propertiesJSON)){
        goto end; //nonprimitive container
    }

    list_t *propertiesList = list_create();

    cJSON_ArrayForEach(properties,propertiesJSON )
    {
        if(!cJSON_IsObject(properties)){
            goto end;
        }
		char *JSONData = cJSON_Print(properties);
        request_routes_property_t *propertiesItem = request_routes_property_parseFromJSON(JSONData);

        list_addElement(propertiesList, propertiesItem);
        free(JSONData);
    }

    // request_routes_departure_search->range
    request_range_full_t *range;
    cJSON *rangeJSON = cJSON_GetObjectItemCaseSensitive(request_routes_departure_searchJSON, "range");
    if(request_routes_departure_searchJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *rangeJSONData = cJSON_Print(rangeJSON);
    range = request_range_full_parseFromJSON(rangeJSONData);


    request_routes_departure_search = request_routes_departure_search_create (
        strdup(id->valuestring),
        strdup(departure_location_id->valuestring),
        arrival_location_idsList,
        transportation,
        strdup(departure_time->valuestring),
        propertiesList,
        range
        );
        free(transportationJSONData);
        free(rangeJSONData);
 cJSON_Delete(request_routes_departure_searchJSON);
    return request_routes_departure_search;
end:
    cJSON_Delete(request_routes_departure_searchJSON);
    return NULL;

}
