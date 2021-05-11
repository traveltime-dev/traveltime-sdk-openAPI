#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_time_filter_postcode_sector_properties.h"



response_time_filter_postcode_sector_properties_t *response_time_filter_postcode_sector_properties_create(
    response_travel_time_statistics_t *travel_time_reachable,
    response_travel_time_statistics_t *travel_time_all,
    double coverage
    ) {
    response_time_filter_postcode_sector_properties_t *response_time_filter_postcode_sector_properties_local_var = malloc(sizeof(response_time_filter_postcode_sector_properties_t));
    if (!response_time_filter_postcode_sector_properties_local_var) {
        return NULL;
    }
    response_time_filter_postcode_sector_properties_local_var->travel_time_reachable = travel_time_reachable;
    response_time_filter_postcode_sector_properties_local_var->travel_time_all = travel_time_all;
    response_time_filter_postcode_sector_properties_local_var->coverage = coverage;

    return response_time_filter_postcode_sector_properties_local_var;
}


void response_time_filter_postcode_sector_properties_free(response_time_filter_postcode_sector_properties_t *response_time_filter_postcode_sector_properties) {
    if(NULL == response_time_filter_postcode_sector_properties){
        return ;
    }
    listEntry_t *listEntry;
    if (response_time_filter_postcode_sector_properties->travel_time_reachable) {
        response_travel_time_statistics_free(response_time_filter_postcode_sector_properties->travel_time_reachable);
        response_time_filter_postcode_sector_properties->travel_time_reachable = NULL;
    }
    if (response_time_filter_postcode_sector_properties->travel_time_all) {
        response_travel_time_statistics_free(response_time_filter_postcode_sector_properties->travel_time_all);
        response_time_filter_postcode_sector_properties->travel_time_all = NULL;
    }
    free(response_time_filter_postcode_sector_properties);
}

cJSON *response_time_filter_postcode_sector_properties_convertToJSON(response_time_filter_postcode_sector_properties_t *response_time_filter_postcode_sector_properties) {
    cJSON *item = cJSON_CreateObject();

    // response_time_filter_postcode_sector_properties->travel_time_reachable
    if(response_time_filter_postcode_sector_properties->travel_time_reachable) { 
    cJSON *travel_time_reachable_local_JSON = response_travel_time_statistics_convertToJSON(response_time_filter_postcode_sector_properties->travel_time_reachable);
    if(travel_time_reachable_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "travel_time_reachable", travel_time_reachable_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
     } 


    // response_time_filter_postcode_sector_properties->travel_time_all
    if(response_time_filter_postcode_sector_properties->travel_time_all) { 
    cJSON *travel_time_all_local_JSON = response_travel_time_statistics_convertToJSON(response_time_filter_postcode_sector_properties->travel_time_all);
    if(travel_time_all_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "travel_time_all", travel_time_all_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
     } 


    // response_time_filter_postcode_sector_properties->coverage
    if(response_time_filter_postcode_sector_properties->coverage) { 
    if(cJSON_AddNumberToObject(item, "coverage", response_time_filter_postcode_sector_properties->coverage) == NULL) {
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

response_time_filter_postcode_sector_properties_t *response_time_filter_postcode_sector_properties_parseFromJSON(cJSON *response_time_filter_postcode_sector_propertiesJSON){

    response_time_filter_postcode_sector_properties_t *response_time_filter_postcode_sector_properties_local_var = NULL;

    // response_time_filter_postcode_sector_properties->travel_time_reachable
    cJSON *travel_time_reachable = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_sector_propertiesJSON, "travel_time_reachable");
    response_travel_time_statistics_t *travel_time_reachable_local_nonprim = NULL;
    if (travel_time_reachable) { 
    travel_time_reachable_local_nonprim = response_travel_time_statistics_parseFromJSON(travel_time_reachable); //nonprimitive
    }

    // response_time_filter_postcode_sector_properties->travel_time_all
    cJSON *travel_time_all = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_sector_propertiesJSON, "travel_time_all");
    response_travel_time_statistics_t *travel_time_all_local_nonprim = NULL;
    if (travel_time_all) { 
    travel_time_all_local_nonprim = response_travel_time_statistics_parseFromJSON(travel_time_all); //nonprimitive
    }

    // response_time_filter_postcode_sector_properties->coverage
    cJSON *coverage = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_sector_propertiesJSON, "coverage");
    if (coverage) { 
    if(!cJSON_IsNumber(coverage))
    {
    goto end; //Numeric
    }
    }


    response_time_filter_postcode_sector_properties_local_var = response_time_filter_postcode_sector_properties_create (
        travel_time_reachable ? travel_time_reachable_local_nonprim : NULL,
        travel_time_all ? travel_time_all_local_nonprim : NULL,
        coverage ? coverage->valuedouble : 0
        );

    return response_time_filter_postcode_sector_properties_local_var;
end:
    if (travel_time_reachable_local_nonprim) {
        response_travel_time_statistics_free(travel_time_reachable_local_nonprim);
        travel_time_reachable_local_nonprim = NULL;
    }
    if (travel_time_all_local_nonprim) {
        response_travel_time_statistics_free(travel_time_all_local_nonprim);
        travel_time_all_local_nonprim = NULL;
    }
    return NULL;

}
