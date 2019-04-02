#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_routes.h"
#include "list.h"
#include "response_routes_result.h"


response_routes_t *response_routes_create(
    list_t *results
    ) {
	response_routes_t *response_routes = malloc(sizeof(response_routes_t));
	response_routes->results = results;

	return response_routes;
}


void response_routes_free(response_routes_t *response_routes) {
    listEntry_t *listEntry;
		list_ForEach(listEntry, response_routes->results) {
		response_routes_result_free(listEntry->data);
	}
	list_free(response_routes->results);

	free(response_routes);
}

cJSON *response_routes_convertToJSON(response_routes_t *response_routes) {
	cJSON *item = cJSON_CreateObject();
	// response_routes->results
    cJSON *results = cJSON_AddArrayToObject(item, "results");
	if(results == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *resultsListEntry;
	list_ForEach(resultsListEntry, response_routes->results) {
		cJSON *item = response_routes_result_convertToJSON(resultsListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(results, item);
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_routes_t *response_routes_parseFromJSON(char *jsonString){

    response_routes_t *response_routes = NULL;
    cJSON *response_routesJSON = cJSON_Parse(jsonString);
    if(response_routesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_routes->results
    cJSON *results;
    cJSON *resultsJSON = cJSON_GetObjectItemCaseSensitive(response_routesJSON,"results");
    if(!cJSON_IsArray(resultsJSON)){
        goto end; //nonprimitive container
    }

    list_t *resultsList = list_create();

    cJSON_ArrayForEach(results,resultsJSON )
    {
        if(!cJSON_IsObject(results)){
            goto end;
        }
		char *JSONData = cJSON_Print(results);
        response_routes_result_t *resultsItem = response_routes_result_parseFromJSON(JSONData);

        list_addElement(resultsList, resultsItem);
        free(JSONData);
    }


    response_routes = response_routes_create (
        resultsList
        );
 cJSON_Delete(response_routesJSON);
    return response_routes;
end:
    cJSON_Delete(response_routesJSON);
    return NULL;

}

