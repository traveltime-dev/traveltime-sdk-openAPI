#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_map_info.h"
#include "list.h"
#include "response_map_info_map.h"


response_map_info_t *response_map_info_create(
    list_t *maps
    ) {
	response_map_info_t *response_map_info = malloc(sizeof(response_map_info_t));
	response_map_info->maps = maps;

	return response_map_info;
}


void response_map_info_free(response_map_info_t *response_map_info) {
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
    cJSON *maps = cJSON_AddArrayToObject(item, "maps");
	if(maps == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *mapsListEntry;
	list_ForEach(mapsListEntry, response_map_info->maps) {
		cJSON *item = response_map_info_map_convertToJSON(mapsListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(maps, item);
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_map_info_t *response_map_info_parseFromJSON(char *jsonString){

    response_map_info_t *response_map_info = NULL;
    cJSON *response_map_infoJSON = cJSON_Parse(jsonString);
    if(response_map_infoJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_map_info->maps
    cJSON *maps;
    cJSON *mapsJSON = cJSON_GetObjectItemCaseSensitive(response_map_infoJSON,"maps");
    if(!cJSON_IsArray(mapsJSON)){
        goto end; //nonprimitive container
    }

    list_t *mapsList = list_create();

    cJSON_ArrayForEach(maps,mapsJSON )
    {
        if(!cJSON_IsObject(maps)){
            goto end;
        }
		char *JSONData = cJSON_Print(maps);
        response_map_info_map_t *mapsItem = response_map_info_map_parseFromJSON(JSONData);

        list_addElement(mapsList, mapsItem);
        free(JSONData);
    }


    response_map_info = response_map_info_create (
        mapsList
        );
 cJSON_Delete(response_map_infoJSON);
    return response_map_info;
end:
    cJSON_Delete(response_map_infoJSON);
    return NULL;

}

