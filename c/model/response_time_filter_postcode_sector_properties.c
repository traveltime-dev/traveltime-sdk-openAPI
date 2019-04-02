#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_filter_postcode_sector_properties.h"
#include "response_travel_time_statistics.h"


response_time_filter_postcode_sector_properties_t *response_time_filter_postcode_sector_properties_create(
    response_travel_time_statistics_t *travel_time_reachable,
    response_travel_time_statistics_t *travel_time_all,
    double coverage
    ) {
	response_time_filter_postcode_sector_properties_t *response_time_filter_postcode_sector_properties = malloc(sizeof(response_time_filter_postcode_sector_properties_t));
	response_time_filter_postcode_sector_properties->travel_time_reachable = travel_time_reachable;
	response_time_filter_postcode_sector_properties->travel_time_all = travel_time_all;
	response_time_filter_postcode_sector_properties->coverage = coverage;

	return response_time_filter_postcode_sector_properties;
}


void response_time_filter_postcode_sector_properties_free(response_time_filter_postcode_sector_properties_t *response_time_filter_postcode_sector_properties) {
    listEntry_t *listEntry;
	response_travel_time_statistics_free(response_time_filter_postcode_sector_properties->travel_time_reachable);
	response_travel_time_statistics_free(response_time_filter_postcode_sector_properties->travel_time_all);

	free(response_time_filter_postcode_sector_properties);
}

cJSON *response_time_filter_postcode_sector_properties_convertToJSON(response_time_filter_postcode_sector_properties_t *response_time_filter_postcode_sector_properties) {
	cJSON *item = cJSON_CreateObject();
	// response_time_filter_postcode_sector_properties->travel_time_reachable
	cJSON *travel_time_reachable = response_travel_time_statistics_convertToJSON(response_time_filter_postcode_sector_properties->travel_time_reachable);
	if(travel_time_reachable == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "travel_time_reachable", travel_time_reachable);
	if(item->child == NULL) {
		goto fail;
	}

	// response_time_filter_postcode_sector_properties->travel_time_all
	cJSON *travel_time_all = response_travel_time_statistics_convertToJSON(response_time_filter_postcode_sector_properties->travel_time_all);
	if(travel_time_all == NULL) {
		goto fail; //nonprimitive
	}
	cJSON_AddItemToObject(item, "travel_time_all", travel_time_all);
	if(item->child == NULL) {
		goto fail;
	}

	// response_time_filter_postcode_sector_properties->coverage
    if(cJSON_AddNumberToObject(item, "coverage", response_time_filter_postcode_sector_properties->coverage) == NULL) {
    goto fail; //Numeric
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_time_filter_postcode_sector_properties_t *response_time_filter_postcode_sector_properties_parseFromJSON(char *jsonString){

    response_time_filter_postcode_sector_properties_t *response_time_filter_postcode_sector_properties = NULL;
    cJSON *response_time_filter_postcode_sector_propertiesJSON = cJSON_Parse(jsonString);
    if(response_time_filter_postcode_sector_propertiesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_filter_postcode_sector_properties->travel_time_reachable
    response_travel_time_statistics_t *travel_time_reachable;
    cJSON *travel_time_reachableJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_sector_propertiesJSON, "travel_time_reachable");
    if(response_time_filter_postcode_sector_propertiesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *travel_time_reachableJSONData = cJSON_Print(travel_time_reachableJSON);
    travel_time_reachable = response_travel_time_statistics_parseFromJSON(travel_time_reachableJSONData);

    // response_time_filter_postcode_sector_properties->travel_time_all
    response_travel_time_statistics_t *travel_time_all;
    cJSON *travel_time_allJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_sector_propertiesJSON, "travel_time_all");
    if(response_time_filter_postcode_sector_propertiesJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL)
            fprintf(stderr, "Error Before: %s\n", error_ptr);
        goto end; //nonprimitive
    }
    char *travel_time_allJSONData = cJSON_Print(travel_time_allJSON);
    travel_time_all = response_travel_time_statistics_parseFromJSON(travel_time_allJSONData);

    // response_time_filter_postcode_sector_properties->coverage
    cJSON *coverage = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_sector_propertiesJSON, "coverage");
    if(!cJSON_IsNumber(coverage))
    {
    goto end; //Numeric
    }


    response_time_filter_postcode_sector_properties = response_time_filter_postcode_sector_properties_create (
        travel_time_reachable,
        travel_time_all,
        coverage->valuedouble
        );
        free(travel_time_reachableJSONData);
        free(travel_time_allJSONData);
 cJSON_Delete(response_time_filter_postcode_sector_propertiesJSON);
    return response_time_filter_postcode_sector_properties;
end:
    cJSON_Delete(response_time_filter_postcode_sector_propertiesJSON);
    return NULL;

}

