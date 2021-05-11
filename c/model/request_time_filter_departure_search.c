#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_time_filter_departure_search.h"


char* propertiesrequest_time_filter_departure_search_ToString(traveltime_api_request_time_filter_departure_search__e properties) {
	char *propertiesArray[] =  { "NULL", "travel_time", "distance", "distance_breakdown", "fares", "route" };
	return propertiesArray[properties - 1];
}

traveltime_api_request_time_filter_departure_search__e propertiesrequest_time_filter_departure_search_FromString(char* properties) {
    int stringToReturn = 0;
    char *propertiesArray[] =  { "NULL", "travel_time", "distance", "distance_breakdown", "fares", "route" };
    size_t sizeofArray = sizeof(propertiesArray) / sizeof(propertiesArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(properties, propertiesArray[stringToReturn]) == 0) {
            return stringToReturn + 1;
        }
        stringToReturn++;
    }
    return 0;
}

request_time_filter_departure_search_t *request_time_filter_departure_search_create(
    char *id,
    char *departure_location_id,
    list_t *arrival_location_ids,
    request_transportation_t *transportation,
    int travel_time,
    char *departure_time,
    list_t *properties,
    request_range_full_t *range
    ) {
    request_time_filter_departure_search_t *request_time_filter_departure_search_local_var = malloc(sizeof(request_time_filter_departure_search_t));
    if (!request_time_filter_departure_search_local_var) {
        return NULL;
    }
    request_time_filter_departure_search_local_var->id = id;
    request_time_filter_departure_search_local_var->departure_location_id = departure_location_id;
    request_time_filter_departure_search_local_var->arrival_location_ids = arrival_location_ids;
    request_time_filter_departure_search_local_var->transportation = transportation;
    request_time_filter_departure_search_local_var->travel_time = travel_time;
    request_time_filter_departure_search_local_var->departure_time = departure_time;
    request_time_filter_departure_search_local_var->properties = properties;
    request_time_filter_departure_search_local_var->range = range;

    return request_time_filter_departure_search_local_var;
}


void request_time_filter_departure_search_free(request_time_filter_departure_search_t *request_time_filter_departure_search) {
    if(NULL == request_time_filter_departure_search){
        return ;
    }
    listEntry_t *listEntry;
    if (request_time_filter_departure_search->id) {
        free(request_time_filter_departure_search->id);
        request_time_filter_departure_search->id = NULL;
    }
    if (request_time_filter_departure_search->departure_location_id) {
        free(request_time_filter_departure_search->departure_location_id);
        request_time_filter_departure_search->departure_location_id = NULL;
    }
    if (request_time_filter_departure_search->arrival_location_ids) {
        list_ForEach(listEntry, request_time_filter_departure_search->arrival_location_ids) {
            free(listEntry->data);
        }
        list_free(request_time_filter_departure_search->arrival_location_ids);
        request_time_filter_departure_search->arrival_location_ids = NULL;
    }
    if (request_time_filter_departure_search->transportation) {
        request_transportation_free(request_time_filter_departure_search->transportation);
        request_time_filter_departure_search->transportation = NULL;
    }
    if (request_time_filter_departure_search->departure_time) {
        free(request_time_filter_departure_search->departure_time);
        request_time_filter_departure_search->departure_time = NULL;
    }
    if (request_time_filter_departure_search->properties) {
        list_ForEach(listEntry, request_time_filter_departure_search->properties) {
            request_time_filter_property_free(listEntry->data);
        }
        list_free(request_time_filter_departure_search->properties);
        request_time_filter_departure_search->properties = NULL;
    }
    if (request_time_filter_departure_search->range) {
        request_range_full_free(request_time_filter_departure_search->range);
        request_time_filter_departure_search->range = NULL;
    }
    free(request_time_filter_departure_search);
}

cJSON *request_time_filter_departure_search_convertToJSON(request_time_filter_departure_search_t *request_time_filter_departure_search) {
    cJSON *item = cJSON_CreateObject();

    // request_time_filter_departure_search->id
    if (!request_time_filter_departure_search->id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "id", request_time_filter_departure_search->id) == NULL) {
    goto fail; //String
    }


    // request_time_filter_departure_search->departure_location_id
    if (!request_time_filter_departure_search->departure_location_id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "departure_location_id", request_time_filter_departure_search->departure_location_id) == NULL) {
    goto fail; //String
    }


    // request_time_filter_departure_search->arrival_location_ids
    if (!request_time_filter_departure_search->arrival_location_ids) {
        goto fail;
    }
    
    cJSON *arrival_location_ids = cJSON_AddArrayToObject(item, "arrival_location_ids");
    if(arrival_location_ids == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *arrival_location_idsListEntry;
    list_ForEach(arrival_location_idsListEntry, request_time_filter_departure_search->arrival_location_ids) {
    if(cJSON_AddStringToObject(arrival_location_ids, "", (char*)arrival_location_idsListEntry->data) == NULL)
    {
        goto fail;
    }
    }


    // request_time_filter_departure_search->transportation
    if (!request_time_filter_departure_search->transportation) {
        goto fail;
    }
    
    cJSON *transportation_local_JSON = request_transportation_convertToJSON(request_time_filter_departure_search->transportation);
    if(transportation_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "transportation", transportation_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // request_time_filter_departure_search->travel_time
    if (!request_time_filter_departure_search->travel_time) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "travel_time", request_time_filter_departure_search->travel_time) == NULL) {
    goto fail; //Numeric
    }


    // request_time_filter_departure_search->departure_time
    if (!request_time_filter_departure_search->departure_time) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "departure_time", request_time_filter_departure_search->departure_time) == NULL) {
    goto fail; //Date-Time
    }


    // request_time_filter_departure_search->properties
    
    cJSON *properties = cJSON_AddArrayToObject(item, "properties");
    if(properties == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *propertiesListEntry;
    if (request_time_filter_departure_search->properties) {
    list_ForEach(propertiesListEntry, request_time_filter_departure_search->properties) {
    cJSON *itemLocal = request_time_filter_property_convertToJSON((traveltime_api_request_time_filter_departure_search__e)propertiesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(properties, itemLocal);
    }
    }


    // request_time_filter_departure_search->range
    if(request_time_filter_departure_search->range) { 
    cJSON *range_local_JSON = request_range_full_convertToJSON(request_time_filter_departure_search->range);
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

request_time_filter_departure_search_t *request_time_filter_departure_search_parseFromJSON(cJSON *request_time_filter_departure_searchJSON){

    request_time_filter_departure_search_t *request_time_filter_departure_search_local_var = NULL;

    // request_time_filter_departure_search->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(request_time_filter_departure_searchJSON, "id");
    if (!id) {
        goto end;
    }

    
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }

    // request_time_filter_departure_search->departure_location_id
    cJSON *departure_location_id = cJSON_GetObjectItemCaseSensitive(request_time_filter_departure_searchJSON, "departure_location_id");
    if (!departure_location_id) {
        goto end;
    }

    
    if(!cJSON_IsString(departure_location_id))
    {
    goto end; //String
    }

    // request_time_filter_departure_search->arrival_location_ids
    cJSON *arrival_location_ids = cJSON_GetObjectItemCaseSensitive(request_time_filter_departure_searchJSON, "arrival_location_ids");
    if (!arrival_location_ids) {
        goto end;
    }

    list_t *arrival_location_idsList;
    
    cJSON *arrival_location_ids_local;
    if(!cJSON_IsArray(arrival_location_ids)) {
        goto end;//primitive container
    }
    arrival_location_idsList = list_create();

    cJSON_ArrayForEach(arrival_location_ids_local, arrival_location_ids)
    {
        if(!cJSON_IsString(arrival_location_ids_local))
        {
            goto end;
        }
        list_addElement(arrival_location_idsList , strdup(arrival_location_ids_local->valuestring));
    }

    // request_time_filter_departure_search->transportation
    cJSON *transportation = cJSON_GetObjectItemCaseSensitive(request_time_filter_departure_searchJSON, "transportation");
    if (!transportation) {
        goto end;
    }

    request_transportation_t *transportation_local_nonprim = NULL;
    
    transportation_local_nonprim = request_transportation_parseFromJSON(transportation); //nonprimitive

    // request_time_filter_departure_search->travel_time
    cJSON *travel_time = cJSON_GetObjectItemCaseSensitive(request_time_filter_departure_searchJSON, "travel_time");
    if (!travel_time) {
        goto end;
    }

    
    if(!cJSON_IsNumber(travel_time))
    {
    goto end; //Numeric
    }

    // request_time_filter_departure_search->departure_time
    cJSON *departure_time = cJSON_GetObjectItemCaseSensitive(request_time_filter_departure_searchJSON, "departure_time");
    if (!departure_time) {
        goto end;
    }

    
    if(!cJSON_IsString(departure_time))
    {
    goto end; //DateTime
    }

    // request_time_filter_departure_search->properties
    cJSON *properties = cJSON_GetObjectItemCaseSensitive(request_time_filter_departure_searchJSON, "properties");
    if (!properties) {
        goto end;
    }

    list_t *propertiesList;
    
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
        request_time_filter_departure_search_request_time_filter_property_e propertiesItem = request_time_filter_property_parseFromJSON(properties_local_nonprimitive);

        list_addElement(propertiesList, (void *)propertiesItem);
    }

    // request_time_filter_departure_search->range
    cJSON *range = cJSON_GetObjectItemCaseSensitive(request_time_filter_departure_searchJSON, "range");
    request_range_full_t *range_local_nonprim = NULL;
    if (range) { 
    range_local_nonprim = request_range_full_parseFromJSON(range); //nonprimitive
    }


    request_time_filter_departure_search_local_var = request_time_filter_departure_search_create (
        strdup(id->valuestring),
        strdup(departure_location_id->valuestring),
        arrival_location_idsList,
        transportation_local_nonprim,
        travel_time->valuedouble,
        strdup(departure_time->valuestring),
        propertiesList,
        range ? range_local_nonprim : NULL
        );

    return request_time_filter_departure_search_local_var;
end:
    if (transportation_local_nonprim) {
        request_transportation_free(transportation_local_nonprim);
        transportation_local_nonprim = NULL;
    }
    if (range_local_nonprim) {
        request_range_full_free(range_local_nonprim);
        range_local_nonprim = NULL;
    }
    return NULL;

}
