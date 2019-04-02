#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_fares.h"
#include "list.h"
#include "response_fare_ticket.h"
#include "response_fares_breakdown_item.h"


response_fares_t *response_fares_create(
    list_t *breakdown,
    list_t *tickets_total
    ) {
	response_fares_t *response_fares = malloc(sizeof(response_fares_t));
	response_fares->breakdown = breakdown;
	response_fares->tickets_total = tickets_total;

	return response_fares;
}


void response_fares_free(response_fares_t *response_fares) {
    listEntry_t *listEntry;
		list_ForEach(listEntry, response_fares->breakdown) {
		response_fares_breakdown_item_free(listEntry->data);
	}
	list_free(response_fares->breakdown);
		list_ForEach(listEntry, response_fares->tickets_total) {
		response_fare_ticket_free(listEntry->data);
	}
	list_free(response_fares->tickets_total);

	free(response_fares);
}

cJSON *response_fares_convertToJSON(response_fares_t *response_fares) {
	cJSON *item = cJSON_CreateObject();
	// response_fares->breakdown
    cJSON *breakdown = cJSON_AddArrayToObject(item, "breakdown");
	if(breakdown == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *breakdownListEntry;
	list_ForEach(breakdownListEntry, response_fares->breakdown) {
		cJSON *item = response_fares_breakdown_item_convertToJSON(breakdownListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(breakdown, item);
	}

	// response_fares->tickets_total
    cJSON *tickets_total = cJSON_AddArrayToObject(item, "tickets_total");
	if(tickets_total == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *tickets_totalListEntry;
	list_ForEach(tickets_totalListEntry, response_fares->tickets_total) {
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

response_fares_t *response_fares_parseFromJSON(char *jsonString){

    response_fares_t *response_fares = NULL;
    cJSON *response_faresJSON = cJSON_Parse(jsonString);
    if(response_faresJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_fares->breakdown
    cJSON *breakdown;
    cJSON *breakdownJSON = cJSON_GetObjectItemCaseSensitive(response_faresJSON,"breakdown");
    if(!cJSON_IsArray(breakdownJSON)){
        goto end; //nonprimitive container
    }

    list_t *breakdownList = list_create();

    cJSON_ArrayForEach(breakdown,breakdownJSON )
    {
        if(!cJSON_IsObject(breakdown)){
            goto end;
        }
		char *JSONData = cJSON_Print(breakdown);
        response_fares_breakdown_item_t *breakdownItem = response_fares_breakdown_item_parseFromJSON(JSONData);

        list_addElement(breakdownList, breakdownItem);
        free(JSONData);
    }

    // response_fares->tickets_total
    cJSON *tickets_total;
    cJSON *tickets_totalJSON = cJSON_GetObjectItemCaseSensitive(response_faresJSON,"tickets_total");
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


    response_fares = response_fares_create (
        breakdownList,
        tickets_totalList
        );
 cJSON_Delete(response_faresJSON);
    return response_fares;
end:
    cJSON_Delete(response_faresJSON);
    return NULL;

}

