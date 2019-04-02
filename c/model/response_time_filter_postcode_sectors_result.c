#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_time_filter_postcode_sectors_result.h"
#include "list.h"
#include "response_time_filter_postcode_sector.h"


response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result_create(
    char *search_id,
    list_t *sectors
    ) {
	response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result = malloc(sizeof(response_time_filter_postcode_sectors_result_t));
	response_time_filter_postcode_sectors_result->search_id = search_id;
	response_time_filter_postcode_sectors_result->sectors = sectors;

	return response_time_filter_postcode_sectors_result;
}


void response_time_filter_postcode_sectors_result_free(response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result) {
    listEntry_t *listEntry;
    free(response_time_filter_postcode_sectors_result->search_id);
		list_ForEach(listEntry, response_time_filter_postcode_sectors_result->sectors) {
		response_time_filter_postcode_sector_free(listEntry->data);
	}
	list_free(response_time_filter_postcode_sectors_result->sectors);

	free(response_time_filter_postcode_sectors_result);
}

cJSON *response_time_filter_postcode_sectors_result_convertToJSON(response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result) {
	cJSON *item = cJSON_CreateObject();
	// response_time_filter_postcode_sectors_result->search_id
    if(cJSON_AddStringToObject(item, "search_id", response_time_filter_postcode_sectors_result->search_id) == NULL) {
    goto fail; //String
    }

	// response_time_filter_postcode_sectors_result->sectors
    cJSON *sectors = cJSON_AddArrayToObject(item, "sectors");
	if(sectors == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *sectorsListEntry;
	list_ForEach(sectorsListEntry, response_time_filter_postcode_sectors_result->sectors) {
		cJSON *item = response_time_filter_postcode_sector_convertToJSON(sectorsListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(sectors, item);
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result_parseFromJSON(char *jsonString){

    response_time_filter_postcode_sectors_result_t *response_time_filter_postcode_sectors_result = NULL;
    cJSON *response_time_filter_postcode_sectors_resultJSON = cJSON_Parse(jsonString);
    if(response_time_filter_postcode_sectors_resultJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_time_filter_postcode_sectors_result->search_id
    cJSON *search_id = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_sectors_resultJSON, "search_id");
    if(!cJSON_IsString(search_id) || (search_id->valuestring == NULL)){
    goto end; //String
    }

    // response_time_filter_postcode_sectors_result->sectors
    cJSON *sectors;
    cJSON *sectorsJSON = cJSON_GetObjectItemCaseSensitive(response_time_filter_postcode_sectors_resultJSON,"sectors");
    if(!cJSON_IsArray(sectorsJSON)){
        goto end; //nonprimitive container
    }

    list_t *sectorsList = list_create();

    cJSON_ArrayForEach(sectors,sectorsJSON )
    {
        if(!cJSON_IsObject(sectors)){
            goto end;
        }
		char *JSONData = cJSON_Print(sectors);
        response_time_filter_postcode_sector_t *sectorsItem = response_time_filter_postcode_sector_parseFromJSON(JSONData);

        list_addElement(sectorsList, sectorsItem);
        free(JSONData);
    }


    response_time_filter_postcode_sectors_result = response_time_filter_postcode_sectors_result_create (
        strdup(search_id->valuestring),
        sectorsList
        );
 cJSON_Delete(response_time_filter_postcode_sectors_resultJSON);
    return response_time_filter_postcode_sectors_result;
end:
    cJSON_Delete(response_time_filter_postcode_sectors_resultJSON);
    return NULL;

}

