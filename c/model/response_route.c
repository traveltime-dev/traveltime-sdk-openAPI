#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_route.h"



response_route_t *response_route_create(
    char *departure_time,
    char *arrival_time,
    list_t *parts
    ) {
    response_route_t *response_route_local_var = malloc(sizeof(response_route_t));
    if (!response_route_local_var) {
        return NULL;
    }
    response_route_local_var->departure_time = departure_time;
    response_route_local_var->arrival_time = arrival_time;
    response_route_local_var->parts = parts;

    return response_route_local_var;
}


void response_route_free(response_route_t *response_route) {
    if(NULL == response_route){
        return ;
    }
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
    if (!response_route->departure_time) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "departure_time", response_route->departure_time) == NULL) {
    goto fail; //Date-Time
    }


    // response_route->arrival_time
    if (!response_route->arrival_time) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "arrival_time", response_route->arrival_time) == NULL) {
    goto fail; //Date-Time
    }


    // response_route->parts
    if (!response_route->parts) {
        goto fail;
    }
    
    cJSON *parts = cJSON_AddArrayToObject(item, "parts");
    if(parts == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *partsListEntry;
    if (response_route->parts) {
    list_ForEach(partsListEntry, response_route->parts) {
    cJSON *itemLocal = response_route_part_convertToJSON(partsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(parts, itemLocal);
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_route_t *response_route_parseFromJSON(cJSON *response_routeJSON){

    response_route_t *response_route_local_var = NULL;

    // response_route->departure_time
    cJSON *departure_time = cJSON_GetObjectItemCaseSensitive(response_routeJSON, "departure_time");
    if (!departure_time) {
        goto end;
    }

    
    if(!cJSON_IsString(departure_time))
    {
    goto end; //DateTime
    }

    // response_route->arrival_time
    cJSON *arrival_time = cJSON_GetObjectItemCaseSensitive(response_routeJSON, "arrival_time");
    if (!arrival_time) {
        goto end;
    }

    
    if(!cJSON_IsString(arrival_time))
    {
    goto end; //DateTime
    }

    // response_route->parts
    cJSON *parts = cJSON_GetObjectItemCaseSensitive(response_routeJSON, "parts");
    if (!parts) {
        goto end;
    }

    list_t *partsList;
    
    cJSON *parts_local_nonprimitive;
    if(!cJSON_IsArray(parts)){
        goto end; //nonprimitive container
    }

    partsList = list_create();

    cJSON_ArrayForEach(parts_local_nonprimitive,parts )
    {
        if(!cJSON_IsObject(parts_local_nonprimitive)){
            goto end;
        }
        response_route_part_t *partsItem = response_route_part_parseFromJSON(parts_local_nonprimitive);

        list_addElement(partsList, partsItem);
    }


    response_route_local_var = response_route_create (
        strdup(departure_time->valuestring),
        strdup(arrival_time->valuestring),
        partsList
        );

    return response_route_local_var;
end:
    return NULL;

}
