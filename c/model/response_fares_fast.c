#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_fares_fast.h"
#include "list.h"
#include "response_fare_ticket.h"


response_fares_fast_t *response_fares_fast_create(
    list_t *tickets_total
    ) {
	response_fares_fast_t *response_fares_fast = malloc(sizeof(response_fares_fast_t));
	response_fares_fast->tickets_total = tickets_total;

	return response_fares_fast;
}


void response_fares_fast_free(response_fares_fast_t *response_fares_fast) {
    listEntry_t *listEntry;
		list_ForEach(listEntry, response_fares_fast->tickets_total) {
		response_fare_ticket_free(listEntry->data);
	}
	list_free(response_fares_fast->tickets_total);

	free(response_fares_fast);
}

cJSON *response_fares_fast_convertToJSON(response_fares_fast_t *response_fares_fast) {
	cJSON *item = cJSON_CreateObject();
	// response_fares_fast->tickets_total
    cJSON *tickets_total = cJSON_AddArrayToObject(item, "tickets_total");
	if(tickets_total == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *tickets_totalListEntry;
	list_ForEach(tickets_totalListEntry, response_fares_fast->tickets_total) {
		cJSON *item = response_fare_ticket_convertToJSON(tickets_totalListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(tickets_total, item);
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_fares_fast_t *response_fares_fast_parseFromJSON(char *jsonString){

    response_fares_fast_t *response_fares_fast = NULL;
    cJSON *response_fares_fastJSON = cJSON_Parse(jsonString);
    if(response_fares_fastJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_fares_fast->tickets_total
    cJSON *tickets_total;
    cJSON *tickets_totalJSON = cJSON_GetObjectItemCaseSensitive(response_fares_fastJSON,"tickets_total");
    if(!cJSON_IsArray(tickets_totalJSON)){
        goto end; //nonprimitive container
    }

    list_t *tickets_totalList = list_create();

    cJSON_ArrayForEach(tickets_total,tickets_totalJSON )
    {
        if(!cJSON_IsObject(tickets_total)){
            goto end;
        }
		char *JSONData = cJSON_Print(tickets_total);
        response_fare_ticket_t *tickets_totalItem = response_fare_ticket_parseFromJSON(JSONData);

        list_addElement(tickets_totalList, tickets_totalItem);
        free(JSONData);
    }


    response_fares_fast = response_fares_fast_create (
        tickets_totalList
        );
 cJSON_Delete(response_fares_fastJSON);
    return response_fares_fast;
end:
    cJSON_Delete(response_fares_fastJSON);
    return NULL;

}

