#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_map_info_map.h"
#include "response_map_info_features.h"


response_map_info_map_t *response_map_info_map_create(
    char *name,
    response_map_info_features_t *features
    ) {
	response_map_info_map_t *response_map_info_map = malloc(sizeof(response_map_info_map_t));
	response_map_info_map->name = name;
	response_map_info_map->features = features;

	return response_map_info_map;
}


void response_map_info_map_free(response_map_info_map_t *response_map_info_map) {
    listEntry_t *listEntry;
    free(response_map_info_map->name);
	response_map_info_features_free(response_map_info_map->features);

	free(response_map_info_map);
}

cJSON *response_map_info_map_convertToJSON(response_map_info_map_t *response_map_info_map) {
	cJSON *item = cJSON_CreateObject();
	// response_map_info_map->name
    if(cJSON_AddStringToObject(item, "name", response_map_info_map->name) == NULL) {
    goto fail; //String
    }

	// response_map_info_map->features
	cJSON *features = response_map_info_features_convertToJSON(response_map_info_map->features);
	if(features == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "features", features);
	if(item->child == NULL) {
		goto fail;
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_map_info_map_t *response_map_info_map_parseFromJSON(char *jsonString){

    response_map_info_map_t *response_map_info_map = NULL;
    cJSON *response_map_info_mapJSON = cJSON_Parse(jsonString);
    if(response_map_info_mapJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_map_info_map->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(response_map_info_mapJSON, "name");
    if(!cJSON_IsString(name) || (name->valuestring == NULL)){
    goto end; //String
    }

    // response_map_info_map->features
    response_map_info_features_t *features;
    cJSON *featuresJSON = cJSON_GetObjectItemCaseSensitive(response_map_info_mapJSON, "features");
    if(response_map_info_mapJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *featuresJSONData = cJSON_Print(featuresJSON);
    features = response_map_info_features_parseFromJSON(featuresJSONData);


    response_map_info_map = response_map_info_map_create (
        strdup(name->valuestring),
        features
        );
        free(featuresJSONData);
 cJSON_Delete(response_map_info_mapJSON);
    return response_map_info_map;
end:
    cJSON_Delete(response_map_info_mapJSON);
    return NULL;

}

