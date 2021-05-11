#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_routes.h"



response_routes_t *response_routes_create(
    list_t *results
    ) {
    response_routes_t *response_routes_local_var = malloc(sizeof(response_routes_t));
    if (!response_routes_local_var) {
        return NULL;
    }
    response_routes_local_var->results = results;

    return response_routes_local_var;
}


void response_routes_free(response_routes_t *response_routes) {
    if(NULL == response_routes){
        return ;
    }
    listEntry_t *listEntry;
    if (response_routes->results) {
        list_ForEach(listEntry, response_routes->results) {
            response_routes_result_free(listEntry->data);
        }
        list_free(response_routes->results);
        response_routes->results = NULL;
    }
    free(response_routes);
}

cJSON *response_routes_convertToJSON(response_routes_t *response_routes) {
    cJSON *item = cJSON_CreateObject();

    // response_routes->results
    if (!response_routes->results) {
        goto fail;
    }
    
    cJSON *results = cJSON_AddArrayToObject(item, "results");
    if(results == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *resultsListEntry;
    if (response_routes->results) {
    list_ForEach(resultsListEntry, response_routes->results) {
    cJSON *itemLocal = response_routes_result_convertToJSON(resultsListEntry->data);
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

response_routes_t *response_routes_parseFromJSON(cJSON *response_routesJSON){

    response_routes_t *response_routes_local_var = NULL;

    // response_routes->results
    cJSON *results = cJSON_GetObjectItemCaseSensitive(response_routesJSON, "results");
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
        response_routes_result_t *resultsItem = response_routes_result_parseFromJSON(results_local_nonprimitive);

        list_addElement(resultsList, resultsItem);
    }


    response_routes_local_var = response_routes_create (
        resultsList
        );

    return response_routes_local_var;
end:
    return NULL;

}
