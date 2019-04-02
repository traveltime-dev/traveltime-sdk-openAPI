#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_fares_breakdown_item.h"
#include "list.h"
#include "response_fare_ticket.h"
#include "response_transportation_mode.h"


response_fares_breakdown_item_t *response_fares_breakdown_item_create(
    list_t *modes,
    list_t *route_part_ids,
    list_t *tickets
    ) {
	response_fares_breakdown_item_t *response_fares_breakdown_item = malloc(sizeof(response_fares_breakdown_item_t));
	response_fares_breakdown_item->modes = modes;
	response_fares_breakdown_item->route_part_ids = route_part_ids;
	response_fares_breakdown_item->tickets = tickets;

	return response_fares_breakdown_item;
}


void response_fares_breakdown_item_free(response_fares_breakdown_item_t *response_fares_breakdown_item) {
    listEntry_t *listEntry;
		list_ForEach(listEntry, response_fares_breakdown_item->modes) {
		response_transportation_mode_free(listEntry->data);
	}
	list_free(response_fares_breakdown_item->modes);
	list_ForEach(listEntry, response_fares_breakdown_item->route_part_ids) {
		free(listEntry->data);
	}
	list_free(response_fares_breakdown_item->route_part_ids);
		list_ForEach(listEntry, response_fares_breakdown_item->tickets) {
		response_fare_ticket_free(listEntry->data);
	}
	list_free(response_fares_breakdown_item->tickets);

	free(response_fares_breakdown_item);
}

cJSON *response_fares_breakdown_item_convertToJSON(response_fares_breakdown_item_t *response_fares_breakdown_item) {
	cJSON *item = cJSON_CreateObject();
	// response_fares_breakdown_item->modes
    cJSON *modes = cJSON_AddArrayToObject(item, "modes");
	if(modes == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *modesListEntry;
	list_ForEach(modesListEntry, response_fares_breakdown_item->modes) {
		cJSON *item = response_transportation_mode_convertToJSON(modesListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(modes, item);
	}

	// response_fares_breakdown_item->route_part_ids
	cJSON *route_part_ids = cJSON_AddArrayToObject(item, "route_part_ids");
	if(route_part_ids == NULL) {
		goto fail; //primitive container
	}

	listEntry_t *route_part_idsListEntry;
    list_ForEach(route_part_idsListEntry, response_fares_breakdown_item->route_part_ids) {
        if(cJSON_AddNumberToObject(route_part_ids, "", *(double *)route_part_idsListEntry->data) == NULL)
        {
            goto fail;
        }
    }

	// response_fares_breakdown_item->tickets
    cJSON *tickets = cJSON_AddArrayToObject(item, "tickets");
	if(tickets == NULL) {
		goto fail; //nonprimitive container
	}

	listEntry_t *ticketsListEntry;
	list_ForEach(ticketsListEntry, response_fares_breakdown_item->tickets) {
		cJSON *item = response_fare_ticket_convertToJSON(ticketsListEntry->data);
		if(item == NULL) {
			goto fail;
		}
		cJSON_AddItemToArray(tickets, item);
	}

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_fares_breakdown_item_t *response_fares_breakdown_item_parseFromJSON(char *jsonString){

    response_fares_breakdown_item_t *response_fares_breakdown_item = NULL;
    cJSON *response_fares_breakdown_itemJSON = cJSON_Parse(jsonString);
    if(response_fares_breakdown_itemJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_fares_breakdown_item->modes
    cJSON *modes;
    cJSON *modesJSON = cJSON_GetObjectItemCaseSensitive(response_fares_breakdown_itemJSON,"modes");
    if(!cJSON_IsArray(modesJSON)){
        goto end; //nonprimitive container
    }

    list_t *modesList = list_create();

    cJSON_ArrayForEach(modes,modesJSON )
    {
        if(!cJSON_IsObject(modes)){
            goto end;
        }
		char *JSONData = cJSON_Print(modes);
        response_transportation_mode_t *modesItem = response_transportation_mode_parseFromJSON(JSONData);

        list_addElement(modesList, modesItem);
        free(JSONData);
    }

    // response_fares_breakdown_item->route_part_ids
    cJSON *route_part_ids;
    cJSON *route_part_idsJSON = cJSON_GetObjectItemCaseSensitive(response_fares_breakdown_itemJSON, "route_part_ids");
    if(!cJSON_IsArray(route_part_idsJSON)) {
        goto end;//primitive container
    }
    list_t *route_part_idsList = list_create();

    cJSON_ArrayForEach(route_part_ids, route_part_idsJSON)
    {
        if(!cJSON_IsNumber(route_part_ids))
        {
            goto end;
        }
        list_addElement(route_part_idsList , &route_part_ids->valuedouble);

    }

    // response_fares_breakdown_item->tickets
    cJSON *tickets;
    cJSON *ticketsJSON = cJSON_GetObjectItemCaseSensitive(response_fares_breakdown_itemJSON,"tickets");
    if(!cJSON_IsArray(ticketsJSON)){
        goto end; //nonprimitive container
    }

    list_t *ticketsList = list_create();

    cJSON_ArrayForEach(tickets,ticketsJSON )
    {
        if(!cJSON_IsObject(tickets)){
            goto end;
        }
		char *JSONData = cJSON_Print(tickets);
        response_fare_ticket_t *ticketsItem = response_fare_ticket_parseFromJSON(JSONData);

        list_addElement(ticketsList, ticketsItem);
        free(JSONData);
    }


    response_fares_breakdown_item = response_fares_breakdown_item_create (
        modesList,
        route_part_idsList,
        ticketsList
        );
 cJSON_Delete(response_fares_breakdown_itemJSON);
    return response_fares_breakdown_item;
end:
    cJSON_Delete(response_fares_breakdown_itemJSON);
    return NULL;

}

