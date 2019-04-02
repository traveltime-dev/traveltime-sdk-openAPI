#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_filter_postcode.h"
#include "list.h"
#include "response_time_filter_postcodes_properties.h"
#include "string.h"


response_time_filter_postcode_t *response_time_filter_postcode_create(
    char_t *code,
    list_t *properties
    ) {
	response_time_filter_postcode_t *response_time_filter_postcode = malloc(sizeof(response_time_filter_postcode_t));
	response_time_filter_postcode->code = code;
	response_time_filter_postcode->properties = properties;

	return response_time_filter_postcode;
}


void response_time_filter_postcode_free(response_time_filter_postcode_t *response_time_filter_postcode) {
    listEntry_t *listEntry;
	string_free(response_time_filter_postcode->code);
		list_ForEach(listEntry, response_time_filter_postcode->properties) {
		response_time_filter_postcodes_properties_free(listEntry->data);
	}
	list_free(response_time_filter_postcode->properties);

	free(response_time_filter_postcode);
}

cJSON *response_time_filter_postcode_convertToJSON(response_time_filter_postcode_t *response_time_filter_postcode) {
	cJSON *item = cJSON_CreateObject();
	// response_time_filter_postcode->code
	cJSON *code = string_convertToJSON(response_time_filter_postcode->code);
	if(code == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "code", code);
	if(item->child == NULL) {
		goto fail;
	}

	// response_time_filter_postcode->properties
    cJSON *properties = cJSON_AddArrayToObject(item, "properties");
	if(properties == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *propertiesListEntry;
	list_ForEach(propertiesListEntry, response_time_filter_postcode->properties) {
		cJSON *item = response_time_filter_postcodes_properties_convertToJSON(propertiesListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(properties, item);
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_time_filter_postcode_t *response_time_filter_postcode_parseFromJSON(char *jsonString){

    response_time_filter_postcode_t *response_time_filter_postcode = NULL;
    cJSON *response_time_filter_postcodeJSON = cJSON_Parse(jsonString);
    if(response_time_filter_postcodeJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_filter_postcode->code
    string_t *code;
    cJSON *codeJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcodeJSON, "code");
    if(response_time_filter_postcodeJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *codeJSONData = cJSON_Print(codeJSON);
    code = string_parseFromJSON(codeJSONData);

    // response_time_filter_postcode->properties
    cJSON *properties;
    cJSON *propertiesJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcodeJSON,"properties");
    if(!cJSON_IsArray(propertiesJSON)){
        goto end; //nonprimitive container
    }

    list_t *propertiesList = list_create();

    cJSON_ArrayForEach(properties,propertiesJSON )
    {
        if(!cJSON_IsObject(properties)){
            goto end;
        }
		char *JSONData = cJSON_Print(properties);
        response_time_filter_postcodes_properties_t *propertiesItem = response_time_filter_postcodes_properties_parseFromJSON(JSONData);

        list_addElement(propertiesList, propertiesItem);
        free(JSONData);
    }


    response_time_filter_postcode = response_time_filter_postcode_create (
        code,
        propertiesList
        );
        free(codeJSONData);
 cJSON_Delete(response_time_filter_postcodeJSON);
    return response_time_filter_postcode;
end:
    cJSON_Delete(response_time_filter_postcodeJSON);
    return NULL;

}

