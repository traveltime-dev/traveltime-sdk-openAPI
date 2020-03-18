#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_geocoding_properties.h"



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
    response_geocoding_properties_t *response_geocoding_properties_local_var = malloc(sizeof(response_geocoding_properties_t));
    if (!response_geocoding_properties_local_var) {
        return NULL;
    }
    response_geocoding_properties_local_var->name = name;
    response_geocoding_properties_local_var->label = label;
    response_geocoding_properties_local_var->score = score;
    response_geocoding_properties_local_var->house_number = house_number;
    response_geocoding_properties_local_var->street = street;
    response_geocoding_properties_local_var->region = region;
    response_geocoding_properties_local_var->region_code = region_code;
    response_geocoding_properties_local_var->neighbourhood = neighbourhood;
    response_geocoding_properties_local_var->county = county;
    response_geocoding_properties_local_var->macroregion = macroregion;
    response_geocoding_properties_local_var->city = city;
    response_geocoding_properties_local_var->country = country;
    response_geocoding_properties_local_var->country_code = country_code;
    response_geocoding_properties_local_var->continent = continent;
    response_geocoding_properties_local_var->postcode = postcode;
    response_geocoding_properties_local_var->features = features;

    return response_geocoding_properties_local_var;
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
    if (!response_geocoding_properties->name) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "name", response_geocoding_properties->name) == NULL) {
    goto fail; //String
    }


    // response_geocoding_properties->label
    if (!response_geocoding_properties->label) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "label", response_geocoding_properties->label) == NULL) {
    goto fail; //String
    }


    // response_geocoding_properties->score
    if(response_geocoding_properties->score) { 
    if(cJSON_AddNumberToObject(item, "score", response_geocoding_properties->score) == NULL) {
    goto fail; //Numeric
    }
     } 


    // response_geocoding_properties->house_number
    if(response_geocoding_properties->house_number) { 
    if(cJSON_AddStringToObject(item, "house_number", response_geocoding_properties->house_number) == NULL) {
    goto fail; //String
    }
     } 


    // response_geocoding_properties->street
    if(response_geocoding_properties->street) { 
    if(cJSON_AddStringToObject(item, "street", response_geocoding_properties->street) == NULL) {
    goto fail; //String
    }
     } 


    // response_geocoding_properties->region
    if(response_geocoding_properties->region) { 
    if(cJSON_AddStringToObject(item, "region", response_geocoding_properties->region) == NULL) {
    goto fail; //String
    }
     } 


    // response_geocoding_properties->region_code
    if(response_geocoding_properties->region_code) { 
    if(cJSON_AddStringToObject(item, "region_code", response_geocoding_properties->region_code) == NULL) {
    goto fail; //String
    }
     } 


    // response_geocoding_properties->neighbourhood
    if(response_geocoding_properties->neighbourhood) { 
    if(cJSON_AddStringToObject(item, "neighbourhood", response_geocoding_properties->neighbourhood) == NULL) {
    goto fail; //String
    }
     } 


    // response_geocoding_properties->county
    if(response_geocoding_properties->county) { 
    if(cJSON_AddStringToObject(item, "county", response_geocoding_properties->county) == NULL) {
    goto fail; //String
    }
     } 


    // response_geocoding_properties->macroregion
    if(response_geocoding_properties->macroregion) { 
    if(cJSON_AddStringToObject(item, "macroregion", response_geocoding_properties->macroregion) == NULL) {
    goto fail; //String
    }
     } 


    // response_geocoding_properties->city
    if(response_geocoding_properties->city) { 
    if(cJSON_AddStringToObject(item, "city", response_geocoding_properties->city) == NULL) {
    goto fail; //String
    }
     } 


    // response_geocoding_properties->country
    if(response_geocoding_properties->country) { 
    if(cJSON_AddStringToObject(item, "country", response_geocoding_properties->country) == NULL) {
    goto fail; //String
    }
     } 


    // response_geocoding_properties->country_code
    if(response_geocoding_properties->country_code) { 
    if(cJSON_AddStringToObject(item, "country_code", response_geocoding_properties->country_code) == NULL) {
    goto fail; //String
    }
     } 


    // response_geocoding_properties->continent
    if(response_geocoding_properties->continent) { 
    if(cJSON_AddStringToObject(item, "continent", response_geocoding_properties->continent) == NULL) {
    goto fail; //String
    }
     } 


    // response_geocoding_properties->postcode
    if(response_geocoding_properties->postcode) { 
    if(cJSON_AddStringToObject(item, "postcode", response_geocoding_properties->postcode) == NULL) {
    goto fail; //String
    }
     } 


    // response_geocoding_properties->features
    if(response_geocoding_properties->features) { 
    cJSON *features_local_JSON = response_map_info_features_convertToJSON(response_geocoding_properties->features);
    if(features_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "features", features_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
     } 

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_geocoding_properties_t *response_geocoding_properties_parseFromJSON(cJSON *response_geocoding_propertiesJSON){

    response_geocoding_properties_t *response_geocoding_properties_local_var = NULL;

    // response_geocoding_properties->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "name");
    if (!name) {
        goto end;
    }

    
    if(!cJSON_IsString(name))
    {
    goto end; //String
    }

    // response_geocoding_properties->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "label");
    if (!label) {
        goto end;
    }

    
    if(!cJSON_IsString(label))
    {
    goto end; //String
    }

    // response_geocoding_properties->score
    cJSON *score = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "score");
    if (score) { 
    if(!cJSON_IsNumber(score))
    {
    goto end; //Numeric
    }
    }

    // response_geocoding_properties->house_number
    cJSON *house_number = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "house_number");
    if (house_number) { 
    if(!cJSON_IsString(house_number))
    {
    goto end; //String
    }
    }

    // response_geocoding_properties->street
    cJSON *street = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "street");
    if (street) { 
    if(!cJSON_IsString(street))
    {
    goto end; //String
    }
    }

    // response_geocoding_properties->region
    cJSON *region = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "region");
    if (region) { 
    if(!cJSON_IsString(region))
    {
    goto end; //String
    }
    }

    // response_geocoding_properties->region_code
    cJSON *region_code = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "region_code");
    if (region_code) { 
    if(!cJSON_IsString(region_code))
    {
    goto end; //String
    }
    }

    // response_geocoding_properties->neighbourhood
    cJSON *neighbourhood = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "neighbourhood");
    if (neighbourhood) { 
    if(!cJSON_IsString(neighbourhood))
    {
    goto end; //String
    }
    }

    // response_geocoding_properties->county
    cJSON *county = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "county");
    if (county) { 
    if(!cJSON_IsString(county))
    {
    goto end; //String
    }
    }

    // response_geocoding_properties->macroregion
    cJSON *macroregion = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "macroregion");
    if (macroregion) { 
    if(!cJSON_IsString(macroregion))
    {
    goto end; //String
    }
    }

    // response_geocoding_properties->city
    cJSON *city = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "city");
    if (city) { 
    if(!cJSON_IsString(city))
    {
    goto end; //String
    }
    }

    // response_geocoding_properties->country
    cJSON *country = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "country");
    if (country) { 
    if(!cJSON_IsString(country))
    {
    goto end; //String
    }
    }

    // response_geocoding_properties->country_code
    cJSON *country_code = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "country_code");
    if (country_code) { 
    if(!cJSON_IsString(country_code))
    {
    goto end; //String
    }
    }

    // response_geocoding_properties->continent
    cJSON *continent = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "continent");
    if (continent) { 
    if(!cJSON_IsString(continent))
    {
    goto end; //String
    }
    }

    // response_geocoding_properties->postcode
    cJSON *postcode = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "postcode");
    if (postcode) { 
    if(!cJSON_IsString(postcode))
    {
    goto end; //String
    }
    }

    // response_geocoding_properties->features
    cJSON *features = cJSON_GetObjectItemCaseSensitive(response_geocoding_propertiesJSON, "features");
    response_map_info_features_t *features_local_nonprim = NULL;
    if (features) { 
    features_local_nonprim = response_map_info_features_parseFromJSON(features); //nonprimitive
    }


    response_geocoding_properties_local_var = response_geocoding_properties_create (
        strdup(name->valuestring),
        strdup(label->valuestring),
        score ? score->valuedouble : 0,
        house_number ? strdup(house_number->valuestring) : NULL,
        street ? strdup(street->valuestring) : NULL,
        region ? strdup(region->valuestring) : NULL,
        region_code ? strdup(region_code->valuestring) : NULL,
        neighbourhood ? strdup(neighbourhood->valuestring) : NULL,
        county ? strdup(county->valuestring) : NULL,
        macroregion ? strdup(macroregion->valuestring) : NULL,
        city ? strdup(city->valuestring) : NULL,
        country ? strdup(country->valuestring) : NULL,
        country_code ? strdup(country_code->valuestring) : NULL,
        continent ? strdup(continent->valuestring) : NULL,
        postcode ? strdup(postcode->valuestring) : NULL,
        features ? features_local_nonprim : NULL
        );

    return response_geocoding_properties_local_var;
end:
    return NULL;

}
