#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_time_filter_properties.h"



response_time_filter_properties_t *response_time_filter_properties_create(
    int travel_time,
    int distance,
    list_t *distance_breakdown,
    response_fares_t *fares,
    response_route_t *route
    ) {
    response_time_filter_properties_t *response_time_filter_properties_local_var = malloc(sizeof(response_time_filter_properties_t));
    if (!response_time_filter_properties_local_var) {
        return NULL;
    }
    response_time_filter_properties_local_var->travel_time = travel_time;
    response_time_filter_properties_local_var->distance = distance;
    response_time_filter_properties_local_var->distance_breakdown = distance_breakdown;
    response_time_filter_properties_local_var->fares = fares;
    response_time_filter_properties_local_var->route = route;

    return response_time_filter_properties_local_var;
}


void response_time_filter_properties_free(response_time_filter_properties_t *response_time_filter_properties) {
    if(NULL == response_time_filter_properties){
        return ;
    }
    listEntry_t *listEntry;
    if (response_time_filter_properties->distance_breakdown) {
        list_ForEach(listEntry, response_time_filter_properties->distance_breakdown) {
            response_distance_breakdown_item_free(listEntry->data);
        }
        list_free(response_time_filter_properties->distance_breakdown);
        response_time_filter_properties->distance_breakdown = NULL;
    }
    if (response_time_filter_properties->fares) {
        response_fares_free(response_time_filter_properties->fares);
        response_time_filter_properties->fares = NULL;
    }
    if (response_time_filter_properties->route) {
        response_route_free(response_time_filter_properties->route);
        response_time_filter_properties->route = NULL;
    }
    free(response_time_filter_properties);
}

cJSON *response_time_filter_properties_convertToJSON(response_time_filter_properties_t *response_time_filter_properties) {
    cJSON *item = cJSON_CreateObject();

    // response_time_filter_properties->travel_time
    if(response_time_filter_properties->travel_time) { 
    if(cJSON_AddNumberToObject(item, "travel_time", response_time_filter_properties->travel_time) == NULL) {
    goto fail; //Numeric
    }
     } 


    // response_time_filter_properties->distance
    if(response_time_filter_properties->distance) { 
    if(cJSON_AddNumberToObject(item, "distance", response_time_filter_properties->distance) == NULL) {
    goto fail; //Numeric
    }
     } 


    // response_time_filter_properties->distance_breakdown
    if(response_time_filter_properties->distance_breakdown) { 
    cJSON *distance_breakdown = cJSON_AddArrayToObject(item, "distance_breakdown");
    if(distance_breakdown == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *distance_breakdownListEntry;
    if (response_time_filter_properties->distance_breakdown) {
    list_ForEach(distance_breakdownListEntry, response_time_filter_properties->distance_breakdown) {
    cJSON *itemLocal = response_distance_breakdown_item_convertToJSON(distance_breakdownListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(distance_breakdown, itemLocal);
    }
    }
     } 


    // response_time_filter_properties->fares
    if(response_time_filter_properties->fares) { 
    cJSON *fares_local_JSON = response_fares_convertToJSON(response_time_filter_properties->fares);
    if(fares_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "fares", fares_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
     } 


    // response_time_filter_properties->route
    if(response_time_filter_properties->route) { 
    cJSON *route_local_JSON = response_route_convertToJSON(response_time_filter_properties->route);
    if(route_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "route", route_local_JSON);
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

response_time_filter_properties_t *response_time_filter_properties_parseFromJSON(cJSON *response_time_filter_propertiesJSON){

    response_time_filter_properties_t *response_time_filter_properties_local_var = NULL;

    // response_time_filter_properties->travel_time
    cJSON *travel_time = cJSON_GetObjectItemCaseSensitive(response_time_filter_propertiesJSON, "travel_time");
    if (travel_time) { 
    if(!cJSON_IsNumber(travel_time))
    {
    goto end; //Numeric
    }
    }

    // response_time_filter_properties->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(response_time_filter_propertiesJSON, "distance");
    if (distance) { 
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }
    }

    // response_time_filter_properties->distance_breakdown
    cJSON *distance_breakdown = cJSON_GetObjectItemCaseSensitive(response_time_filter_propertiesJSON, "distance_breakdown");
    list_t *distance_breakdownList;
    if (distance_breakdown) { 
    cJSON *distance_breakdown_local_nonprimitive;
    if(!cJSON_IsArray(distance_breakdown)){
        goto end; //nonprimitive container
    }

    distance_breakdownList = list_create();

    cJSON_ArrayForEach(distance_breakdown_local_nonprimitive,distance_breakdown )
    {
        if(!cJSON_IsObject(distance_breakdown_local_nonprimitive)){
            goto end;
        }
        response_distance_breakdown_item_t *distance_breakdownItem = response_distance_breakdown_item_parseFromJSON(distance_breakdown_local_nonprimitive);

        list_addElement(distance_breakdownList, distance_breakdownItem);
    }
    }

    // response_time_filter_properties->fares
    cJSON *fares = cJSON_GetObjectItemCaseSensitive(response_time_filter_propertiesJSON, "fares");
    response_fares_t *fares_local_nonprim = NULL;
    if (fares) { 
    fares_local_nonprim = response_fares_parseFromJSON(fares); //nonprimitive
    }

    // response_time_filter_properties->route
    cJSON *route = cJSON_GetObjectItemCaseSensitive(response_time_filter_propertiesJSON, "route");
    response_route_t *route_local_nonprim = NULL;
    if (route) { 
    route_local_nonprim = response_route_parseFromJSON(route); //nonprimitive
    }


    response_time_filter_properties_local_var = response_time_filter_properties_create (
        travel_time ? travel_time->valuedouble : 0,
        distance ? distance->valuedouble : 0,
        distance_breakdown ? distance_breakdownList : NULL,
        fares ? fares_local_nonprim : NULL,
        route ? route_local_nonprim : NULL
        );

    return response_time_filter_properties_local_var;
end:
    if (fares_local_nonprim) {
        response_fares_free(fares_local_nonprim);
        fares_local_nonprim = NULL;
    }
    if (route_local_nonprim) {
        response_route_free(route_local_nonprim);
        route_local_nonprim = NULL;
    }
    return NULL;

}
