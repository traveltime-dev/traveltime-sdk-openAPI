#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_filter_postcode_district.h"
#include "response_time_filter_postcode_district_properties.h"
#include "string.h"


response_time_filter_postcode_district_t *response_time_filter_postcode_district_create(
    char_t *code,
    response_time_filter_postcode_district_properties_t *properties
    ) {
	response_time_filter_postcode_district_t *response_time_filter_postcode_district = malloc(sizeof(response_time_filter_postcode_district_t));
	response_time_filter_postcode_district->code = code;
	response_time_filter_postcode_district->properties = properties;

	return response_time_filter_postcode_district;
}


void response_time_filter_postcode_district_free(response_time_filter_postcode_district_t *response_time_filter_postcode_district) {
    listEntry_t *listEntry;
	string_free(response_time_filter_postcode_district->code);
	response_time_filter_postcode_district_properties_free(response_time_filter_postcode_district->properties);

	free(response_time_filter_postcode_district);
}

cJSON *response_time_filter_postcode_district_convertToJSON(response_time_filter_postcode_district_t *response_time_filter_postcode_district) {
	cJSON *item = cJSON_CreateObject();
	// response_time_filter_postcode_district->code
	cJSON *code = string_convertToJSON(response_time_filter_postcode_district->code);
	if(code == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "code", code);
	if(item->child == NULL) {
		goto fail;
	}

	// response_time_filter_postcode_district->properties
	cJSON *properties = response_time_filter_postcode_district_properties_convertToJSON(response_time_filter_postcode_district->properties);
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

response_time_filter_postcode_district_t *response_time_filter_postcode_district_parseFromJSON(char *jsonString){

    response_time_filter_postcode_district_t *response_time_filter_postcode_district = NULL;
    cJSON *response_time_filter_postcode_districtJSON = cJSON_Parse(jsonString);
    if(response_time_filter_postcode_districtJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_filter_postcode_district->code
    string_t *code;
    cJSON *codeJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_districtJSON, "code");
    if(response_time_filter_postcode_districtJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *codeJSONData = cJSON_Print(codeJSON);
    code = string_parseFromJSON(codeJSONData);

    // response_time_filter_postcode_district->properties
    response_time_filter_postcode_district_properties_t *properties;
    cJSON *propertiesJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_districtJSON, "properties");
    if(response_time_filter_postcode_districtJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *propertiesJSONData = cJSON_Print(propertiesJSON);
    properties = response_time_filter_postcode_district_properties_parseFromJSON(propertiesJSONData);


    response_time_filter_postcode_district = response_time_filter_postcode_district_create (
        code,
        properties
        );
        free(codeJSONData);
        free(propertiesJSONData);
 cJSON_Delete(response_time_filter_postcode_districtJSON);
    return response_time_filter_postcode_district;
end:
    cJSON_Delete(response_time_filter_postcode_districtJSON);
    return NULL;

}

