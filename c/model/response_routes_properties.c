#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_routes_properties.h"



response_routes_properties_t *response_routes_properties_create(
    int travel_time,
    int distance,
    response_fares_t *fares,
    response_route_t *route
    ) {
    response_routes_properties_t *response_routes_properties_local_var = malloc(sizeof(response_routes_properties_t));
    if (!response_routes_properties_local_var) {
        return NULL;
    }
    response_routes_properties_local_var->travel_time = travel_time;
    response_routes_properties_local_var->distance = distance;
    response_routes_properties_local_var->fares = fares;
    response_routes_properties_local_var->route = route;

    return response_routes_properties_local_var;
}


void response_routes_properties_free(response_routes_properties_t *response_routes_properties) {
    if(NULL == response_routes_properties){
        return ;
    }
    listEntry_t *listEntry;
    if (response_routes_properties->fares) {
        response_fares_free(response_routes_properties->fares);
        response_routes_properties->fares = NULL;
    }
    if (response_routes_properties->route) {
        response_route_free(response_routes_properties->route);
        response_routes_properties->route = NULL;
    }
    free(response_routes_properties);
}

cJSON *response_routes_properties_convertToJSON(response_routes_properties_t *response_routes_properties) {
    cJSON *item = cJSON_CreateObject();

    // response_routes_properties->travel_time
    if(response_routes_properties->travel_time) { 
    if(cJSON_AddNumberToObject(item, "travel_time", response_routes_properties->travel_time) == NULL) {
    goto fail; //Numeric
    }
     } 


    // response_routes_properties->distance
    if(response_routes_properties->distance) { 
    if(cJSON_AddNumberToObject(item, "distance", response_routes_properties->distance) == NULL) {
    goto fail; //Numeric
    }
     } 


    // response_routes_properties->fares
    if(response_routes_properties->fares) { 
    cJSON *fares_local_JSON = response_fares_convertToJSON(response_routes_properties->fares);
    if(fares_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "fares", fares_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
     } 


    // response_routes_properties->route
    if(response_routes_properties->route) { 
    cJSON *route_local_JSON = response_route_convertToJSON(response_routes_properties->route);
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

response_routes_properties_t *response_routes_properties_parseFromJSON(cJSON *response_routes_propertiesJSON){

    response_routes_properties_t *response_routes_properties_local_var = NULL;

    // response_routes_properties->travel_time
    cJSON *travel_time = cJSON_GetObjectItemCaseSensitive(response_routes_propertiesJSON, "travel_time");
    if (travel_time) { 
    if(!cJSON_IsNumber(travel_time))
    {
    goto end; //Numeric
    }
    }

    // response_routes_properties->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(response_routes_propertiesJSON, "distance");
    if (distance) { 
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }
    }

    // response_routes_properties->fares
    cJSON *fares = cJSON_GetObjectItemCaseSensitive(response_routes_propertiesJSON, "fares");
    response_fares_t *fares_local_nonprim = NULL;
    if (fares) { 
    fares_local_nonprim = response_fares_parseFromJSON(fares); //nonprimitive
    }

    // response_routes_properties->route
    cJSON *route = cJSON_GetObjectItemCaseSensitive(response_routes_propertiesJSON, "route");
    response_route_t *route_local_nonprim = NULL;
    if (route) { 
    route_local_nonprim = response_route_parseFromJSON(route); //nonprimitive
    }


    response_routes_properties_local_var = response_routes_properties_create (
        travel_time ? travel_time->valuedouble : 0,
        distance ? distance->valuedouble : 0,
        fares ? fares_local_nonprim : NULL,
        route ? route_local_nonprim : NULL
        );

    return response_routes_properties_local_var;
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
