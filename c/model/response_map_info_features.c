#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_map_info_features.h"
#include "response_map_info_features_public_transport.h"


response_map_info_features_t *response_map_info_features_create(
    response_map_info_features_public_transport_t *public_transport,
    bool fares,
    bool postcodes
    ) {
	response_map_info_features_t *response_map_info_features = malloc(sizeof(response_map_info_features_t));
	response_map_info_features->public_transport = public_transport;
	response_map_info_features->fares = fares;
	response_map_info_features->postcodes = postcodes;

	return response_map_info_features;
}


void response_map_info_features_free(response_map_info_features_t *response_map_info_features) {
    listEntry_t *listEntry;
	response_map_info_features_public_transport_free(response_map_info_features->public_transport);

	free(response_map_info_features);
}

cJSON *response_map_info_features_convertToJSON(response_map_info_features_t *response_map_info_features) {
	cJSON *item = cJSON_CreateObject();
	// response_map_info_features->public_transport
	cJSON *public_transport = response_map_info_features_public_transport_convertToJSON(response_map_info_features->public_transport);
	if(public_transport == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "public_transport", public_transport);
	if(item->child == NULL) {
		goto fail;
	}

	// response_map_info_features->fares
    if(cJSON_AddBoolToObject(item, "fares", response_map_info_features->fares) == NULL) {
    goto fail; //Numeric
    }

	// response_map_info_features->postcodes
    if(cJSON_AddBoolToObject(item, "postcodes", response_map_info_features->postcodes) == NULL) {
    goto fail; //Numeric
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_map_info_features_t *response_map_info_features_parseFromJSON(char *jsonString){

    response_map_info_features_t *response_map_info_features = NULL;
    cJSON *response_map_info_featuresJSON = cJSON_Parse(jsonString);
    if(response_map_info_featuresJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_map_info_features->public_transport
    response_map_info_features_public_transport_t *public_transport;
    cJSON *public_transportJSON = cJSON_GetObjectItemCaseSensitive(response_map_info_featuresJSON, "public_transport");
    if(response_map_info_featuresJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *public_transportJSONData = cJSON_Print(public_transportJSON);
    public_transport = response_map_info_features_public_transport_parseFromJSON(public_transportJSONData);

    // response_map_info_features->fares
    cJSON *fares = cJSON_GetObjectItemCaseSensitive(response_map_info_featuresJSON, "fares");
    if(!cJSON_IsBool(fares))
    {
    goto end; //Numeric
    }

    // response_map_info_features->postcodes
    cJSON *postcodes = cJSON_GetObjectItemCaseSensitive(response_map_info_featuresJSON, "postcodes");
    if(!cJSON_IsBool(postcodes))
    {
    goto end; //Numeric
    }


    response_map_info_features = response_map_info_features_create (
        public_transport,
        fares->valueint,
        postcodes->valueint
        );
        free(public_transportJSONData);
 cJSON_Delete(response_map_info_featuresJSON);
    return response_map_info_features;
end:
    cJSON_Delete(response_map_info_featuresJSON);
    return NULL;

}

