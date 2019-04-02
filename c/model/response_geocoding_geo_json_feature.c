#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_geocoding_geo_json_feature.h"
#include "response_geocoding_geometry.h"
#include "response_geocoding_properties.h"


response_geocoding_geo_json_feature_t *response_geocoding_geo_json_feature_create(
    char *type,
    response_geocoding_geometry_t *geometry,
    response_geocoding_properties_t *properties
    ) {
	response_geocoding_geo_json_feature_t *response_geocoding_geo_json_feature = malloc(sizeof(response_geocoding_geo_json_feature_t));
	response_geocoding_geo_json_feature->type = type;
	response_geocoding_geo_json_feature->geometry = geometry;
	response_geocoding_geo_json_feature->properties = properties;

	return response_geocoding_geo_json_feature;
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
    if(cJSON_AddStringToObject(item, "type", response_geocoding_geo_json_feature->type) == NULL) {
    goto fail; //String
    }

	// response_geocoding_geo_json_feature->geometry
	cJSON *geometry = response_geocoding_geometry_convertToJSON(response_geocoding_geo_json_feature->geometry);
	if(geometry == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "geometry", geometry);
	if(item->child == NULL) {
		goto fail;
	}

	// response_geocoding_geo_json_feature->properties
	cJSON *properties = response_geocoding_properties_convertToJSON(response_geocoding_geo_json_feature->properties);
	if(properties == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "properties", properties);
	if(item->child == NULL) {
		goto fail;
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_geocoding_geo_json_feature_t *response_geocoding_geo_json_feature_parseFromJSON(char *jsonString){

    response_geocoding_geo_json_feature_t *response_geocoding_geo_json_feature = NULL;
    cJSON *response_geocoding_geo_json_featureJSON = cJSON_Parse(jsonString);
    if(response_geocoding_geo_json_featureJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_geocoding_geo_json_feature->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(response_geocoding_geo_json_featureJSON, "type");
    if(!cJSON_IsString(type) || (type->valuestring == NULL)){
    goto end; //String
    }

    // response_geocoding_geo_json_feature->geometry
    response_geocoding_geometry_t *geometry;
    cJSON *geometryJSON = cJSON_GetObjectItemCaseSensitive(response_geocoding_geo_json_featureJSON, "geometry");
    if(response_geocoding_geo_json_featureJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *geometryJSONData = cJSON_Print(geometryJSON);
    geometry = response_geocoding_geometry_parseFromJSON(geometryJSONData);

    // response_geocoding_geo_json_feature->properties
    response_geocoding_properties_t *properties;
    cJSON *propertiesJSON = cJSON_GetObjectItemCaseSensitive(response_geocoding_geo_json_featureJSON, "properties");
    if(response_geocoding_geo_json_featureJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *propertiesJSONData = cJSON_Print(propertiesJSON);
    properties = response_geocoding_properties_parseFromJSON(propertiesJSONData);


    response_geocoding_geo_json_feature = response_geocoding_geo_json_feature_create (
        strdup(type->valuestring),
        geometry,
        properties
        );
        free(geometryJSONData);
        free(propertiesJSONData);
 cJSON_Delete(response_geocoding_geo_json_featureJSON);
    return response_geocoding_geo_json_feature;
end:
    cJSON_Delete(response_geocoding_geo_json_featureJSON);
    return NULL;

}

