#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_routes_result.h"



response_routes_result_t *response_routes_result_create(
    char *search_id,
    list_t *locations,
    list_t *unreachable
    ) {
    response_routes_result_t *response_routes_result_local_var = malloc(sizeof(response_routes_result_t));
    if (!response_routes_result_local_var) {
        return NULL;
    }
    response_routes_result_local_var->search_id = search_id;
    response_routes_result_local_var->locations = locations;
    response_routes_result_local_var->unreachable = unreachable;

    return response_routes_result_local_var;
}


void response_routes_result_free(response_routes_result_t *response_routes_result) {
    if(NULL == response_routes_result){
        return ;
    }
    listEntry_t *listEntry;
    free(response_routes_result->search_id);
    list_ForEach(listEntry, response_routes_result->locations) {
        response_routes_location_free(listEntry->data);
    }
    list_free(response_routes_result->locations);
    list_ForEach(listEntry, response_routes_result->unreachable) {
        free(listEntry->data);
    }
    list_free(response_routes_result->unreachable);
    free(response_routes_result);
}

cJSON *response_routes_result_convertToJSON(response_routes_result_t *response_routes_result) {
    cJSON *item = cJSON_CreateObject();

    // response_routes_result->search_id
    if (!response_routes_result->search_id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "search_id", response_routes_result->search_id) == NULL) {
    goto fail; //String
    }


    // response_routes_result->locations
    if (!response_routes_result->locations) {
        goto fail;
    }
    
    cJSON *locations = cJSON_AddArrayToObject(item, "locations");
    if(locations == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *locationsListEntry;
    if (response_routes_result->locations) {
    list_ForEach(locationsListEntry, response_routes_result->locations) {
    cJSON *itemLocal = response_routes_location_convertToJSON(locationsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(locations, itemLocal);
    }
    }


    // response_routes_result->unreachable
    if (!response_routes_result->unreachable) {
        goto fail;
    }
    
    cJSON *unreachable = cJSON_AddArrayToObject(item, "unreachable");
    if(unreachable == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *unreachableListEntry;
    list_ForEach(unreachableListEntry, response_routes_result->unreachable) {
    if(cJSON_AddStringToObject(unreachable, "", (char*)unreachableListEntry->data) == NULL)
    {
        goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_routes_result_t *response_routes_result_parseFromJSON(cJSON *response_routes_resultJSON){

    response_routes_result_t *response_routes_result_local_var = NULL;

    // response_routes_result->search_id
    cJSON *search_id = cJSON_GetObjectItemCaseSensitive(response_routes_resultJSON, "search_id");
    if (!search_id) {
        goto end;
    }

    
    if(!cJSON_IsString(search_id))
    {
    goto end; //String
    }

    // response_routes_result->locations
    cJSON *locations = cJSON_GetObjectItemCaseSensitive(response_routes_resultJSON, "locations");
    if (!locations) {
        goto end;
    }

    list_t *locationsList;
    
    cJSON *locations_local_nonprimitive;
    if(!cJSON_IsArray(locations)){
        goto end; //nonprimitive container
    }

    locationsList = list_create();

    cJSON_ArrayForEach(locations_local_nonprimitive,locations )
    {
        if(!cJSON_IsObject(locations_local_nonprimitive)){
            goto end;
        }
        response_routes_location_t *locationsItem = response_routes_location_parseFromJSON(locations_local_nonprimitive);

        list_addElement(locationsList, locationsItem);
    }

    // response_routes_result->unreachable
    cJSON *unreachable = cJSON_GetObjectItemCaseSensitive(response_routes_resultJSON, "unreachable");
    if (!unreachable) {
        goto end;
    }

    list_t *unreachableList;
    
    cJSON *unreachable_local;
    if(!cJSON_IsArray(unreachable)) {
        goto end;//primitive container
    }
    unreachableList = list_create();

    cJSON_ArrayForEach(unreachable_local, unreachable)
    {
        if(!cJSON_IsString(unreachable_local))
        {
            goto end;
        }
        list_addElement(unreachableList , strdup(unreachable_local->valuestring));
    }


    response_routes_result_local_var = response_routes_result_create (
        strdup(search_id->valuestring),
        locationsList,
        unreachableList
        );

    return response_routes_result_local_var;
end:
    return NULL;

}
