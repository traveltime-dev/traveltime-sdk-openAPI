#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_fares.h"



response_fares_t *response_fares_create(
    list_t *breakdown,
    list_t *tickets_total
    ) {
    response_fares_t *response_fares_local_var = malloc(sizeof(response_fares_t));
    if (!response_fares_local_var) {
        return NULL;
    }
    response_fares_local_var->breakdown = breakdown;
    response_fares_local_var->tickets_total = tickets_total;

    return response_fares_local_var;
}


void response_fares_free(response_fares_t *response_fares) {
    if(NULL == response_fares){
        return ;
    }
    listEntry_t *listEntry;
    if (response_fares->breakdown) {
        list_ForEach(listEntry, response_fares->breakdown) {
            response_fares_breakdown_item_free(listEntry->data);
        }
        list_free(response_fares->breakdown);
        response_fares->breakdown = NULL;
    }
    if (response_fares->tickets_total) {
        list_ForEach(listEntry, response_fares->tickets_total) {
            response_fare_ticket_free(listEntry->data);
        }
        list_free(response_fares->tickets_total);
        response_fares->tickets_total = NULL;
    }
    free(response_fares);
}

cJSON *response_fares_convertToJSON(response_fares_t *response_fares) {
    cJSON *item = cJSON_CreateObject();

    // response_fares->breakdown
    if (!response_fares->breakdown) {
        goto fail;
    }
    
    cJSON *breakdown = cJSON_AddArrayToObject(item, "breakdown");
    if(breakdown == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *breakdownListEntry;
    if (response_fares->breakdown) {
    list_ForEach(breakdownListEntry, response_fares->breakdown) {
    cJSON *itemLocal = response_fares_breakdown_item_convertToJSON(breakdownListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(breakdown, itemLocal);
    }
    }


    // response_fares->tickets_total
    if (!response_fares->tickets_total) {
        goto fail;
    }
    
    cJSON *tickets_total = cJSON_AddArrayToObject(item, "tickets_total");
    if(tickets_total == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *tickets_totalListEntry;
    if (response_fares->tickets_total) {
    list_ForEach(tickets_totalListEntry, response_fares->tickets_total) {
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

response_fares_t *response_fares_parseFromJSON(cJSON *response_faresJSON){

    response_fares_t *response_fares_local_var = NULL;

    // response_fares->breakdown
    cJSON *breakdown = cJSON_GetObjectItemCaseSensitive(response_faresJSON, "breakdown");
    if (!breakdown) {
        goto end;
    }

    list_t *breakdownList;
    
    cJSON *breakdown_local_nonprimitive;
    if(!cJSON_IsArray(breakdown)){
        goto end; //nonprimitive container
    }

    breakdownList = list_create();

    cJSON_ArrayForEach(breakdown_local_nonprimitive,breakdown )
    {
        if(!cJSON_IsObject(breakdown_local_nonprimitive)){
            goto end;
        }
        response_fares_breakdown_item_t *breakdownItem = response_fares_breakdown_item_parseFromJSON(breakdown_local_nonprimitive);

        list_addElement(breakdownList, breakdownItem);
    }

    // response_fares->tickets_total
    cJSON *tickets_total = cJSON_GetObjectItemCaseSensitive(response_faresJSON, "tickets_total");
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


    response_fares_local_var = response_fares_create (
        breakdownList,
        tickets_totalList
        );

    return response_fares_local_var;
end:
    return NULL;

}
