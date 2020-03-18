#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_geocoding.h"



response_geocoding_t *response_geocoding_create(
    char *type,
    list_t *features
    ) {
    response_geocoding_t *response_geocoding_local_var = malloc(sizeof(response_geocoding_t));
    if (!response_geocoding_local_var) {
        return NULL;
    }
    response_geocoding_local_var->type = type;
    response_geocoding_local_var->features = features;

    return response_geocoding_local_var;
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
    if (!response_geocoding->type) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "type", response_geocoding->type) == NULL) {
    goto fail; //String
    }


    // response_geocoding->features
    if (!response_geocoding->features) {
        goto fail;
    }
    
    cJSON *features = cJSON_AddArrayToObject(item, "features");
    if(features == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *featuresListEntry;
    if (response_geocoding->features) {
    list_ForEach(featuresListEntry, response_geocoding->features) {
    cJSON *itemLocal = response_geocoding_geo_json_feature_convertToJSON(featuresListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(features, itemLocal);
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_geocoding_t *response_geocoding_parseFromJSON(cJSON *response_geocodingJSON){

    response_geocoding_t *response_geocoding_local_var = NULL;

    // response_geocoding->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(response_geocodingJSON, "type");
    if (!type) {
        goto end;
    }

    
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }

    // response_geocoding->features
    cJSON *features = cJSON_GetObjectItemCaseSensitive(response_geocodingJSON, "features");
    if (!features) {
        goto end;
    }

    list_t *featuresList;
    
    cJSON *features_local_nonprimitive;
    if(!cJSON_IsArray(features)){
        goto end; //nonprimitive container
    }

    featuresList = list_create();

    cJSON_ArrayForEach(features_local_nonprimitive,features )
    {
        if(!cJSON_IsObject(features_local_nonprimitive)){
            goto end;
        }
        response_geocoding_geo_json_feature_t *featuresItem = response_geocoding_geo_json_feature_parseFromJSON(features_local_nonprimitive);

        list_addElement(featuresList, featuresItem);
    }


    response_geocoding_local_var = response_geocoding_create (
        strdup(type->valuestring),
        featuresList
        );

    return response_geocoding_local_var;
end:
    return NULL;

}
