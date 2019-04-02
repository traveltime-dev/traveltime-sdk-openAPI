#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_geocoding.h"
#include "list.h"
#include "response_geocoding_geo_json_feature.h"


response_geocoding_t *response_geocoding_create(
    char *type,
    list_t *features
    ) {
	response_geocoding_t *response_geocoding = malloc(sizeof(response_geocoding_t));
	response_geocoding->type = type;
	response_geocoding->features = features;

	return response_geocoding;
}


void response_geocoding_free(response_geocoding_t *response_geocoding) {
    listEntry_t *listEntry;
    free(response_geocoding->type);
		list_ForEach(listEntry, response_geocoding->features) {
		response_geocoding_geo_json_feature_free(listEntry->data);
	}
	list_free(response_geocoding->features);

	free(response_geocoding);
}

cJSON *response_geocoding_convertToJSON(response_geocoding_t *response_geocoding) {
	cJSON *item = cJSON_CreateObject();
	// response_geocoding->type
    if(cJSON_AddStringToObject(item, "type", response_geocoding->type) == NULL) {
    goto fail; //String
    }

	// response_geocoding->features
    cJSON *features = cJSON_AddArrayToObject(item, "features");
	if(features == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *featuresListEntry;
	list_ForEach(featuresListEntry, response_geocoding->features) {
		cJSON *item = response_geocoding_geo_json_feature_convertToJSON(featuresListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(features, item);
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_geocoding_t *response_geocoding_parseFromJSON(char *jsonString){

    response_geocoding_t *response_geocoding = NULL;
    cJSON *response_geocodingJSON = cJSON_Parse(jsonString);
    if(response_geocodingJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_geocoding->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(response_geocodingJSON, "type");
    if(!cJSON_IsString(type) || (type->valuestring == NULL)){
    goto end; //String
    }

    // response_geocoding->features
    cJSON *features;
    cJSON *featuresJSON = cJSON_GetObjectItemCaseSensitive(response_geocodingJSON,"features");
    if(!cJSON_IsArray(featuresJSON)){
        goto end; //nonprimitive container
    }

    list_t *featuresList = list_create();

    cJSON_ArrayForEach(features,featuresJSON )
    {
        if(!cJSON_IsObject(features)){
            goto end;
        }
		char *JSONData = cJSON_Print(features);
        response_geocoding_geo_json_feature_t *featuresItem = response_geocoding_geo_json_feature_parseFromJSON(JSONData);

        list_addElement(featuresList, featuresItem);
        free(JSONData);
    }


    response_geocoding = response_geocoding_create (
        strdup(type->valuestring),
        featuresList
        );
 cJSON_Delete(response_geocodingJSON);
    return response_geocoding;
end:
    cJSON_Delete(response_geocodingJSON);
    return NULL;

}

