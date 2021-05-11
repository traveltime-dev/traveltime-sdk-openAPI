#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_routes_arrival_search.h"


char* propertiesrequest_routes_arrival_search_ToString(traveltime_api_request_routes_arrival_search__e properties) {
	char *propertiesArray[] =  { "NULL", "travel_time", "distance", "fares", "route" };
	return propertiesArray[properties - 1];
}

traveltime_api_request_routes_arrival_search__e propertiesrequest_routes_arrival_search_FromString(char* properties) {
    int stringToReturn = 0;
    char *propertiesArray[] =  { "NULL", "travel_time", "distance", "fares", "route" };
    size_t sizeofArray = sizeof(propertiesArray) / sizeof(propertiesArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(properties, propertiesArray[stringToReturn]) == 0) {
            return stringToReturn + 1;
        }
        stringToReturn++;
    }
    return 0;
}

request_routes_arrival_search_t *request_routes_arrival_search_create(
    char *id,
    list_t *departure_location_ids,
    char *arrival_location_id,
    request_transportation_t *transportation,
    char *arrival_time,
    list_t *properties,
    request_range_full_t *range
    ) {
    request_routes_arrival_search_t *request_routes_arrival_search_local_var = malloc(sizeof(request_routes_arrival_search_t));
    if (!request_routes_arrival_search_local_var) {
        return NULL;
    }
    request_routes_arrival_search_local_var->id = id;
    request_routes_arrival_search_local_var->departure_location_ids = departure_location_ids;
    request_routes_arrival_search_local_var->arrival_location_id = arrival_location_id;
    request_routes_arrival_search_local_var->transportation = transportation;
    request_routes_arrival_search_local_var->arrival_time = arrival_time;
    request_routes_arrival_search_local_var->properties = properties;
    request_routes_arrival_search_local_var->range = range;

    return request_routes_arrival_search_local_var;
}


void request_routes_arrival_search_free(request_routes_arrival_search_t *request_routes_arrival_search) {
    if(NULL == request_routes_arrival_search){
        return ;
    }
    listEntry_t *listEntry;
    if (request_routes_arrival_search->id) {
        free(request_routes_arrival_search->id);
        request_routes_arrival_search->id = NULL;
    }
    if (request_routes_arrival_search->departure_location_ids) {
        list_ForEach(listEntry, request_routes_arrival_search->departure_location_ids) {
            free(listEntry->data);
        }
        list_free(request_routes_arrival_search->departure_location_ids);
        request_routes_arrival_search->departure_location_ids = NULL;
    }
    if (request_routes_arrival_search->arrival_location_id) {
        free(request_routes_arrival_search->arrival_location_id);
        request_routes_arrival_search->arrival_location_id = NULL;
    }
    if (request_routes_arrival_search->transportation) {
        request_transportation_free(request_routes_arrival_search->transportation);
        request_routes_arrival_search->transportation = NULL;
    }
    if (request_routes_arrival_search->arrival_time) {
        free(request_routes_arrival_search->arrival_time);
        request_routes_arrival_search->arrival_time = NULL;
    }
    if (request_routes_arrival_search->properties) {
        list_ForEach(listEntry, request_routes_arrival_search->properties) {
            request_routes_property_free(listEntry->data);
        }
        list_free(request_routes_arrival_search->properties);
        request_routes_arrival_search->properties = NULL;
    }
    if (request_routes_arrival_search->range) {
        request_range_full_free(request_routes_arrival_search->range);
        request_routes_arrival_search->range = NULL;
    }
    free(request_routes_arrival_search);
}

cJSON *request_routes_arrival_search_convertToJSON(request_routes_arrival_search_t *request_routes_arrival_search) {
    cJSON *item = cJSON_CreateObject();

    // request_routes_arrival_search->id
    if (!request_routes_arrival_search->id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "id", request_routes_arrival_search->id) == NULL) {
    goto fail; //String
    }


    // request_routes_arrival_search->departure_location_ids
    if (!request_routes_arrival_search->departure_location_ids) {
        goto fail;
    }
    
    cJSON *departure_location_ids = cJSON_AddArrayToObject(item, "departure_location_ids");
    if(departure_location_ids == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *departure_location_idsListEntry;
    list_ForEach(departure_location_idsListEntry, request_routes_arrival_search->departure_location_ids) {
    if(cJSON_AddStringToObject(departure_location_ids, "", (char*)departure_location_idsListEntry->data) == NULL)
    {
        goto fail;
    }
    }


    // request_routes_arrival_search->arrival_location_id
    if (!request_routes_arrival_search->arrival_location_id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "arrival_location_id", request_routes_arrival_search->arrival_location_id) == NULL) {
    goto fail; //String
    }


    // request_routes_arrival_search->transportation
    if (!request_routes_arrival_search->transportation) {
        goto fail;
    }
    
    cJSON *transportation_local_JSON = request_transportation_convertToJSON(request_routes_arrival_search->transportation);
    if(transportation_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "transportation", transportation_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // request_routes_arrival_search->arrival_time
    if (!request_routes_arrival_search->arrival_time) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "arrival_time", request_routes_arrival_search->arrival_time) == NULL) {
    goto fail; //Date-Time
    }


    // request_routes_arrival_search->properties
    
    cJSON *properties = cJSON_AddArrayToObject(item, "properties");
    if(properties == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *propertiesListEntry;
    if (request_routes_arrival_search->properties) {
    list_ForEach(propertiesListEntry, request_routes_arrival_search->properties) {
    cJSON *itemLocal = request_routes_property_convertToJSON((traveltime_api_request_routes_arrival_search__e)propertiesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(properties, itemLocal);
    }
    }


    // request_routes_arrival_search->range
    if(request_routes_arrival_search->range) { 
    cJSON *range_local_JSON = request_range_full_convertToJSON(request_routes_arrival_search->range);
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

request_routes_arrival_search_t *request_routes_arrival_search_parseFromJSON(cJSON *request_routes_arrival_searchJSON){

    request_routes_arrival_search_t *request_routes_arrival_search_local_var = NULL;

    // request_routes_arrival_search->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(request_routes_arrival_searchJSON, "id");
    if (!id) {
        goto end;
    }

    
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }

    // request_routes_arrival_search->departure_location_ids
    cJSON *departure_location_ids = cJSON_GetObjectItemCaseSensitive(request_routes_arrival_searchJSON, "departure_location_ids");
    if (!departure_location_ids) {
        goto end;
    }

    list_t *departure_location_idsList;
    
    cJSON *departure_location_ids_local;
    if(!cJSON_IsArray(departure_location_ids)) {
        goto end;//primitive container
    }
    departure_location_idsList = list_create();

    cJSON_ArrayForEach(departure_location_ids_local, departure_location_ids)
    {
        if(!cJSON_IsString(departure_location_ids_local))
        {
            goto end;
        }
        list_addElement(departure_location_idsList , strdup(departure_location_ids_local->valuestring));
    }

    // request_routes_arrival_search->arrival_location_id
    cJSON *arrival_location_id = cJSON_GetObjectItemCaseSensitive(request_routes_arrival_searchJSON, "arrival_location_id");
    if (!arrival_location_id) {
        goto end;
    }

    
    if(!cJSON_IsString(arrival_location_id))
    {
    goto end; //String
    }

    // request_routes_arrival_search->transportation
    cJSON *transportation = cJSON_GetObjectItemCaseSensitive(request_routes_arrival_searchJSON, "transportation");
    if (!transportation) {
        goto end;
    }

    request_transportation_t *transportation_local_nonprim = NULL;
    
    transportation_local_nonprim = request_transportation_parseFromJSON(transportation); //nonprimitive

    // request_routes_arrival_search->arrival_time
    cJSON *arrival_time = cJSON_GetObjectItemCaseSensitive(request_routes_arrival_searchJSON, "arrival_time");
    if (!arrival_time) {
        goto end;
    }

    
    if(!cJSON_IsString(arrival_time))
    {
    goto end; //DateTime
    }

    // request_routes_arrival_search->properties
    cJSON *properties = cJSON_GetObjectItemCaseSensitive(request_routes_arrival_searchJSON, "properties");
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
        request_routes_arrival_search_request_routes_property_e propertiesItem = request_routes_property_parseFromJSON(properties_local_nonprimitive);

        list_addElement(propertiesList, (void *)propertiesItem);
    }

    // request_routes_arrival_search->range
    cJSON *range = cJSON_GetObjectItemCaseSensitive(request_routes_arrival_searchJSON, "range");
    request_range_full_t *range_local_nonprim = NULL;
    if (range) { 
    range_local_nonprim = request_range_full_parseFromJSON(range); //nonprimitive
    }


    request_routes_arrival_search_local_var = request_routes_arrival_search_create (
        strdup(id->valuestring),
        departure_location_idsList,
        strdup(arrival_location_id->valuestring),
        transportation_local_nonprim,
        strdup(arrival_time->valuestring),
        propertiesList,
        range ? range_local_nonprim : NULL
        );

    return request_routes_arrival_search_local_var;
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
