#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "request_time_filter_arrival_search.h"
#include "list.h"
#include "request_range_full.h"
#include "request_time_filter_property.h"
#include "request_transportation.h"


request_time_filter_arrival_search_t *request_time_filter_arrival_search_create(
    char *id,
    list_t *departure_location_ids,
    char *arrival_location_id,
    request_transportation_t *transportation,
    int travel_time,
    char *arrival_time,
    list_t *properties,
    request_range_full_t *range
    ) {
	request_time_filter_arrival_search_t *request_time_filter_arrival_search = malloc(sizeof(request_time_filter_arrival_search_t));
	request_time_filter_arrival_search->id = id;
	request_time_filter_arrival_search->departure_location_ids = departure_location_ids;
	request_time_filter_arrival_search->arrival_location_id = arrival_location_id;
	request_time_filter_arrival_search->transportation = transportation;
	request_time_filter_arrival_search->travel_time = travel_time;
	request_time_filter_arrival_search->arrival_time = arrival_time;
	request_time_filter_arrival_search->properties = properties;
	request_time_filter_arrival_search->range = range;

	return request_time_filter_arrival_search;
}


void request_time_filter_arrival_search_free(request_time_filter_arrival_search_t *request_time_filter_arrival_search) {
    listEntry_t *listEntry;
    free(request_time_filter_arrival_search->id);
	list_ForEach(listEntry, request_time_filter_arrival_search->departure_location_ids) {
		free(listEntry->data);
	}
	list_free(request_time_filter_arrival_search->departure_location_ids);
    free(request_time_filter_arrival_search->arrival_location_id);
	request_transportation_free(request_time_filter_arrival_search->transportation);
    free(request_time_filter_arrival_search->arrival_time);
		list_ForEach(listEntry, request_time_filter_arrival_search->properties) {
		request_time_filter_property_free(listEntry->data);
	}
	list_free(request_time_filter_arrival_search->properties);
	request_range_full_free(request_time_filter_arrival_search->range);

	free(request_time_filter_arrival_search);
}

cJSON *request_time_filter_arrival_search_convertToJSON(request_time_filter_arrival_search_t *request_time_filter_arrival_search) {
	cJSON *item = cJSON_CreateObject();
	// request_time_filter_arrival_search->id
    if(cJSON_AddStringToObject(item, "id", request_time_filter_arrival_search->id) == NULL) {
    goto fail; //String
    }

	// request_time_filter_arrival_search->departure_location_ids
	cJSON *departure_location_ids = cJSON_AddArrayToObject(item, "departure_location_ids");
	if(departure_location_ids == NULL) {
		goto fail; //primitive container
	}

	listEntry_t *departure_location_idsListEntry;
    list_ForEach(departure_location_idsListEntry, request_time_filter_arrival_search->departure_location_ids) {
        if(cJSON_AddStringToObject(departure_location_ids, "", (char*)departure_location_idsListEntry->data) == NULL)
        {
            goto fail;
        }
    }

	// request_time_filter_arrival_search->arrival_location_id
    if(cJSON_AddStringToObject(item, "arrival_location_id", request_time_filter_arrival_search->arrival_location_id) == NULL) {
    goto fail; //String
    }

	// request_time_filter_arrival_search->transportation
	cJSON *transportation = request_transportation_convertToJSON(request_time_filter_arrival_search->transportation);
	if(transportation == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "transportation", transportation);
	if(item->child == NULL) {
		goto fail;
	}

	// request_time_filter_arrival_search->travel_time
    if(cJSON_AddNumberToObject(item, "travel_time", request_time_filter_arrival_search->travel_time) == NULL) {
    goto fail; //Numeric
    }

	// request_time_filter_arrival_search->arrival_time
    if(cJSON_AddStringToObject(item, "arrival_time", request_time_filter_arrival_search->arrival_time) == NULL) {
    goto fail; //String
    }

	// request_time_filter_arrival_search->properties
    cJSON *properties = cJSON_AddArrayToObject(item, "properties");
	if(properties == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *propertiesListEntry;
	list_ForEach(propertiesListEntry, request_time_filter_arrival_search->properties) {
		cJSON *item = request_time_filter_property_convertToJSON(propertiesListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(properties, item);
	}

	// request_time_filter_arrival_search->range
	cJSON *range = request_range_full_convertToJSON(request_time_filter_arrival_search->range);
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

request_time_filter_arrival_search_t *request_time_filter_arrival_search_parseFromJSON(char *jsonString){

    request_time_filter_arrival_search_t *request_time_filter_arrival_search = NULL;
    cJSON *request_time_filter_arrival_searchJSON = cJSON_Parse(jsonString);
    if(request_time_filter_arrival_searchJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // request_time_filter_arrival_search->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(request_time_filter_arrival_searchJSON, "id");
    if(!cJSON_IsString(id) || (id->valuestring == NULL)){
    goto end; //String
    }

    // request_time_filter_arrival_search->departure_location_ids
    cJSON *departure_location_ids;
    cJSON *departure_location_idsJSON = cJSON_GetObjectItemCaseSensitive(request_time_filter_arrival_searchJSON, "departure_location_ids");
    if(!cJSON_IsArray(departure_location_idsJSON)) {
        goto end;//primitive container
    }
    list_t *departure_location_idsList = list_create();

    cJSON_ArrayForEach(departure_location_ids, departure_location_idsJSON)
    {
        if(!cJSON_IsString(departure_location_ids))
        {
            goto end;
        }
        list_addElement(departure_location_idsList , strdup(departure_location_ids->valuestring));

    }

    // request_time_filter_arrival_search->arrival_location_id
    cJSON *arrival_location_id = cJSON_GetObjectItemCaseSensitive(request_time_filter_arrival_searchJSON, "arrival_location_id");
    if(!cJSON_IsString(arrival_location_id) || (arrival_location_id->valuestring == NULL)){
    goto end; //String
    }

    // request_time_filter_arrival_search->transportation
    request_transportation_t *transportation;
    cJSON *transportationJSON = cJSON_GetObjectItemCaseSensitive(request_time_filter_arrival_searchJSON, "transportation");
    if(request_time_filter_arrival_searchJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *transportationJSONData = cJSON_Print(transportationJSON);
    transportation = request_transportation_parseFromJSON(transportationJSONData);

    // request_time_filter_arrival_search->travel_time
    cJSON *travel_time = cJSON_GetObjectItemCaseSensitive(request_time_filter_arrival_searchJSON, "travel_time");
    if(!cJSON_IsNumber(travel_time))
    {
    goto end; //Numeric
    }

    // request_time_filter_arrival_search->arrival_time
    cJSON *arrival_time = cJSON_GetObjectItemCaseSensitive(request_time_filter_arrival_searchJSON, "arrival_time");
    if(!cJSON_IsString(arrival_time) || (arrival_time->valuestring == NULL)){
    goto end; //String
    }

    // request_time_filter_arrival_search->properties
    cJSON *properties;
    cJSON *propertiesJSON = cJSON_GetObjectItemCaseSensitive(request_time_filter_arrival_searchJSON,"properties");
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
        request_time_filter_property_t *propertiesItem = request_time_filter_property_parseFromJSON(JSONData);

        list_addElement(propertiesList, propertiesItem);
        free(JSONData);
    }

    // request_time_filter_arrival_search->range
    request_range_full_t *range;
    cJSON *rangeJSON = cJSON_GetObjectItemCaseSensitive(request_time_filter_arrival_searchJSON, "range");
    if(request_time_filter_arrival_searchJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *rangeJSONData = cJSON_Print(rangeJSON);
    range = request_range_full_parseFromJSON(rangeJSONData);


    request_time_filter_arrival_search = request_time_filter_arrival_search_create (
        strdup(id->valuestring),
        departure_location_idsList,
        strdup(arrival_location_id->valuestring),
        transportation,
        travel_time->valuedouble,
        strdup(arrival_time->valuestring),
        propertiesList,
        range
        );
        free(transportationJSONData);
        free(rangeJSONData);
 cJSON_Delete(request_time_filter_arrival_searchJSON);
    return request_time_filter_arrival_search;
end:
    cJSON_Delete(request_time_filter_arrival_searchJSON);
    return NULL;

}

