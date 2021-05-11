#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_time_filter_postcode_district.h"



response_time_filter_postcode_district_t *response_time_filter_postcode_district_create(
    char *code,
    response_time_filter_postcode_district_properties_t *properties
    ) {
    response_time_filter_postcode_district_t *response_time_filter_postcode_district_local_var = malloc(sizeof(response_time_filter_postcode_district_t));
    if (!response_time_filter_postcode_district_local_var) {
        return NULL;
    }
    response_time_filter_postcode_district_local_var->code = code;
    response_time_filter_postcode_district_local_var->properties = properties;

    return response_time_filter_postcode_district_local_var;
}


void response_time_filter_postcode_district_free(response_time_filter_postcode_district_t *response_time_filter_postcode_district) {
    if(NULL == response_time_filter_postcode_district){
        return ;
    }
    listEntry_t *listEntry;
    if (response_time_filter_postcode_district->code) {
        free(response_time_filter_postcode_district->code);
        response_time_filter_postcode_district->code = NULL;
    }
    if (response_time_filter_postcode_district->properties) {
        response_time_filter_postcode_district_properties_free(response_time_filter_postcode_district->properties);
        response_time_filter_postcode_district->properties = NULL;
    }
    free(response_time_filter_postcode_district);
}

cJSON *response_time_filter_postcode_district_convertToJSON(response_time_filter_postcode_district_t *response_time_filter_postcode_district) {
    cJSON *item = cJSON_CreateObject();

    // response_time_filter_postcode_district->code
    if (!response_time_filter_postcode_district->code) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "code", response_time_filter_postcode_district->code) == NULL) {
    goto fail; //String
    }


    // response_time_filter_postcode_district->properties
    if (!response_time_filter_postcode_district->properties) {
        goto fail;
    }
    
    cJSON *properties_local_JSON = response_time_filter_postcode_district_properties_convertToJSON(response_time_filter_postcode_district->properties);
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

response_time_filter_postcode_district_t *response_time_filter_postcode_district_parseFromJSON(cJSON *response_time_filter_postcode_districtJSON){

    response_time_filter_postcode_district_t *response_time_filter_postcode_district_local_var = NULL;

    // response_time_filter_postcode_district->code
    cJSON *code = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_districtJSON, "code");
    if (!code) {
        goto end;
    }

    
    if(!cJSON_IsString(code))
    {
    goto end; //String
    }

    // response_time_filter_postcode_district->properties
    cJSON *properties = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_districtJSON, "properties");
    if (!properties) {
        goto end;
    }

    response_time_filter_postcode_district_properties_t *properties_local_nonprim = NULL;
    
    properties_local_nonprim = response_time_filter_postcode_district_properties_parseFromJSON(properties); //nonprimitive


    response_time_filter_postcode_district_local_var = response_time_filter_postcode_district_create (
        strdup(code->valuestring),
        properties_local_nonprim
        );

    return response_time_filter_postcode_district_local_var;
end:
    if (properties_local_nonprim) {
        response_time_filter_postcode_district_properties_free(properties_local_nonprim);
        properties_local_nonprim = NULL;
    }
    return NULL;

}
