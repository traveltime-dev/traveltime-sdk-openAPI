#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_time_filter_postcode_sectors_result.h"



response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result_create(
    char *search_id,
    list_t *sectors
    ) {
    response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result_local_var = malloc(sizeof(response_time_filter_postcode_sectors_result_t));
    if (!response_time_filter_postcode_sectors_result_local_var) {
        return NULL;
    }
    response_time_filter_postcode_sectors_result_local_var->search_id = search_id;
    response_time_filter_postcode_sectors_result_local_var->sectors = sectors;

    return response_time_filter_postcode_sectors_result_local_var;
}


void response_time_filter_postcode_sectors_result_free(response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result) {
    if(NULL == response_time_filter_postcode_sectors_result){
        return ;
    }
    listEntry_t *listEntry;
    if (response_time_filter_postcode_sectors_result->search_id) {
        free(response_time_filter_postcode_sectors_result->search_id);
        response_time_filter_postcode_sectors_result->search_id = NULL;
    }
    if (response_time_filter_postcode_sectors_result->sectors) {
        list_ForEach(listEntry, response_time_filter_postcode_sectors_result->sectors) {
            response_time_filter_postcode_sector_free(listEntry->data);
        }
        list_free(response_time_filter_postcode_sectors_result->sectors);
        response_time_filter_postcode_sectors_result->sectors = NULL;
    }
    free(response_time_filter_postcode_sectors_result);
}

cJSON *response_time_filter_postcode_sectors_result_convertToJSON(response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result) {
    cJSON *item = cJSON_CreateObject();

    // response_time_filter_postcode_sectors_result->search_id
    if (!response_time_filter_postcode_sectors_result->search_id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "search_id", response_time_filter_postcode_sectors_result->search_id) == NULL) {
    goto fail; //String
    }


    // response_time_filter_postcode_sectors_result->sectors
    if (!response_time_filter_postcode_sectors_result->sectors) {
        goto fail;
    }
    
    cJSON *sectors = cJSON_AddArrayToObject(item, "sectors");
    if(sectors == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *sectorsListEntry;
    if (response_time_filter_postcode_sectors_result->sectors) {
    list_ForEach(sectorsListEntry, response_time_filter_postcode_sectors_result->sectors) {
    cJSON *itemLocal = response_time_filter_postcode_sector_convertToJSON(sectorsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(sectors, itemLocal);
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result_parseFromJSON(cJSON *response_time_filter_postcode_sectors_resultJSON){

    response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result_local_var = NULL;

    // response_time_filter_postcode_sectors_result->search_id
    cJSON *search_id = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_sectors_resultJSON, "search_id");
    if (!search_id) {
        goto end;
    }

    
    if(!cJSON_IsString(search_id))
    {
    goto end; //String
    }

    // response_time_filter_postcode_sectors_result->sectors
    cJSON *sectors = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_sectors_resultJSON, "sectors");
    if (!sectors) {
        goto end;
    }

    list_t *sectorsList;
    
    cJSON *sectors_local_nonprimitive;
    if(!cJSON_IsArray(sectors)){
        goto end; //nonprimitive container
    }

    sectorsList = list_create();

    cJSON_ArrayForEach(sectors_local_nonprimitive,sectors )
    {
        if(!cJSON_IsObject(sectors_local_nonprimitive)){
            goto end;
        }
        response_time_filter_postcode_sector_t *sectorsItem = response_time_filter_postcode_sector_parseFromJSON(sectors_local_nonprimitive);

        list_addElement(sectorsList, sectorsItem);
    }


    response_time_filter_postcode_sectors_result_local_var = response_time_filter_postcode_sectors_result_create (
        strdup(search_id->valuestring),
        sectorsList
        );

    return response_time_filter_postcode_sectors_result_local_var;
end:
    return NULL;

}
