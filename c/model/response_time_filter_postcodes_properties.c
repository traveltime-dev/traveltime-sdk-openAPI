#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_time_filter_postcodes_properties.h"



response_time_filter_postcodes_properties_t *response_time_filter_postcodes_properties_create(
    int travel_time,
    int distance
    ) {
    response_time_filter_postcodes_properties_t *response_time_filter_postcodes_properties_local_var = malloc(sizeof(response_time_filter_postcodes_properties_t));
    if (!response_time_filter_postcodes_properties_local_var) {
        return NULL;
    }
    response_time_filter_postcodes_properties_local_var->travel_time = travel_time;
    response_time_filter_postcodes_properties_local_var->distance = distance;

    return response_time_filter_postcodes_properties_local_var;
}


void response_time_filter_postcodes_properties_free(response_time_filter_postcodes_properties_t *response_time_filter_postcodes_properties) {
    if(NULL == response_time_filter_postcodes_properties){
        return ;
    }
    listEntry_t *listEntry;
    free(response_time_filter_postcodes_properties);
}

cJSON *response_time_filter_postcodes_properties_convertToJSON(response_time_filter_postcodes_properties_t *response_time_filter_postcodes_properties) {
    cJSON *item = cJSON_CreateObject();

    // response_time_filter_postcodes_properties->travel_time
    if(response_time_filter_postcodes_properties->travel_time) { 
    if(cJSON_AddNumberToObject(item, "travel_time", response_time_filter_postcodes_properties->travel_time) == NULL) {
    goto fail; //Numeric
    }
     } 


    // response_time_filter_postcodes_properties->distance
    if(response_time_filter_postcodes_properties->distance) { 
    if(cJSON_AddNumberToObject(item, "distance", response_time_filter_postcodes_properties->distance) == NULL) {
    goto fail; //Numeric
    }
     } 

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_time_filter_postcodes_properties_t *response_time_filter_postcodes_properties_parseFromJSON(cJSON *response_time_filter_postcodes_propertiesJSON){

    response_time_filter_postcodes_properties_t *response_time_filter_postcodes_properties_local_var = NULL;

    // response_time_filter_postcodes_properties->travel_time
    cJSON *travel_time = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcodes_propertiesJSON, "travel_time");
    if (travel_time) { 
    if(!cJSON_IsNumber(travel_time))
    {
    goto end; //Numeric
    }
    }

    // response_time_filter_postcodes_properties->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcodes_propertiesJSON, "distance");
    if (distance) { 
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }
    }


    response_time_filter_postcodes_properties_local_var = response_time_filter_postcodes_properties_create (
        travel_time ? travel_time->valuedouble : 0,
        distance ? distance->valuedouble : 0
        );

    return response_time_filter_postcodes_properties_local_var;
end:
    return NULL;

}
