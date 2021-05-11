#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_time_filter_fast.h"



request_time_filter_fast_t *request_time_filter_fast_create(
    list_t *locations,
    request_time_filter_fast_arrival_searches_t *arrival_searches
    ) {
    request_time_filter_fast_t *request_time_filter_fast_local_var = malloc(sizeof(request_time_filter_fast_t));
    if (!request_time_filter_fast_local_var) {
        return NULL;
    }
    request_time_filter_fast_local_var->locations = locations;
    request_time_filter_fast_local_var->arrival_searches = arrival_searches;

    return request_time_filter_fast_local_var;
}


void request_time_filter_fast_free(request_time_filter_fast_t *request_time_filter_fast) {
    if(NULL == request_time_filter_fast){
        return ;
    }
    listEntry_t *listEntry;
    if (request_time_filter_fast->locations) {
        list_ForEach(listEntry, request_time_filter_fast->locations) {
            request_location_free(listEntry->data);
        }
        list_free(request_time_filter_fast->locations);
        request_time_filter_fast->locations = NULL;
    }
    if (request_time_filter_fast->arrival_searches) {
        request_time_filter_fast_arrival_searches_free(request_time_filter_fast->arrival_searches);
        request_time_filter_fast->arrival_searches = NULL;
    }
    free(request_time_filter_fast);
}

cJSON *request_time_filter_fast_convertToJSON(request_time_filter_fast_t *request_time_filter_fast) {
    cJSON *item = cJSON_CreateObject();

    // request_time_filter_fast->locations
    if (!request_time_filter_fast->locations) {
        goto fail;
    }
    
    cJSON *locations = cJSON_AddArrayToObject(item, "locations");
    if(locations == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *locationsListEntry;
    if (request_time_filter_fast->locations) {
    list_ForEach(locationsListEntry, request_time_filter_fast->locations) {
    cJSON *itemLocal = request_location_convertToJSON(locationsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(locations, itemLocal);
    }
    }


    // request_time_filter_fast->arrival_searches
    if (!request_time_filter_fast->arrival_searches) {
        goto fail;
    }
    
    cJSON *arrival_searches_local_JSON = request_time_filter_fast_arrival_searches_convertToJSON(request_time_filter_fast->arrival_searches);
    if(arrival_searches_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "arrival_searches", arrival_searches_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

request_time_filter_fast_t *request_time_filter_fast_parseFromJSON(cJSON *request_time_filter_fastJSON){

    request_time_filter_fast_t *request_time_filter_fast_local_var = NULL;

    // request_time_filter_fast->locations
    cJSON *locations = cJSON_GetObjectItemCaseSensitive(request_time_filter_fastJSON, "locations");
    if (!locations) {
        goto end;
    }

    list_t *locationsList;
    
    cJSON *locations_local_nonprimitive;
    if(!cJSON_IsArray(locations)){
        goto end; //nonprimitive container
    }

    locationsList = list_create();

    cJSON_ArrayForEach(locations_local_nonprimitive,locations )
    {
        if(!cJSON_IsObject(locations_local_nonprimitive)){
            goto end;
        }
        request_location_t *locationsItem = request_location_parseFromJSON(locations_local_nonprimitive);

        list_addElement(locationsList, locationsItem);
    }

    // request_time_filter_fast->arrival_searches
    cJSON *arrival_searches = cJSON_GetObjectItemCaseSensitive(request_time_filter_fastJSON, "arrival_searches");
    if (!arrival_searches) {
        goto end;
    }

    request_time_filter_fast_arrival_searches_t *arrival_searches_local_nonprim = NULL;
    
    arrival_searches_local_nonprim = request_time_filter_fast_arrival_searches_parseFromJSON(arrival_searches); //nonprimitive


    request_time_filter_fast_local_var = request_time_filter_fast_create (
        locationsList,
        arrival_searches_local_nonprim
        );

    return request_time_filter_fast_local_var;
end:
    if (arrival_searches_local_nonprim) {
        request_time_filter_fast_arrival_searches_free(arrival_searches_local_nonprim);
        arrival_searches_local_nonprim = NULL;
    }
    return NULL;

}
