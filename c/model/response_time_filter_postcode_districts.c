#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_time_filter_postcode_districts.h"



response_time_filter_postcode_districts_t *response_time_filter_postcode_districts_create(
    list_t *results
    ) {
    response_time_filter_postcode_districts_t *response_time_filter_postcode_districts_local_var = malloc(sizeof(response_time_filter_postcode_districts_t));
    if (!response_time_filter_postcode_districts_local_var) {
        return NULL;
    }
    response_time_filter_postcode_districts_local_var->results = results;

    return response_time_filter_postcode_districts_local_var;
}


void response_time_filter_postcode_districts_free(response_time_filter_postcode_districts_t *response_time_filter_postcode_districts) {
    listEntry_t *listEntry;
    list_ForEach(listEntry, response_time_filter_postcode_districts->results) {
        response_time_filter_postcode_districts_result_free(listEntry->data);
    }
    list_free(response_time_filter_postcode_districts->results);
    free(response_time_filter_postcode_districts);
}

cJSON *response_time_filter_postcode_districts_convertToJSON(response_time_filter_postcode_districts_t *response_time_filter_postcode_districts) {
    cJSON *item = cJSON_CreateObject();

    // response_time_filter_postcode_districts->results
    if (!response_time_filter_postcode_districts->results) {
        goto fail;
    }
    
    cJSON *results = cJSON_AddArrayToObject(item, "results");
    if(results == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *resultsListEntry;
    if (response_time_filter_postcode_districts->results) {
    list_ForEach(resultsListEntry, response_time_filter_postcode_districts->results) {
    cJSON *itemLocal = response_time_filter_postcode_districts_result_convertToJSON(resultsListEntry->data);
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

response_time_filter_postcode_districts_t *response_time_filter_postcode_districts_parseFromJSON(cJSON *response_time_filter_postcode_districtsJSON){

    response_time_filter_postcode_districts_t *response_time_filter_postcode_districts_local_var = NULL;

    // response_time_filter_postcode_districts->results
    cJSON *results = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_districtsJSON, "results");
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
        response_time_filter_postcode_districts_result_t *resultsItem = response_time_filter_postcode_districts_result_parseFromJSON(results_local_nonprimitive);

        list_addElement(resultsList, resultsItem);
    }


    response_time_filter_postcode_districts_local_var = response_time_filter_postcode_districts_create (
        resultsList
        );

    return response_time_filter_postcode_districts_local_var;
end:
    return NULL;

}
