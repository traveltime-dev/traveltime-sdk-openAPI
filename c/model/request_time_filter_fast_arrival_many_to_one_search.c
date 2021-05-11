#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_time_filter_fast_arrival_many_to_one_search.h"


char* arrival_time_periodrequest_time_filter_fast_arrival_many_to_one_search_ToString(traveltime_api_request_time_filter_fast_arrival_many_to_one_search__e arrival_time_period) {
    char* arrival_time_periodArray[] =  { "NULL", "weekday_morning" };
	return arrival_time_periodArray[arrival_time_period];
}

traveltime_api_request_time_filter_fast_arrival_many_to_one_search__e arrival_time_periodrequest_time_filter_fast_arrival_many_to_one_search_FromString(char* arrival_time_period){
    int stringToReturn = 0;
    char *arrival_time_periodArray[] =  { "NULL", "weekday_morning" };
    size_t sizeofArray = sizeof(arrival_time_periodArray) / sizeof(arrival_time_periodArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(arrival_time_period, arrival_time_periodArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* propertiesrequest_time_filter_fast_arrival_many_to_one_search_ToString(traveltime_api_request_time_filter_fast_arrival_many_to_one_search__e properties) {
	char *propertiesArray[] =  { "NULL", "travel_time", "fares" };
	return propertiesArray[properties - 1];
}

traveltime_api_request_time_filter_fast_arrival_many_to_one_search__e propertiesrequest_time_filter_fast_arrival_many_to_one_search_FromString(char* properties) {
    int stringToReturn = 0;
    char *propertiesArray[] =  { "NULL", "travel_time", "fares" };
    size_t sizeofArray = sizeof(propertiesArray) / sizeof(propertiesArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(properties, propertiesArray[stringToReturn]) == 0) {
            return stringToReturn + 1;
        }
        stringToReturn++;
    }
    return 0;
}

request_time_filter_fast_arrival_many_to_one_search_t *request_time_filter_fast_arrival_many_to_one_search_create(
    char *id,
    char *arrival_location_id,
    list_t *departure_location_ids,
    request_transportation_fast_t *transportation,
    int travel_time,
    list_t *properties
    ) {
    request_time_filter_fast_arrival_many_to_one_search_t *request_time_filter_fast_arrival_many_to_one_search_local_var = malloc(sizeof(request_time_filter_fast_arrival_many_to_one_search_t));
    if (!request_time_filter_fast_arrival_many_to_one_search_local_var) {
        return NULL;
    }
    request_time_filter_fast_arrival_many_to_one_search_local_var->id = id;
    request_time_filter_fast_arrival_many_to_one_search_local_var->arrival_location_id = arrival_location_id;
    request_time_filter_fast_arrival_many_to_one_search_local_var->departure_location_ids = departure_location_ids;
    request_time_filter_fast_arrival_many_to_one_search_local_var->transportation = transportation;
    request_time_filter_fast_arrival_many_to_one_search_local_var->travel_time = travel_time;
    request_time_filter_fast_arrival_many_to_one_search_local_var->arrival_time_period = arrival_time_period;
    request_time_filter_fast_arrival_many_to_one_search_local_var->properties = properties;

    return request_time_filter_fast_arrival_many_to_one_search_local_var;
}


void request_time_filter_fast_arrival_many_to_one_search_free(request_time_filter_fast_arrival_many_to_one_search_t *request_time_filter_fast_arrival_many_to_one_search) {
    if(NULL == request_time_filter_fast_arrival_many_to_one_search){
        return ;
    }
    listEntry_t *listEntry;
    if (request_time_filter_fast_arrival_many_to_one_search->id) {
        free(request_time_filter_fast_arrival_many_to_one_search->id);
        request_time_filter_fast_arrival_many_to_one_search->id = NULL;
    }
    if (request_time_filter_fast_arrival_many_to_one_search->arrival_location_id) {
        free(request_time_filter_fast_arrival_many_to_one_search->arrival_location_id);
        request_time_filter_fast_arrival_many_to_one_search->arrival_location_id = NULL;
    }
    if (request_time_filter_fast_arrival_many_to_one_search->departure_location_ids) {
        list_ForEach(listEntry, request_time_filter_fast_arrival_many_to_one_search->departure_location_ids) {
            free(listEntry->data);
        }
        list_free(request_time_filter_fast_arrival_many_to_one_search->departure_location_ids);
        request_time_filter_fast_arrival_many_to_one_search->departure_location_ids = NULL;
    }
    if (request_time_filter_fast_arrival_many_to_one_search->transportation) {
        request_transportation_fast_free(request_time_filter_fast_arrival_many_to_one_search->transportation);
        request_time_filter_fast_arrival_many_to_one_search->transportation = NULL;
    }
    if (request_time_filter_fast_arrival_many_to_one_search->properties) {
        list_ForEach(listEntry, request_time_filter_fast_arrival_many_to_one_search->properties) {
            request_time_filter_fast_property_free(listEntry->data);
        }
        list_free(request_time_filter_fast_arrival_many_to_one_search->properties);
        request_time_filter_fast_arrival_many_to_one_search->properties = NULL;
    }
    free(request_time_filter_fast_arrival_many_to_one_search);
}

cJSON *request_time_filter_fast_arrival_many_to_one_search_convertToJSON(request_time_filter_fast_arrival_many_to_one_search_t *request_time_filter_fast_arrival_many_to_one_search) {
    cJSON *item = cJSON_CreateObject();

    // request_time_filter_fast_arrival_many_to_one_search->id
    if (!request_time_filter_fast_arrival_many_to_one_search->id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "id", request_time_filter_fast_arrival_many_to_one_search->id) == NULL) {
    goto fail; //String
    }


    // request_time_filter_fast_arrival_many_to_one_search->arrival_location_id
    if (!request_time_filter_fast_arrival_many_to_one_search->arrival_location_id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "arrival_location_id", request_time_filter_fast_arrival_many_to_one_search->arrival_location_id) == NULL) {
    goto fail; //String
    }


    // request_time_filter_fast_arrival_many_to_one_search->departure_location_ids
    if (!request_time_filter_fast_arrival_many_to_one_search->departure_location_ids) {
        goto fail;
    }
    
    cJSON *departure_location_ids = cJSON_AddArrayToObject(item, "departure_location_ids");
    if(departure_location_ids == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *departure_location_idsListEntry;
    list_ForEach(departure_location_idsListEntry, request_time_filter_fast_arrival_many_to_one_search->departure_location_ids) {
    if(cJSON_AddStringToObject(departure_location_ids, "", (char*)departure_location_idsListEntry->data) == NULL)
    {
        goto fail;
    }
    }


    // request_time_filter_fast_arrival_many_to_one_search->transportation
    if (!request_time_filter_fast_arrival_many_to_one_search->transportation) {
        goto fail;
    }
    
    cJSON *transportation_local_JSON = request_transportation_fast_convertToJSON(request_time_filter_fast_arrival_many_to_one_search->transportation);
    if(transportation_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "transportation", transportation_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // request_time_filter_fast_arrival_many_to_one_search->travel_time
    if (!request_time_filter_fast_arrival_many_to_one_search->travel_time) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "travel_time", request_time_filter_fast_arrival_many_to_one_search->travel_time) == NULL) {
    goto fail; //Numeric
    }


    // request_time_filter_fast_arrival_many_to_one_search->arrival_time_period
    


    // request_time_filter_fast_arrival_many_to_one_search->properties
    
    cJSON *properties = cJSON_AddArrayToObject(item, "properties");
    if(properties == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *propertiesListEntry;
    if (request_time_filter_fast_arrival_many_to_one_search->properties) {
    list_ForEach(propertiesListEntry, request_time_filter_fast_arrival_many_to_one_search->properties) {
    cJSON *itemLocal = request_time_filter_fast_property_convertToJSON((traveltime_api_request_time_filter_fast_arrival_many_to_one_search__e)propertiesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(properties, itemLocal);
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

request_time_filter_fast_arrival_many_to_one_search_t *request_time_filter_fast_arrival_many_to_one_search_parseFromJSON(cJSON *request_time_filter_fast_arrival_many_to_one_searchJSON){

    request_time_filter_fast_arrival_many_to_one_search_t *request_time_filter_fast_arrival_many_to_one_search_local_var = NULL;

    // request_time_filter_fast_arrival_many_to_one_search->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(request_time_filter_fast_arrival_many_to_one_searchJSON, "id");
    if (!id) {
        goto end;
    }

    
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }

    // request_time_filter_fast_arrival_many_to_one_search->arrival_location_id
    cJSON *arrival_location_id = cJSON_GetObjectItemCaseSensitive(request_time_filter_fast_arrival_many_to_one_searchJSON, "arrival_location_id");
    if (!arrival_location_id) {
        goto end;
    }

    
    if(!cJSON_IsString(arrival_location_id))
    {
    goto end; //String
    }

    // request_time_filter_fast_arrival_many_to_one_search->departure_location_ids
    cJSON *departure_location_ids = cJSON_GetObjectItemCaseSensitive(request_time_filter_fast_arrival_many_to_one_searchJSON, "departure_location_ids");
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

    // request_time_filter_fast_arrival_many_to_one_search->transportation
    cJSON *transportation = cJSON_GetObjectItemCaseSensitive(request_time_filter_fast_arrival_many_to_one_searchJSON, "transportation");
    if (!transportation) {
        goto end;
    }

    request_transportation_fast_t *transportation_local_nonprim = NULL;
    
    transportation_local_nonprim = request_transportation_fast_parseFromJSON(transportation); //nonprimitive

    // request_time_filter_fast_arrival_many_to_one_search->travel_time
    cJSON *travel_time = cJSON_GetObjectItemCaseSensitive(request_time_filter_fast_arrival_many_to_one_searchJSON, "travel_time");
    if (!travel_time) {
        goto end;
    }

    
    if(!cJSON_IsNumber(travel_time))
    {
    goto end; //Numeric
    }

    // request_time_filter_fast_arrival_many_to_one_search->arrival_time_period
    cJSON *arrival_time_period = cJSON_GetObjectItemCaseSensitive(request_time_filter_fast_arrival_many_to_one_searchJSON, "arrival_time_period");
    if (!arrival_time_period) {
        goto end;
    }


    // request_time_filter_fast_arrival_many_to_one_search->properties
    cJSON *properties = cJSON_GetObjectItemCaseSensitive(request_time_filter_fast_arrival_many_to_one_searchJSON, "properties");
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
        request_time_filter_fast_arrival_many_to_one_search_request_time_filter_fast_property_e propertiesItem = request_time_filter_fast_property_parseFromJSON(properties_local_nonprimitive);

        list_addElement(propertiesList, (void *)propertiesItem);
    }


    request_time_filter_fast_arrival_many_to_one_search_local_var = request_time_filter_fast_arrival_many_to_one_search_create (
        strdup(id->valuestring),
        strdup(arrival_location_id->valuestring),
        departure_location_idsList,
        transportation_local_nonprim,
        travel_time->valuedouble,
        propertiesList
        );

    return request_time_filter_fast_arrival_many_to_one_search_local_var;
end:
    if (transportation_local_nonprim) {
        request_transportation_fast_free(transportation_local_nonprim);
        transportation_local_nonprim = NULL;
    }
    return NULL;

}
