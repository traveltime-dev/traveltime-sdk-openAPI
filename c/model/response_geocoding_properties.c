#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_geocoding_properties.h"
#include "response_map_info_features.h"


response_geocoding_properties_t *response_geocoding_properties_create(
    char *name,
    char *label,
    double score,
    char *house_number,
    char *street,
    char *region,
    char *region_code,
    char *neighbourhood,
    char *county,
    char *macroregion,
    char *city,
    char *country,
    char *country_code,
    char *continent,
    char *postcode,
    response_map_info_features_t *features
    ) {
	response_geocoding_properties_t *response_geocoding_properties = malloc(sizeof(response_geocoding_properties_t));
	response_geocoding_properties->name = name;
	response_geocoding_properties->label = label;
	response_geocoding_properties->score = score;
	response_geocoding_properties->house_number = house_number;
	response_geocoding_properties->street = street;
	response_geocoding_properties->region = region;
	response_geocoding_properties->region_code = region_code;
	response_geocoding_properties->neighbourhood = neighbourhood;
	response_geocoding_properties->county = county;
	response_geocoding_properties->macroregion = macroregion;
	response_geocoding_properties->city = city;
	response_geocoding_properties->country = country;
	response_geocoding_properties->country_code = country_code;
	response_geocoding_properties->continent = continent;
	response_geocoding_properties->postcode = postcode;
	response_geocoding_properties->features = features;

	return response_geocoding_properties;
}


void response_geocoding_properties_free(response_geocoding_properties_t *response_geocoding_properties) {
    listEntry_t *listEntry;
    free(response_geocoding_properties->name);
    free(response_geocoding_properties->label);
    free(response_geocoding_properties->house_number);
    free(response_geocoding_properties->street);
    free(response_geocoding_properties->region);
    free(response_geocoding_properties->region_code);
    free(response_geocoding_properties->neighbourhood);
    free(response_geocoding_properties->county);
    free(response_geocoding_properties->macroregion);
    free(response_geocoding_properties->city);
    free(response_geocoding_properties->country);
    free(response_geocoding_properties->country_code);
    free(response_geocoding_properties->continent);
    free(response_geocoding_properties->postcode);
	response_map_info_features_free(response_geocoding_properties->features);

	free(response_geocoding_properties);
}

cJSON *response_geocoding_properties_convertToJSON(response_geocoding_properties_t *response_geocoding_properties) {
	cJSON *item = cJSON_CreateObject();
	// response_geocoding_properties->name
    if(cJSON_AddStringToObject(item, "name", response_geocoding_properties->name) == NULL) {
    goto fail; //String
    }

	// response_geocoding_properties->label
    if(cJSON_AddStringToObject(item, "label", response_geocoding_properties->label) == NULL) {
    goto fail; //String
    }

	// response_geocoding_properties->score
    if(cJSON_AddNumberToObject(item, "score", response_geocoding_properties->score) == NULL) {
    goto fail; //Numeric
    }

	// response_geocoding_properties->house_number
    if(cJSON_AddStringToObject(item, "house_number", response_geocoding_properties->house_number) == NULL) {
    goto fail; //String
    }

	// response_geocoding_properties->street
    if(cJSON_AddStringToObject(item, "street", response_geocoding_properties->street) == NULL) {
    goto fail; //String
    }

	// response_geocoding_properties->region
    if(cJSON_AddStringToObject(item, "region", response_geocoding_properties->region) == NULL) {
    goto fail; //String
    }

	// response_geocoding_properties->region_code
    if(cJSON_AddStringToObject(item, "region_code", response_geocoding_properties->region_code) == NULL) {
    goto fail; //String
    }

	// response_geocoding_properties->neighbourhood
    if(cJSON_AddStringToObject(item, "neighbourhood", response_geocoding_properties->neighbourhood) == NULL) {
    goto fail; //String
    }

	// response_geocoding_properties->county
    if(cJSON_AddStringToObject(item, "county", response_geocoding_properties->county) == NULL) {
    goto fail; //String
    }

	// response_geocoding_properties->macroregion
    if(cJSON_AddStringToObject(item, "macroregion", response_geocoding_properties->macroregion) == NULL) {
    goto fail; //String
    }

	// response_geocoding_properties->city
    if(cJSON_AddStringToObject(item, "city", response_geocoding_properties->city) == NULL) {
    goto fail; //String
    }

	// response_geocoding_properties->country
    if(cJSON_AddStringToObject(item, "country", response_geocoding_properties->country) == NULL) {
    goto fail; //String
    }

	// response_geocoding_properties->country_code
    if(cJSON_AddStringToObject(item, "country_code", response_geocoding_properties->country_code) == NULL) {
    goto fail; //String
    }

	// response_geocoding_properties->continent
    if(cJSON_AddStringToObject(item, "continent", response_geocoding_properties->continent) == NULL) {
    goto fail; //String
    }

	// response_geocoding_properties->postcode
    if(cJSON_AddStringToObject(item, "postcode", response_geocoding_properties->postcode) == NULL) {
    goto fail; //String
    }

	// response_geocoding_properties->features
	cJSON *features = response_map_info_features_convertToJSON(response_geocoding_properties->features);
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

response_geocoding_properties_t *response_geocoding_properties_parseFromJSON(char *jsonString){

    response_geocoding_properties_t *response_geocoding_properties = NULL;
    cJSON *response_geocoding_propertiesJSON = cJSON_Parse(jsonString);
    if(response_geocoding_propertiesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_geocoding_properties->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "name");
    if(!cJSON_IsString(name) || (name->valuestring == NULL)){
    goto end; //String
    }

    // response_geocoding_properties->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "label");
    if(!cJSON_IsString(label) || (label->valuestring == NULL)){
    goto end; //String
    }

    // response_geocoding_properties->score
    cJSON *score = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "score");
    if(!cJSON_IsNumber(score))
    {
    goto end; //Numeric
    }

    // response_geocoding_properties->house_number
    cJSON *house_number = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "house_number");
    if(!cJSON_IsString(house_number) || (house_number->valuestring == NULL)){
    goto end; //String
    }

    // response_geocoding_properties->street
    cJSON *street = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "street");
    if(!cJSON_IsString(street) || (street->valuestring == NULL)){
    goto end; //String
    }

    // response_geocoding_properties->region
    cJSON *region = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "region");
    if(!cJSON_IsString(region) || (region->valuestring == NULL)){
    goto end; //String
    }

    // response_geocoding_properties->region_code
    cJSON *region_code = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "region_code");
    if(!cJSON_IsString(region_code) || (region_code->valuestring == NULL)){
    goto end; //String
    }

    // response_geocoding_properties->neighbourhood
    cJSON *neighbourhood = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "neighbourhood");
    if(!cJSON_IsString(neighbourhood) || (neighbourhood->valuestring == NULL)){
    goto end; //String
    }

    // response_geocoding_properties->county
    cJSON *county = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "county");
    if(!cJSON_IsString(county) || (county->valuestring == NULL)){
    goto end; //String
    }

    // response_geocoding_properties->macroregion
    cJSON *macroregion = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "macroregion");
    if(!cJSON_IsString(macroregion) || (macroregion->valuestring == NULL)){
    goto end; //String
    }

    // response_geocoding_properties->city
    cJSON *city = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "city");
    if(!cJSON_IsString(city) || (city->valuestring == NULL)){
    goto end; //String
    }

    // response_geocoding_properties->country
    cJSON *country = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "country");
    if(!cJSON_IsString(country) || (country->valuestring == NULL)){
    goto end; //String
    }

    // response_geocoding_properties->country_code
    cJSON *country_code = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "country_code");
    if(!cJSON_IsString(country_code) || (country_code->valuestring == NULL)){
    goto end; //String
    }

    // response_geocoding_properties->continent
    cJSON *continent = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "continent");
    if(!cJSON_IsString(continent) || (continent->valuestring == NULL)){
    goto end; //String
    }

    // response_geocoding_properties->postcode
    cJSON *postcode = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "postcode");
    if(!cJSON_IsString(postcode) || (postcode->valuestring == NULL)){
    goto end; //String
    }

    // response_geocoding_properties->features
    response_map_info_features_t *features;
    cJSON *featuresJSON = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "features");
    if(response_geocoding_propertiesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *featuresJSONData = cJSON_Print(featuresJSON);
    features = response_map_info_features_parseFromJSON(featuresJSONData);


    response_geocoding_properties = response_geocoding_properties_create (
        strdup(name->valuestring),
        strdup(label->valuestring),
        score->valuedouble,
        strdup(house_number->valuestring),
        strdup(street->valuestring),
        strdup(region->valuestring),
        strdup(region_code->valuestring),
        strdup(neighbourhood->valuestring),
        strdup(county->valuestring),
        strdup(macroregion->valuestring),
        strdup(city->valuestring),
        strdup(country->valuestring),
        strdup(country_code->valuestring),
        strdup(continent->valuestring),
        strdup(postcode->valuestring),
        features
        );
        free(featuresJSONData);
 cJSON_Delete(response_geocoding_propertiesJSON);
    return response_geocoding_properties;
end:
    cJSON_Delete(response_geocoding_propertiesJSON);
    return NULL;

}

