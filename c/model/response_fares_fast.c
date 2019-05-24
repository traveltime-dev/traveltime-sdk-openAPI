#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_fares_fast.h"



response_fares_fast_t *response_fares_fast_create(
    list_t *tickets_total
    ) {
	response_fares_fast_t *response_fares_fast_local_var = malloc(sizeof(response_fares_fast_t));
    if (!response_fares_fast_local_var) {
        return NULL;
    }
	response_fares_fast_local_var->tickets_total = tickets_total;

	return response_fares_fast_local_var;
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
    if (!response_fares_fast->tickets_total) {
        goto fail;
    }
    
    cJSON *tickets_total = cJSON_AddArrayToObject(item, "tickets_total");
    if(tickets_total == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *tickets_totalListEntry;
    if (response_fares_fast->tickets_total) {
    list_ForEach(tickets_totalListEntry, response_fares_fast->tickets_total) {
    cJSON *itemLocal = response_fare_ticket_convertToJSON(tickets_totalListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(tickets_total, itemLocal);
    }
    }

	return item;
fail:
	if (item) {
        cJSON_Delete(item);
    }
	return NULL;
}

response_fares_fast_t *response_fares_fast_parseFromJSON(cJSON *response_fares_fastJSON){

    response_fares_fast_t *response_fares_fast_local_var = NULL;

    // response_fares_fast->tickets_total
    cJSON *tickets_total = cJSON_GetObjectItemCaseSensitive(response_fares_fastJSON, "tickets_total");
    if (!tickets_total) {
        goto end;
    }

    list_t *tickets_totalList;
    
    cJSON *tickets_total_local_nonprimitive;
    if(!cJSON_IsArray(tickets_total)){
        goto end; //nonprimitive container
    }

    tickets_totalList = list_create();

    cJSON_ArrayForEach(tickets_total_local_nonprimitive,tickets_total )
    {
        if(!cJSON_IsObject(tickets_total_local_nonprimitive)){
            goto end;
        }
        response_fare_ticket_t *tickets_totalItem = response_fare_ticket_parseFromJSON(tickets_total_local_nonprimitive);

        list_addElement(tickets_totalList, tickets_totalItem);
    }


    response_fares_fast_local_var = response_fares_fast_create (
        tickets_totalList
        );

    return response_fares_fast_local_var;
end:
    return NULL;

}
