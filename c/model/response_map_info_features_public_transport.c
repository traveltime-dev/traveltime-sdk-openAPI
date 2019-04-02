#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_map_info_features_public_transport.h"


response_map_info_features_public_transport_t *response_map_info_features_public_transport_create(
    char *date_start,
    char *date_end
    ) {
	response_map_info_features_public_transport_t *response_map_info_features_public_transport = malloc(sizeof(response_map_info_features_public_transport_t));
	response_map_info_features_public_transport->date_start = date_start;
	response_map_info_features_public_transport->date_end = date_end;

	return response_map_info_features_public_transport;
}


void response_map_info_features_public_transport_free(response_map_info_features_public_transport_t *response_map_info_features_public_transport) {
    listEntry_t *listEntry;
    free(response_map_info_features_public_transport->date_start);
    free(response_map_info_features_public_transport->date_end);

	free(response_map_info_features_public_transport);
}

cJSON *response_map_info_features_public_transport_convertToJSON(response_map_info_features_public_transport_t *response_map_info_features_public_transport) {
	cJSON *item = cJSON_CreateObject();
	// response_map_info_features_public_transport->date_start
    if(cJSON_AddStringToObject(item, "date_start", response_map_info_features_public_transport->date_start) == NULL) {
    goto fail; //String
    }

	// response_map_info_features_public_transport->date_end
    if(cJSON_AddStringToObject(item, "date_end", response_map_info_features_public_transport->date_end) == NULL) {
    goto fail; //String
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_map_info_features_public_transport_t *response_map_info_features_public_transport_parseFromJSON(char *jsonString){

    response_map_info_features_public_transport_t *response_map_info_features_public_transport = NULL;
    cJSON *response_map_info_features_public_transportJSON = cJSON_Parse(jsonString);
    if(response_map_info_features_public_transportJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_map_info_features_public_transport->date_start
    cJSON *date_start = cJSON_GetObjectItemCaseSensitive(response_map_info_features_public_transportJSON, "date_start");
    if(!cJSON_IsString(date_start) || (date_start->valuestring == NULL)){
    goto end; //String
    }

    // response_map_info_features_public_transport->date_end
    cJSON *date_end = cJSON_GetObjectItemCaseSensitive(response_map_info_features_public_transportJSON, "date_end");
    if(!cJSON_IsString(date_end) || (date_end->valuestring == NULL)){
    goto end; //String
    }


    response_map_info_features_public_transport = response_map_info_features_public_transport_create (
        strdup(date_start->valuestring),
        strdup(date_end->valuestring)
        );
 cJSON_Delete(response_map_info_features_public_transportJSON);
    return response_map_info_features_public_transport;
end:
    cJSON_Delete(response_map_info_features_public_transportJSON);
    return NULL;

}

