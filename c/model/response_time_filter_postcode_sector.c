#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_time_filter_postcode_sector.h"



response_time_filter_postcode_sector_t *response_time_filter_postcode_sector_create(
    response_time_filter_postcode_sector_properties_t *properties
    ) {
    response_time_filter_postcode_sector_t *response_time_filter_postcode_sector_local_var = malloc(sizeof(response_time_filter_postcode_sector_t));
    if (!response_time_filter_postcode_sector_local_var) {
        return NULL;
    }
    response_time_filter_postcode_sector_local_var->code = code;
    response_time_filter_postcode_sector_local_var->properties = properties;

    return response_time_filter_postcode_sector_local_var;
}


void response_time_filter_postcode_sector_free(response_time_filter_postcode_sector_t *response_time_filter_postcode_sector) {
    listEntry_t *listEntry;
    response_time_filter_postcode_sector_properties_free(response_time_filter_postcode_sector->properties);
    free(response_time_filter_postcode_sector);
}

cJSON *response_time_filter_postcode_sector_convertToJSON(response_time_filter_postcode_sector_t *response_time_filter_postcode_sector) {
    cJSON *item = cJSON_CreateObject();

    // response_time_filter_postcode_sector->code
    if (!response_time_filter_postcode_sector->code) {
        goto fail;
    }
    


    // response_time_filter_postcode_sector->properties
    if (!response_time_filter_postcode_sector->properties) {
        goto fail;
    }
    
    cJSON *properties_local_JSON = response_time_filter_postcode_sector_properties_convertToJSON(response_time_filter_postcode_sector->properties);
    if(properties_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "properties", properties_local_JSON);
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

response_time_filter_postcode_sector_t *response_time_filter_postcode_sector_parseFromJSON(cJSON *response_time_filter_postcode_sectorJSON){

    response_time_filter_postcode_sector_t *response_time_filter_postcode_sector_local_var = NULL;

    // response_time_filter_postcode_sector->code
    cJSON *code = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_sectorJSON, "code");
    if (!code) {
        goto end;
    }


    // response_time_filter_postcode_sector->properties
    cJSON *properties = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_sectorJSON, "properties");
    if (!properties) {
        goto end;
    }

    response_time_filter_postcode_sector_properties_t *properties_local_nonprim = NULL;
    
    properties_local_nonprim = response_time_filter_postcode_sector_properties_parseFromJSON(properties); //nonprimitive


    response_time_filter_postcode_sector_local_var = response_time_filter_postcode_sector_create (
        properties_local_nonprim
        );

    return response_time_filter_postcode_sector_local_var;
end:
    return NULL;

}
