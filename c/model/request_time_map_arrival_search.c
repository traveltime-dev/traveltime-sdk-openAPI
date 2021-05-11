#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_time_map_arrival_search.h"


char* propertiesrequest_time_map_arrival_search_ToString(traveltime_api_request_time_map_arrival_search__e properties) {
	char *propertiesArray[] =  { "NULL", "is_only_walking" };
	return propertiesArray[properties - 1];
}

traveltime_api_request_time_map_arrival_search__e propertiesrequest_time_map_arrival_search_FromString(char* properties) {
    int stringToReturn = 0;
    char *propertiesArray[] =  { "NULL", "is_only_walking" };
    size_t sizeofArray = sizeof(propertiesArray) / sizeof(propertiesArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(properties, propertiesArray[stringToReturn]) == 0) {
            return stringToReturn + 1;
        }
        stringToReturn++;
    }
    return 0;
}

request_time_map_arrival_search_t *request_time_map_arrival_search_create(
    char *id,
    coords_t *coords,
    request_transportation_t *transportation,
    int travel_time,
    char *arrival_time,
    list_t *properties,
    request_range_no_max_results_t *range
    ) {
    request_time_map_arrival_search_t *request_time_map_arrival_search_local_var = malloc(sizeof(request_time_map_arrival_search_t));
    if (!request_time_map_arrival_search_local_var) {
        return NULL;
    }
    request_time_map_arrival_search_local_var->id = id;
    request_time_map_arrival_search_local_var->coords = coords;
    request_time_map_arrival_search_local_var->transportation = transportation;
    request_time_map_arrival_search_local_var->travel_time = travel_time;
    request_time_map_arrival_search_local_var->arrival_time = arrival_time;
    request_time_map_arrival_search_local_var->properties = properties;
    request_time_map_arrival_search_local_var->range = range;

    return request_time_map_arrival_search_local_var;
}


void request_time_map_arrival_search_free(request_time_map_arrival_search_t *request_time_map_arrival_search) {
    if(NULL == request_time_map_arrival_search){
        return ;
    }
    listEntry_t *listEntry;
    if (request_time_map_arrival_search->id) {
        free(request_time_map_arrival_search->id);
        request_time_map_arrival_search->id = NULL;
    }
    if (request_time_map_arrival_search->coords) {
        coords_free(request_time_map_arrival_search->coords);
        request_time_map_arrival_search->coords = NULL;
    }
    if (request_time_map_arrival_search->transportation) {
        request_transportation_free(request_time_map_arrival_search->transportation);
        request_time_map_arrival_search->transportation = NULL;
    }
    if (request_time_map_arrival_search->arrival_time) {
        free(request_time_map_arrival_search->arrival_time);
        request_time_map_arrival_search->arrival_time = NULL;
    }
    if (request_time_map_arrival_search->properties) {
        list_ForEach(listEntry, request_time_map_arrival_search->properties) {
            request_time_map_property_free(listEntry->data);
        }
        list_free(request_time_map_arrival_search->properties);
        request_time_map_arrival_search->properties = NULL;
    }
    if (request_time_map_arrival_search->range) {
        request_range_no_max_results_free(request_time_map_arrival_search->range);
        request_time_map_arrival_search->range = NULL;
    }
    free(request_time_map_arrival_search);
}

cJSON *request_time_map_arrival_search_convertToJSON(request_time_map_arrival_search_t *request_time_map_arrival_search) {
    cJSON *item = cJSON_CreateObject();

    // request_time_map_arrival_search->id
    if (!request_time_map_arrival_search->id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "id", request_time_map_arrival_search->id) == NULL) {
    goto fail; //String
    }


    // request_time_map_arrival_search->coords
    if (!request_time_map_arrival_search->coords) {
        goto fail;
    }
    
    cJSON *coords_local_JSON = coords_convertToJSON(request_time_map_arrival_search->coords);
    if(coords_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "coords", coords_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // request_time_map_arrival_search->transportation
    if (!request_time_map_arrival_search->transportation) {
        goto fail;
    }
    
    cJSON *transportation_local_JSON = request_transportation_convertToJSON(request_time_map_arrival_search->transportation);
    if(transportation_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "transportation", transportation_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // request_time_map_arrival_search->travel_time
    if (!request_time_map_arrival_search->travel_time) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "travel_time", request_time_map_arrival_search->travel_time) == NULL) {
    goto fail; //Numeric
    }


    // request_time_map_arrival_search->arrival_time
    if (!request_time_map_arrival_search->arrival_time) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "arrival_time", request_time_map_arrival_search->arrival_time) == NULL) {
    goto fail; //Date-Time
    }


    // request_time_map_arrival_search->properties
    
    cJSON *properties = cJSON_AddArrayToObject(item, "properties");
    if(properties == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *propertiesListEntry;
    if (request_time_map_arrival_search->properties) {
    list_ForEach(propertiesListEntry, request_time_map_arrival_search->properties) {
    cJSON *itemLocal = request_time_map_property_convertToJSON((traveltime_api_request_time_map_arrival_search__e)propertiesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(properties, itemLocal);
    }
    }
    


    // request_time_map_arrival_search->range
    if(request_time_map_arrival_search->range) { 
    cJSON *range_local_JSON = request_range_no_max_results_convertToJSON(request_time_map_arrival_search->range);
    if(range_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "range", range_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
     } 

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

request_time_map_arrival_search_t *request_time_map_arrival_search_parseFromJSON(cJSON *request_time_map_arrival_searchJSON){

    request_time_map_arrival_search_t *request_time_map_arrival_search_local_var = NULL;

    // request_time_map_arrival_search->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(request_time_map_arrival_searchJSON, "id");
    if (!id) {
        goto end;
    }

    
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }

    // request_time_map_arrival_search->coords
    cJSON *coords = cJSON_GetObjectItemCaseSensitive(request_time_map_arrival_searchJSON, "coords");
    if (!coords) {
        goto end;
    }

    coords_t *coords_local_nonprim = NULL;
    
    coords_local_nonprim = coords_parseFromJSON(coords); //nonprimitive

    // request_time_map_arrival_search->transportation
    cJSON *transportation = cJSON_GetObjectItemCaseSensitive(request_time_map_arrival_searchJSON, "transportation");
    if (!transportation) {
        goto end;
    }

    request_transportation_t *transportation_local_nonprim = NULL;
    
    transportation_local_nonprim = request_transportation_parseFromJSON(transportation); //nonprimitive

    // request_time_map_arrival_search->travel_time
    cJSON *travel_time = cJSON_GetObjectItemCaseSensitive(request_time_map_arrival_searchJSON, "travel_time");
    if (!travel_time) {
        goto end;
    }

    
    if(!cJSON_IsNumber(travel_time))
    {
    goto end; //Numeric
    }

    // request_time_map_arrival_search->arrival_time
    cJSON *arrival_time = cJSON_GetObjectItemCaseSensitive(request_time_map_arrival_searchJSON, "arrival_time");
    if (!arrival_time) {
        goto end;
    }

    
    if(!cJSON_IsString(arrival_time))
    {
    goto end; //DateTime
    }

    // request_time_map_arrival_search->properties
    cJSON *properties = cJSON_GetObjectItemCaseSensitive(request_time_map_arrival_searchJSON, "properties");
    list_t *propertiesList;
    if (properties) { 
    cJSON *properties_local_nonprimitive;
    if(!cJSON_IsArray(properties)){
        goto end; //nonprimitive container
    }

    propertiesList = list_create();

    cJSON_ArrayForEach(properties_local_nonprimitive,properties )
    {
        if(!cJSON_IsObject(properties_local_nonprimitive)){
            goto end;
        }
        request_time_map_arrival_search_request_time_map_property_e propertiesItem = request_time_map_property_parseFromJSON(properties_local_nonprimitive);

        list_addElement(propertiesList, (void *)propertiesItem);
    }
    }

    // request_time_map_arrival_search->range
    cJSON *range = cJSON_GetObjectItemCaseSensitive(request_time_map_arrival_searchJSON, "range");
    request_range_no_max_results_t *range_local_nonprim = NULL;
    if (range) { 
    range_local_nonprim = request_range_no_max_results_parseFromJSON(range); //nonprimitive
    }


    request_time_map_arrival_search_local_var = request_time_map_arrival_search_create (
        strdup(id->valuestring),
        coords_local_nonprim,
        transportation_local_nonprim,
        travel_time->valuedouble,
        strdup(arrival_time->valuestring),
        properties ? propertiesList : NULL,
        range ? range_local_nonprim : NULL
        );

    return request_time_map_arrival_search_local_var;
end:
    if (coords_local_nonprim) {
        coords_free(coords_local_nonprim);
        coords_local_nonprim = NULL;
    }
    if (transportation_local_nonprim) {
        request_transportation_free(transportation_local_nonprim);
        transportation_local_nonprim = NULL;
    }
    if (range_local_nonprim) {
        request_range_no_max_results_free(range_local_nonprim);
        range_local_nonprim = NULL;
    }
    return NULL;

}
