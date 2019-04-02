#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_filter_postcode_sector.h"
#include "response_time_filter_postcode_sector_properties.h"
#include "string.h"


response_time_filter_postcode_sector_t *response_time_filter_postcode_sector_create(
    char_t *code,
    response_time_filter_postcode_sector_properties_t *properties
    ) {
	response_time_filter_postcode_sector_t *response_time_filter_postcode_sector = malloc(sizeof(response_time_filter_postcode_sector_t));
	response_time_filter_postcode_sector->code = code;
	response_time_filter_postcode_sector->properties = properties;

	return response_time_filter_postcode_sector;
}


void response_time_filter_postcode_sector_free(response_time_filter_postcode_sector_t *response_time_filter_postcode_sector) {
    listEntry_t *listEntry;
	string_free(response_time_filter_postcode_sector->code);
	response_time_filter_postcode_sector_properties_free(response_time_filter_postcode_sector->properties);

	free(response_time_filter_postcode_sector);
}

cJSON *response_time_filter_postcode_sector_convertToJSON(response_time_filter_postcode_sector_t *response_time_filter_postcode_sector) {
	cJSON *item = cJSON_CreateObject();
	// response_time_filter_postcode_sector->code
	cJSON *code = string_convertToJSON(response_time_filter_postcode_sector->code);
	if(code == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "code", code);
	if(item->child == NULL) {
		goto fail;
	}

	// response_time_filter_postcode_sector->properties
	cJSON *properties = response_time_filter_postcode_sector_properties_convertToJSON(response_time_filter_postcode_sector->properties);
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

response_time_filter_postcode_sector_t *response_time_filter_postcode_sector_parseFromJSON(char *jsonString){

    response_time_filter_postcode_sector_t *response_time_filter_postcode_sector = NULL;
    cJSON *response_time_filter_postcode_sectorJSON = cJSON_Parse(jsonString);
    if(response_time_filter_postcode_sectorJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_filter_postcode_sector->code
    string_t *code;
    cJSON *codeJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_sectorJSON, "code");
    if(response_time_filter_postcode_sectorJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *codeJSONData = cJSON_Print(codeJSON);
    code = string_parseFromJSON(codeJSONData);

    // response_time_filter_postcode_sector->properties
    response_time_filter_postcode_sector_properties_t *properties;
    cJSON *propertiesJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_sectorJSON, "properties");
    if(response_time_filter_postcode_sectorJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *propertiesJSONData = cJSON_Print(propertiesJSON);
    properties = response_time_filter_postcode_sector_properties_parseFromJSON(propertiesJSONData);


    response_time_filter_postcode_sector = response_time_filter_postcode_sector_create (
        code,
        properties
        );
        free(codeJSONData);
        free(propertiesJSONData);
 cJSON_Delete(response_time_filter_postcode_sectorJSON);
    return response_time_filter_postcode_sector;
end:
    cJSON_Delete(response_time_filter_postcode_sectorJSON);
    return NULL;

}

