#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_geocoding_geo_json_feature.h"



response_geocoding_geo_json_feature_t *response_geocoding_geo_json_feature_create(
    char *type,
    response_geocoding_geometry_t *geometry,
    response_geocoding_properties_t *properties
    ) {
    response_geocoding_geo_json_feature_t *response_geocoding_geo_json_feature_local_var = malloc(sizeof(response_geocoding_geo_json_feature_t));
    if (!response_geocoding_geo_json_feature_local_var) {
        return NULL;
    }
    response_geocoding_geo_json_feature_local_var->type = type;
    response_geocoding_geo_json_feature_local_var->geometry = geometry;
    response_geocoding_geo_json_feature_local_var->properties = properties;

    return response_geocoding_geo_json_feature_local_var;
}


void response_geocoding_geo_json_feature_free(response_geocoding_geo_json_feature_t *response_geocoding_geo_json_feature) {
    listEntry_t *listEntry;
    free(response_geocoding_geo_json_feature->type);
    response_geocoding_geometry_free(response_geocoding_geo_json_feature->geometry);
    response_geocoding_properties_free(response_geocoding_geo_json_feature->properties);
    free(response_geocoding_geo_json_feature);
}

cJSON *response_geocoding_geo_json_feature_convertToJSON(response_geocoding_geo_json_feature_t *response_geocoding_geo_json_feature) {
    cJSON *item = cJSON_CreateObject();

    // response_geocoding_geo_json_feature->type
    if (!response_geocoding_geo_json_feature->type) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "type", response_geocoding_geo_json_feature->type) == NULL) {
    goto fail; //String
    }


    // response_geocoding_geo_json_feature->geometry
    if (!response_geocoding_geo_json_feature->geometry) {
        goto fail;
    }
    
    cJSON *geometry_local_JSON = response_geocoding_geometry_convertToJSON(response_geocoding_geo_json_feature->geometry);
    if(geometry_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "geometry", geometry_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // response_geocoding_geo_json_feature->properties
    if (!response_geocoding_geo_json_feature->properties) {
        goto fail;
    }
    
    cJSON *properties_local_JSON = response_geocoding_properties_convertToJSON(response_geocoding_geo_json_feature->properties);
    if(properties_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "properties", properties_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_geocoding_geo_json_feature_t *response_geocoding_geo_json_feature_parseFromJSON(cJSON *response_geocoding_geo_json_featureJSON){

    response_geocoding_geo_json_feature_t *response_geocoding_geo_json_feature_local_var = NULL;

    // response_geocoding_geo_json_feature->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(response_geocoding_geo_json_featureJSON, "type");
    if (!type) {
        goto end;
    }

    
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }

    // response_geocoding_geo_json_feature->geometry
    cJSON *geometry = cJSON_GetObjectItemCaseSensitive(response_geocoding_geo_json_featureJSON, "geometry");
    if (!geometry) {
        goto end;
    }

    response_geocoding_geometry_t *geometry_local_nonprim = NULL;
    
    geometry_local_nonprim = response_geocoding_geometry_parseFromJSON(geometry); //nonprimitive

    // response_geocoding_geo_json_feature->properties
    cJSON *properties = cJSON_GetObjectItemCaseSensitive(response_geocoding_geo_json_featureJSON, "properties");
    if (!properties) {
        goto end;
    }

    response_geocoding_properties_t *properties_local_nonprim = NULL;
    
    properties_local_nonprim = response_geocoding_properties_parseFromJSON(properties); //nonprimitive


    response_geocoding_geo_json_feature_local_var = response_geocoding_geo_json_feature_create (
        strdup(type->valuestring),
        geometry_local_nonprim,
        properties_local_nonprim
        );

    return response_geocoding_geo_json_feature_local_var;
end:
    return NULL;

}
