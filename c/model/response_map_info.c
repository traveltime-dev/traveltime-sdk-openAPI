#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_map_info.h"



response_map_info_t *response_map_info_create(
    list_t *maps
    ) {
    response_map_info_t *response_map_info_local_var = malloc(sizeof(response_map_info_t));
    if (!response_map_info_local_var) {
        return NULL;
    }
    response_map_info_local_var->maps = maps;

    return response_map_info_local_var;
}


void response_map_info_free(response_map_info_t *response_map_info) {
    if(NULL == response_map_info){
        return ;
    }
    listEntry_t *listEntry;
    list_ForEach(listEntry, response_map_info->maps) {
        response_map_info_map_free(listEntry->data);
    }
    list_free(response_map_info->maps);
    free(response_map_info);
}

cJSON *response_map_info_convertToJSON(response_map_info_t *response_map_info) {
    cJSON *item = cJSON_CreateObject();

    // response_map_info->maps
    if (!response_map_info->maps) {
        goto fail;
    }
    
    cJSON *maps = cJSON_AddArrayToObject(item, "maps");
    if(maps == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *mapsListEntry;
    if (response_map_info->maps) {
    list_ForEach(mapsListEntry, response_map_info->maps) {
    cJSON *itemLocal = response_map_info_map_convertToJSON(mapsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(maps, itemLocal);
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_map_info_t *response_map_info_parseFromJSON(cJSON *response_map_infoJSON){

    response_map_info_t *response_map_info_local_var = NULL;

    // response_map_info->maps
    cJSON *maps = cJSON_GetObjectItemCaseSensitive(response_map_infoJSON, "maps");
    if (!maps) {
        goto end;
    }

    list_t *mapsList;
    
    cJSON *maps_local_nonprimitive;
    if(!cJSON_IsArray(maps)){
        goto end; //nonprimitive container
    }

    mapsList = list_create();

    cJSON_ArrayForEach(maps_local_nonprimitive,maps )
    {
        if(!cJSON_IsObject(maps_local_nonprimitive)){
            goto end;
        }
        response_map_info_map_t *mapsItem = response_map_info_map_parseFromJSON(maps_local_nonprimitive);

        list_addElement(mapsList, mapsItem);
    }


    response_map_info_local_var = response_map_info_create (
        mapsList
        );

    return response_map_info_local_var;
end:
    return NULL;

}
