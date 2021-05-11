#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_time_filter_postcode.h"



response_time_filter_postcode_t *response_time_filter_postcode_create(
    char *code,
    list_t *properties
    ) {
    response_time_filter_postcode_t *response_time_filter_postcode_local_var = malloc(sizeof(response_time_filter_postcode_t));
    if (!response_time_filter_postcode_local_var) {
        return NULL;
    }
    response_time_filter_postcode_local_var->code = code;
    response_time_filter_postcode_local_var->properties = properties;

    return response_time_filter_postcode_local_var;
}


void response_time_filter_postcode_free(response_time_filter_postcode_t *response_time_filter_postcode) {
    if(NULL == response_time_filter_postcode){
        return ;
    }
    listEntry_t *listEntry;
    if (response_time_filter_postcode->code) {
        free(response_time_filter_postcode->code);
        response_time_filter_postcode->code = NULL;
    }
    if (response_time_filter_postcode->properties) {
        list_ForEach(listEntry, response_time_filter_postcode->properties) {
            response_time_filter_postcodes_properties_free(listEntry->data);
        }
        list_free(response_time_filter_postcode->properties);
        response_time_filter_postcode->properties = NULL;
    }
    free(response_time_filter_postcode);
}

cJSON *response_time_filter_postcode_convertToJSON(response_time_filter_postcode_t *response_time_filter_postcode) {
    cJSON *item = cJSON_CreateObject();

    // response_time_filter_postcode->code
    if (!response_time_filter_postcode->code) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "code", response_time_filter_postcode->code) == NULL) {
    goto fail; //String
    }


    // response_time_filter_postcode->properties
    if (!response_time_filter_postcode->properties) {
        goto fail;
    }
    
    cJSON *properties = cJSON_AddArrayToObject(item, "properties");
    if(properties == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *propertiesListEntry;
    if (response_time_filter_postcode->properties) {
    list_ForEach(propertiesListEntry, response_time_filter_postcode->properties) {
    cJSON *itemLocal = response_time_filter_postcodes_properties_convertToJSON(propertiesListEntry->data);
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

response_time_filter_postcode_t *response_time_filter_postcode_parseFromJSON(cJSON *response_time_filter_postcodeJSON){

    response_time_filter_postcode_t *response_time_filter_postcode_local_var = NULL;

    // response_time_filter_postcode->code
    cJSON *code = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcodeJSON, "code");
    if (!code) {
        goto end;
    }

    
    if(!cJSON_IsString(code))
    {
    goto end; //String
    }

    // response_time_filter_postcode->properties
    cJSON *properties = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcodeJSON, "properties");
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
        response_time_filter_postcodes_properties_t *propertiesItem = response_time_filter_postcodes_properties_parseFromJSON(properties_local_nonprimitive);

        list_addElement(propertiesList, propertiesItem);
    }


    response_time_filter_postcode_local_var = response_time_filter_postcode_create (
        strdup(code->valuestring),
        propertiesList
        );

    return response_time_filter_postcode_local_var;
end:
    return NULL;

}
