#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_map_info_features_public_transport.h"



response_map_info_features_public_transport_t *response_map_info_features_public_transport_create(
    char *date_start,
    char *date_end
    ) {
	response_map_info_features_public_transport_t *response_map_info_features_public_transport_local_var = malloc(sizeof(response_map_info_features_public_transport_t));
    if (!response_map_info_features_public_transport_local_var) {
        return NULL;
    }
	response_map_info_features_public_transport_local_var->date_start = date_start;
	response_map_info_features_public_transport_local_var->date_end = date_end;

	return response_map_info_features_public_transport_local_var;
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
    if (!response_map_info_features_public_transport->date_start) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "date_start", response_map_info_features_public_transport->date_start) == NULL) {
    goto fail; //Date-Time
    }


	// response_map_info_features_public_transport->date_end
    if (!response_map_info_features_public_transport->date_end) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "date_end", response_map_info_features_public_transport->date_end) == NULL) {
    goto fail; //Date-Time
    }

	return item;
fail:
	if (item) {
        cJSON_Delete(item);
    }
	return NULL;
}

response_map_info_features_public_transport_t *response_map_info_features_public_transport_parseFromJSON(cJSON *response_map_info_features_public_transportJSON){

    response_map_info_features_public_transport_t *response_map_info_features_public_transport_local_var = NULL;

    // response_map_info_features_public_transport->date_start
    cJSON *date_start = cJSON_GetObjectItemCaseSensitive(response_map_info_features_public_transportJSON, "date_start");
    if (!date_start) {
        goto end;
    }

    
    if(!cJSON_IsString(date_start))
    {
    goto end; //DateTime
    }

    // response_map_info_features_public_transport->date_end
    cJSON *date_end = cJSON_GetObjectItemCaseSensitive(response_map_info_features_public_transportJSON, "date_end");
    if (!date_end) {
        goto end;
    }

    
    if(!cJSON_IsString(date_end))
    {
    goto end; //DateTime
    }


    response_map_info_features_public_transport_local_var = response_map_info_features_public_transport_create (
        strdup(date_start->valuestring),
        strdup(date_end->valuestring)
        );

    return response_map_info_features_public_transport_local_var;
end:
    return NULL;

}
