#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_time_filter_fast_properties.h"



response_time_filter_fast_properties_t *response_time_filter_fast_properties_create(
    int travel_time,
    response_fares_fast_t *fares
    ) {
    response_time_filter_fast_properties_t *response_time_filter_fast_properties_local_var = malloc(sizeof(response_time_filter_fast_properties_t));
    if (!response_time_filter_fast_properties_local_var) {
        return NULL;
    }
    response_time_filter_fast_properties_local_var->travel_time = travel_time;
    response_time_filter_fast_properties_local_var->fares = fares;

    return response_time_filter_fast_properties_local_var;
}


void response_time_filter_fast_properties_free(response_time_filter_fast_properties_t *response_time_filter_fast_properties) {
    if(NULL == response_time_filter_fast_properties){
        return ;
    }
    listEntry_t *listEntry;
    if (response_time_filter_fast_properties->fares) {
        response_fares_fast_free(response_time_filter_fast_properties->fares);
        response_time_filter_fast_properties->fares = NULL;
    }
    free(response_time_filter_fast_properties);
}

cJSON *response_time_filter_fast_properties_convertToJSON(response_time_filter_fast_properties_t *response_time_filter_fast_properties) {
    cJSON *item = cJSON_CreateObject();

    // response_time_filter_fast_properties->travel_time
    if(response_time_filter_fast_properties->travel_time) { 
    if(cJSON_AddNumberToObject(item, "travel_time", response_time_filter_fast_properties->travel_time) == NULL) {
    goto fail; //Numeric
    }
     } 


    // response_time_filter_fast_properties->fares
    if(response_time_filter_fast_properties->fares) { 
    cJSON *fares_local_JSON = response_fares_fast_convertToJSON(response_time_filter_fast_properties->fares);
    if(fares_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "fares", fares_local_JSON);
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

response_time_filter_fast_properties_t *response_time_filter_fast_properties_parseFromJSON(cJSON *response_time_filter_fast_propertiesJSON){

    response_time_filter_fast_properties_t *response_time_filter_fast_properties_local_var = NULL;

    // response_time_filter_fast_properties->travel_time
    cJSON *travel_time = cJSON_GetObjectItemCaseSensitive(response_time_filter_fast_propertiesJSON, "travel_time");
    if (travel_time) { 
    if(!cJSON_IsNumber(travel_time))
    {
    goto end; //Numeric
    }
    }

    // response_time_filter_fast_properties->fares
    cJSON *fares = cJSON_GetObjectItemCaseSensitive(response_time_filter_fast_propertiesJSON, "fares");
    response_fares_fast_t *fares_local_nonprim = NULL;
    if (fares) { 
    fares_local_nonprim = response_fares_fast_parseFromJSON(fares); //nonprimitive
    }


    response_time_filter_fast_properties_local_var = response_time_filter_fast_properties_create (
        travel_time ? travel_time->valuedouble : 0,
        fares ? fares_local_nonprim : NULL
        );

    return response_time_filter_fast_properties_local_var;
end:
    if (fares_local_nonprim) {
        response_fares_fast_free(fares_local_nonprim);
        fares_local_nonprim = NULL;
    }
    return NULL;

}
