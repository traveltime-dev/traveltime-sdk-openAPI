#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_time_filter_postcode_sectors.h"



response_time_filter_postcode_sectors_t *response_time_filter_postcode_sectors_create(
    list_t *results
    ) {
    response_time_filter_postcode_sectors_t *response_time_filter_postcode_sectors_local_var = malloc(sizeof(response_time_filter_postcode_sectors_t));
    if (!response_time_filter_postcode_sectors_local_var) {
        return NULL;
    }
    response_time_filter_postcode_sectors_local_var->results = results;

    return response_time_filter_postcode_sectors_local_var;
}


void response_time_filter_postcode_sectors_free(response_time_filter_postcode_sectors_t *response_time_filter_postcode_sectors) {
    if(NULL == response_time_filter_postcode_sectors){
        return ;
    }
    listEntry_t *listEntry;
    if (response_time_filter_postcode_sectors->results) {
        list_ForEach(listEntry, response_time_filter_postcode_sectors->results) {
            response_time_filter_postcode_sectors_result_free(listEntry->data);
        }
        list_free(response_time_filter_postcode_sectors->results);
        response_time_filter_postcode_sectors->results = NULL;
    }
    free(response_time_filter_postcode_sectors);
}

cJSON *response_time_filter_postcode_sectors_convertToJSON(response_time_filter_postcode_sectors_t *response_time_filter_postcode_sectors) {
    cJSON *item = cJSON_CreateObject();

    // response_time_filter_postcode_sectors->results
    if (!response_time_filter_postcode_sectors->results) {
        goto fail;
    }
    
    cJSON *results = cJSON_AddArrayToObject(item, "results");
    if(results == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *resultsListEntry;
    if (response_time_filter_postcode_sectors->results) {
    list_ForEach(resultsListEntry, response_time_filter_postcode_sectors->results) {
    cJSON *itemLocal = response_time_filter_postcode_sectors_result_convertToJSON(resultsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(results, itemLocal);
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_time_filter_postcode_sectors_t *response_time_filter_postcode_sectors_parseFromJSON(cJSON *response_time_filter_postcode_sectorsJSON){

    response_time_filter_postcode_sectors_t *response_time_filter_postcode_sectors_local_var = NULL;

    // response_time_filter_postcode_sectors->results
    cJSON *results = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_sectorsJSON, "results");
    if (!results) {
        goto end;
    }

    list_t *resultsList;
    
    cJSON *results_local_nonprimitive;
    if(!cJSON_IsArray(results)){
        goto end; //nonprimitive container
    }

    resultsList = list_create();

    cJSON_ArrayForEach(results_local_nonprimitive,results )
    {
        if(!cJSON_IsObject(results_local_nonprimitive)){
            goto end;
        }
        response_time_filter_postcode_sectors_result_t *resultsItem = response_time_filter_postcode_sectors_result_parseFromJSON(results_local_nonprimitive);

        list_addElement(resultsList, resultsItem);
    }


    response_time_filter_postcode_sectors_local_var = response_time_filter_postcode_sectors_create (
        resultsList
        );

    return response_time_filter_postcode_sectors_local_var;
end:
    return NULL;

}
