#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_range_full.h"



request_range_full_t *request_range_full_create(
    int enabled,
    int max_results,
    int width
    ) {
    request_range_full_t *request_range_full_local_var = malloc(sizeof(request_range_full_t));
    if (!request_range_full_local_var) {
        return NULL;
    }
    request_range_full_local_var->enabled = enabled;
    request_range_full_local_var->max_results = max_results;
    request_range_full_local_var->width = width;

    return request_range_full_local_var;
}


void request_range_full_free(request_range_full_t *request_range_full) {
    listEntry_t *listEntry;
    free(request_range_full);
}

cJSON *request_range_full_convertToJSON(request_range_full_t *request_range_full) {
    cJSON *item = cJSON_CreateObject();

    // request_range_full->enabled
    if (!request_range_full->enabled) {
        goto fail;
    }
    
    if(cJSON_AddBoolToObject(item, "enabled", request_range_full->enabled) == NULL) {
    goto fail; //Bool
    }


    // request_range_full->max_results
    if (!request_range_full->max_results) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "max_results", request_range_full->max_results) == NULL) {
    goto fail; //Numeric
    }


    // request_range_full->width
    if (!request_range_full->width) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "width", request_range_full->width) == NULL) {
    goto fail; //Numeric
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

request_range_full_t *request_range_full_parseFromJSON(cJSON *request_range_fullJSON){

    request_range_full_t *request_range_full_local_var = NULL;

    // request_range_full->enabled
    cJSON *enabled = cJSON_GetObjectItemCaseSensitive(request_range_fullJSON, "enabled");
    if (!enabled) {
        goto end;
    }

    
    if(!cJSON_IsBool(enabled))
    {
    goto end; //Bool
    }

    // request_range_full->max_results
    cJSON *max_results = cJSON_GetObjectItemCaseSensitive(request_range_fullJSON, "max_results");
    if (!max_results) {
        goto end;
    }

    
    if(!cJSON_IsNumber(max_results))
    {
    goto end; //Numeric
    }

    // request_range_full->width
    cJSON *width = cJSON_GetObjectItemCaseSensitive(request_range_fullJSON, "width");
    if (!width) {
        goto end;
    }

    
    if(!cJSON_IsNumber(width))
    {
    goto end; //Numeric
    }


    request_range_full_local_var = request_range_full_create (
        enabled->valueint,
        max_results->valuedouble,
        width->valuedouble
        );

    return request_range_full_local_var;
end:
    return NULL;

}
