#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_map_info_features.h"



response_map_info_features_t *response_map_info_features_create(
    response_map_info_features_public_transport_t *public_transport,
    int fares,
    int postcodes
    ) {
    response_map_info_features_t *response_map_info_features_local_var = malloc(sizeof(response_map_info_features_t));
    if (!response_map_info_features_local_var) {
        return NULL;
    }
    response_map_info_features_local_var->public_transport = public_transport;
    response_map_info_features_local_var->fares = fares;
    response_map_info_features_local_var->postcodes = postcodes;

    return response_map_info_features_local_var;
}


void response_map_info_features_free(response_map_info_features_t *response_map_info_features) {
    listEntry_t *listEntry;
    response_map_info_features_public_transport_free(response_map_info_features->public_transport);
    free(response_map_info_features);
}

cJSON *response_map_info_features_convertToJSON(response_map_info_features_t *response_map_info_features) {
    cJSON *item = cJSON_CreateObject();

    // response_map_info_features->public_transport
    if(response_map_info_features->public_transport) { 
    cJSON *public_transport_local_JSON = response_map_info_features_public_transport_convertToJSON(response_map_info_features->public_transport);
    if(public_transport_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "public_transport", public_transport_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
     } 


    // response_map_info_features->fares
    if (!response_map_info_features->fares) {
        goto fail;
    }
    
    if(cJSON_AddBoolToObject(item, "fares", response_map_info_features->fares) == NULL) {
    goto fail; //Bool
    }


    // response_map_info_features->postcodes
    if (!response_map_info_features->postcodes) {
        goto fail;
    }
    
    if(cJSON_AddBoolToObject(item, "postcodes", response_map_info_features->postcodes) == NULL) {
    goto fail; //Bool
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_map_info_features_t *response_map_info_features_parseFromJSON(cJSON *response_map_info_featuresJSON){

    response_map_info_features_t *response_map_info_features_local_var = NULL;

    // response_map_info_features->public_transport
    cJSON *public_transport = cJSON_GetObjectItemCaseSensitive(response_map_info_featuresJSON, "public_transport");
    response_map_info_features_public_transport_t *public_transport_local_nonprim = NULL;
    if (public_transport) { 
    public_transport_local_nonprim = response_map_info_features_public_transport_parseFromJSON(public_transport); //nonprimitive
    }

    // response_map_info_features->fares
    cJSON *fares = cJSON_GetObjectItemCaseSensitive(response_map_info_featuresJSON, "fares");
    if (!fares) {
        goto end;
    }

    
    if(!cJSON_IsBool(fares))
    {
    goto end; //Bool
    }

    // response_map_info_features->postcodes
    cJSON *postcodes = cJSON_GetObjectItemCaseSensitive(response_map_info_featuresJSON, "postcodes");
    if (!postcodes) {
        goto end;
    }

    
    if(!cJSON_IsBool(postcodes))
    {
    goto end; //Bool
    }


    response_map_info_features_local_var = response_map_info_features_create (
        public_transport ? public_transport_local_nonprim : NULL,
        fares->valueint,
        postcodes->valueint
        );

    return response_map_info_features_local_var;
end:
    return NULL;

}
