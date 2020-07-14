#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "request_range_no_max_results.h"



request_range_no_max_results_t *request_range_no_max_results_create(
    int enabled,
    int width
    ) {
    request_range_no_max_results_t *request_range_no_max_results_local_var = malloc(sizeof(request_range_no_max_results_t));
    if (!request_range_no_max_results_local_var) {
        return NULL;
    }
    request_range_no_max_results_local_var->enabled = enabled;
    request_range_no_max_results_local_var->width = width;

    return request_range_no_max_results_local_var;
}


void request_range_no_max_results_free(request_range_no_max_results_t *request_range_no_max_results) {
    if(NULL == request_range_no_max_results){
        return ;
    }
    listEntry_t *listEntry;
    free(request_range_no_max_results);
}

cJSON *request_range_no_max_results_convertToJSON(request_range_no_max_results_t *request_range_no_max_results) {
    cJSON *item = cJSON_CreateObject();

    // request_range_no_max_results->enabled
    if (!request_range_no_max_results->enabled) {
        goto fail;
    }
    
    if(cJSON_AddBoolToObject(item, "enabled", request_range_no_max_results->enabled) == NULL) {
    goto fail; //Bool
    }


    // request_range_no_max_results->width
    if (!request_range_no_max_results->width) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "width", request_range_no_max_results->width) == NULL) {
    goto fail; //Numeric
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

request_range_no_max_results_t *request_range_no_max_results_parseFromJSON(cJSON *request_range_no_max_resultsJSON){

    request_range_no_max_results_t *request_range_no_max_results_local_var = NULL;

    // request_range_no_max_results->enabled
    cJSON *enabled = cJSON_GetObjectItemCaseSensitive(request_range_no_max_resultsJSON, "enabled");
    if (!enabled) {
        goto end;
    }

    
    if(!cJSON_IsBool(enabled))
    {
    goto end; //Bool
    }

    // request_range_no_max_results->width
    cJSON *width = cJSON_GetObjectItemCaseSensitive(request_range_no_max_resultsJSON, "width");
    if (!width) {
        goto end;
    }

    
    if(!cJSON_IsNumber(width))
    {
    goto end; //Numeric
    }


    request_range_no_max_results_local_var = request_range_no_max_results_create (
        enabled->valueint,
        width->valuedouble
        );

    return request_range_no_max_results_local_var;
end:
    return NULL;

}
