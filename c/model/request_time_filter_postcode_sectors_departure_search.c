#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "request_time_filter_postcode_sectors_departure_search.h"
#include "list.h"
#include "request_range_full.h"
#include "request_time_filter_postcode_sectors_property.h"
#include "request_transportation.h"


request_time_filter_postcode_sectors_departure_search_t *request_time_filter_postcode_sectors_departure_search_create(
    char *id,
    request_transportation_t *transportation,
    int travel_time,
    char *departure_time,
    double reachable_postcodes_threshold,
    list_t *properties,
    request_range_full_t *range
    ) {
	request_time_filter_postcode_sectors_departure_search_t *request_time_filter_postcode_sectors_departure_search = malloc(sizeof(request_time_filter_postcode_sectors_departure_search_t));
	request_time_filter_postcode_sectors_departure_search->id = id;
	request_time_filter_postcode_sectors_departure_search->transportation = transportation;
	request_time_filter_postcode_sectors_departure_search->travel_time = travel_time;
	request_time_filter_postcode_sectors_departure_search->departure_time = departure_time;
	request_time_filter_postcode_sectors_departure_search->reachable_postcodes_threshold = reachable_postcodes_threshold;
	request_time_filter_postcode_sectors_departure_search->properties = properties;
	request_time_filter_postcode_sectors_departure_search->range = range;

	return request_time_filter_postcode_sectors_departure_search;
}


void request_time_filter_postcode_sectors_departure_search_free(request_time_filter_postcode_sectors_departure_search_t *request_time_filter_postcode_sectors_departure_search) {
    listEntry_t *listEntry;
    free(request_time_filter_postcode_sectors_departure_search->id);
	request_transportation_free(request_time_filter_postcode_sectors_departure_search->transportation);
    free(request_time_filter_postcode_sectors_departure_search->departure_time);
		list_ForEach(listEntry, request_time_filter_postcode_sectors_departure_search->properties) {
		request_time_filter_postcode_sectors_property_free(listEntry->data);
	}
	list_free(request_time_filter_postcode_sectors_departure_search->properties);
	request_range_full_free(request_time_filter_postcode_sectors_departure_search->range);

	free(request_time_filter_postcode_sectors_departure_search);
}

cJSON *request_time_filter_postcode_sectors_departure_search_convertToJSON(request_time_filter_postcode_sectors_departure_search_t *request_time_filter_postcode_sectors_departure_search) {
	cJSON *item = cJSON_CreateObject();
	// request_time_filter_postcode_sectors_departure_search->id
    if(cJSON_AddStringToObject(item, "id", request_time_filter_postcode_sectors_departure_search->id) == NULL) {
    goto fail; //String
    }

	// request_time_filter_postcode_sectors_departure_search->transportation
	cJSON *transportation = request_transportation_convertToJSON(request_time_filter_postcode_sectors_departure_search->transportation);
	if(transportation == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "transportation", transportation);
	if(item->child == NULL) {
		goto fail;
	}

	// request_time_filter_postcode_sectors_departure_search->travel_time
    if(cJSON_AddNumberToObject(item, "travel_time", request_time_filter_postcode_sectors_departure_search->travel_time) == NULL) {
    goto fail; //Numeric
    }

	// request_time_filter_postcode_sectors_departure_search->departure_time
    if(cJSON_AddStringToObject(item, "departure_time", request_time_filter_postcode_sectors_departure_search->departure_time) == NULL) {
    goto fail; //String
    }

	// request_time_filter_postcode_sectors_departure_search->reachable_postcodes_threshold
    if(cJSON_AddNumberToObject(item, "reachable_postcodes_threshold", request_time_filter_postcode_sectors_departure_search->reachable_postcodes_threshold) == NULL) {
    goto fail; //Numeric
    }

	// request_time_filter_postcode_sectors_departure_search->properties
    cJSON *properties = cJSON_AddArrayToObject(item, "properties");
	if(properties == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *propertiesListEntry;
	list_ForEach(propertiesListEntry, request_time_filter_postcode_sectors_departure_search->properties) {
		cJSON *item = request_time_filter_postcode_sectors_property_convertToJSON(propertiesListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(properties, item);
	}

	// request_time_filter_postcode_sectors_departure_search->range
	cJSON *range = request_range_full_convertToJSON(request_time_filter_postcode_sectors_departure_search->range);
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

request_time_filter_postcode_sectors_departure_search_t *request_time_filter_postcode_sectors_departure_search_parseFromJSON(char *jsonString){

    request_time_filter_postcode_sectors_departure_search_t *request_time_filter_postcode_sectors_departure_search = NULL;
    cJSON *request_time_filter_postcode_sectors_departure_searchJSON = cJSON_Parse(jsonString);
    if(request_time_filter_postcode_sectors_departure_searchJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // request_time_filter_postcode_sectors_departure_search->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(request_time_filter_postcode_sectors_departure_searchJSON, "id");
    if(!cJSON_IsString(id) || (id->valuestring == NULL)){
    goto end; //String
    }

    // request_time_filter_postcode_sectors_departure_search->transportation
    request_transportation_t *transportation;
    cJSON *transportationJSON = cJSON_GetObjectItemCaseSensitive(request_time_filter_postcode_sectors_departure_searchJSON, "transportation");
    if(request_time_filter_postcode_sectors_departure_searchJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *transportationJSONData = cJSON_Print(transportationJSON);
    transportation = request_transportation_parseFromJSON(transportationJSONData);

    // request_time_filter_postcode_sectors_departure_search->travel_time
    cJSON *travel_time = cJSON_GetObjectItemCaseSensitive(request_time_filter_postcode_sectors_departure_searchJSON, "travel_time");
    if(!cJSON_IsNumber(travel_time))
    {
    goto end; //Numeric
    }

    // request_time_filter_postcode_sectors_departure_search->departure_time
    cJSON *departure_time = cJSON_GetObjectItemCaseSensitive(request_time_filter_postcode_sectors_departure_searchJSON, "departure_time");
    if(!cJSON_IsString(departure_time) || (departure_time->valuestring == NULL)){
    goto end; //String
    }

    // request_time_filter_postcode_sectors_departure_search->reachable_postcodes_threshold
    cJSON *reachable_postcodes_threshold = cJSON_GetObjectItemCaseSensitive(request_time_filter_postcode_sectors_departure_searchJSON, "reachable_postcodes_threshold");
    if(!cJSON_IsNumber(reachable_postcodes_threshold))
    {
    goto end; //Numeric
    }

    // request_time_filter_postcode_sectors_departure_search->properties
    cJSON *properties;
    cJSON *propertiesJSON = cJSON_GetObjectItemCaseSensitive(request_time_filter_postcode_sectors_departure_searchJSON,"properties");
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
        request_time_filter_postcode_sectors_property_t *propertiesItem = request_time_filter_postcode_sectors_property_parseFromJSON(JSONData);

        list_addElement(propertiesList, propertiesItem);
        free(JSONData);
    }

    // request_time_filter_postcode_sectors_departure_search->range
    request_range_full_t *range;
    cJSON *rangeJSON = cJSON_GetObjectItemCaseSensitive(request_time_filter_postcode_sectors_departure_searchJSON, "range");
    if(request_time_filter_postcode_sectors_departure_searchJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *rangeJSONData = cJSON_Print(rangeJSON);
    range = request_range_full_parseFromJSON(rangeJSONData);


    request_time_filter_postcode_sectors_departure_search = request_time_filter_postcode_sectors_departure_search_create (
        strdup(id->valuestring),
        transportation,
        travel_time->valuedouble,
        strdup(departure_time->valuestring),
        reachable_postcodes_threshold->valuedouble,
        propertiesList,
        range
        );
        free(transportationJSONData);
        free(rangeJSONData);
 cJSON_Delete(request_time_filter_postcode_sectors_departure_searchJSON);
    return request_time_filter_postcode_sectors_departure_search;
end:
    cJSON_Delete(request_time_filter_postcode_sectors_departure_searchJSON);
    return NULL;

}
