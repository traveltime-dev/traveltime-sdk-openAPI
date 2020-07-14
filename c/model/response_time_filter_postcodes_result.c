#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_time_filter_postcodes_result.h"



response_time_filter_postcodes_result_t *response_time_filter_postcodes_result_create(
    char *search_id,
    list_t *postcodes
    ) {
    response_time_filter_postcodes_result_t *response_time_filter_postcodes_result_local_var = malloc(sizeof(response_time_filter_postcodes_result_t));
    if (!response_time_filter_postcodes_result_local_var) {
        return NULL;
    }
    response_time_filter_postcodes_result_local_var->search_id = search_id;
    response_time_filter_postcodes_result_local_var->postcodes = postcodes;

    return response_time_filter_postcodes_result_local_var;
}


void response_time_filter_postcodes_result_free(response_time_filter_postcodes_result_t *response_time_filter_postcodes_result) {
    if(NULL == response_time_filter_postcodes_result){
        return ;
    }
    listEntry_t *listEntry;
    free(response_time_filter_postcodes_result->search_id);
    list_ForEach(listEntry, response_time_filter_postcodes_result->postcodes) {
        response_time_filter_postcode_free(listEntry->data);
    }
    list_free(response_time_filter_postcodes_result->postcodes);
    free(response_time_filter_postcodes_result);
}

cJSON *response_time_filter_postcodes_result_convertToJSON(response_time_filter_postcodes_result_t *response_time_filter_postcodes_result) {
    cJSON *item = cJSON_CreateObject();

    // response_time_filter_postcodes_result->search_id
    if (!response_time_filter_postcodes_result->search_id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "search_id", response_time_filter_postcodes_result->search_id) == NULL) {
    goto fail; //String
    }


    // response_time_filter_postcodes_result->postcodes
    if (!response_time_filter_postcodes_result->postcodes) {
        goto fail;
    }
    
    cJSON *postcodes = cJSON_AddArrayToObject(item, "postcodes");
    if(postcodes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *postcodesListEntry;
    if (response_time_filter_postcodes_result->postcodes) {
    list_ForEach(postcodesListEntry, response_time_filter_postcodes_result->postcodes) {
    cJSON *itemLocal = response_time_filter_postcode_convertToJSON(postcodesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(postcodes, itemLocal);
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_time_filter_postcodes_result_t *response_time_filter_postcodes_result_parseFromJSON(cJSON *response_time_filter_postcodes_resultJSON){

    response_time_filter_postcodes_result_t *response_time_filter_postcodes_result_local_var = NULL;

    // response_time_filter_postcodes_result->search_id
    cJSON *search_id = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcodes_resultJSON, "search_id");
    if (!search_id) {
        goto end;
    }

    
    if(!cJSON_IsString(search_id))
    {
    goto end; //String
    }

    // response_time_filter_postcodes_result->postcodes
    cJSON *postcodes = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcodes_resultJSON, "postcodes");
    if (!postcodes) {
        goto end;
    }

    list_t *postcodesList;
    
    cJSON *postcodes_local_nonprimitive;
    if(!cJSON_IsArray(postcodes)){
        goto end; //nonprimitive container
    }

    postcodesList = list_create();

    cJSON_ArrayForEach(postcodes_local_nonprimitive,postcodes )
    {
        if(!cJSON_IsObject(postcodes_local_nonprimitive)){
            goto end;
        }
        response_time_filter_postcode_t *postcodesItem = response_time_filter_postcode_parseFromJSON(postcodes_local_nonprimitive);

        list_addElement(postcodesList, postcodesItem);
    }


    response_time_filter_postcodes_result_local_var = response_time_filter_postcodes_result_create (
        strdup(search_id->valuestring),
        postcodesList
        );

    return response_time_filter_postcodes_result_local_var;
end:
    return NULL;

}
