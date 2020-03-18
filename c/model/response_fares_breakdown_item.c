#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_fares_breakdown_item.h"


char* modesresponse_fares_breakdown_item_ToString(traveltime_platform_api_response_fares_breakdown_item__e modes) {
	char *modesArray[] =  { "NULL", "car", "parking", "boarding", "walk", "bike", "train", "rail_national", "rail_overground", "rail_underground", "rail_dlr", "bus", "cable_car", "plane", "ferry", "coach" };
	return modesArray[modes - 1];
}

traveltime_platform_api_response_fares_breakdown_item__e modesresponse_fares_breakdown_item_FromString(char* modes) {
    int stringToReturn = 0;
    char *modesArray[] =  { "NULL", "car", "parking", "boarding", "walk", "bike", "train", "rail_national", "rail_overground", "rail_underground", "rail_dlr", "bus", "cable_car", "plane", "ferry", "coach" };
    size_t sizeofArray = sizeof(modesArray) / sizeof(modesArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(modes, modesArray[stringToReturn]) == 0) {
            return stringToReturn + 1;
        }
        stringToReturn++;
    }
    return 0;
}

response_fares_breakdown_item_t *response_fares_breakdown_item_create(
    list_t *modes,
    list_t *route_part_ids,
    list_t *tickets
    ) {
    response_fares_breakdown_item_t *response_fares_breakdown_item_local_var = malloc(sizeof(response_fares_breakdown_item_t));
    if (!response_fares_breakdown_item_local_var) {
        return NULL;
    }
    response_fares_breakdown_item_local_var->modes = modes;
    response_fares_breakdown_item_local_var->route_part_ids = route_part_ids;
    response_fares_breakdown_item_local_var->tickets = tickets;

    return response_fares_breakdown_item_local_var;
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
    if (response_fares_breakdown_item->modes) {
    list_ForEach(modesListEntry, response_fares_breakdown_item->modes) {
    cJSON *itemLocal = response_transportation_mode_convertToJSON((traveltime_platform_api_response_fares_breakdown_item__e)modesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(modes, itemLocal);
    }
    }


    // response_fares_breakdown_item->route_part_ids
    if (!response_fares_breakdown_item->route_part_ids) {
        goto fail;
    }
    
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
    if (!response_fares_breakdown_item->tickets) {
        goto fail;
    }
    
    cJSON *tickets = cJSON_AddArrayToObject(item, "tickets");
    if(tickets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *ticketsListEntry;
    if (response_fares_breakdown_item->tickets) {
    list_ForEach(ticketsListEntry, response_fares_breakdown_item->tickets) {
    cJSON *itemLocal = response_fare_ticket_convertToJSON(ticketsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(tickets, itemLocal);
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_fares_breakdown_item_t *response_fares_breakdown_item_parseFromJSON(cJSON *response_fares_breakdown_itemJSON){

    response_fares_breakdown_item_t *response_fares_breakdown_item_local_var = NULL;

    // response_fares_breakdown_item->modes
    cJSON *modes = cJSON_GetObjectItemCaseSensitive(response_fares_breakdown_itemJSON, "modes");
    if (!modes) {
        goto end;
    }

    list_t *modesList;
    
    cJSON *modes_local_nonprimitive;
    if(!cJSON_IsArray(modes)){
        goto end; //nonprimitive container
    }

    modesList = list_create();

    cJSON_ArrayForEach(modes_local_nonprimitive,modes )
    {
        if(!cJSON_IsObject(modes_local_nonprimitive)){
            goto end;
        }
        response_fares_breakdown_item_response_transportation_mode_e modesItem = response_transportation_mode_parseFromJSON(modes_local_nonprimitive);

        list_addElement(modesList, (void *)modesItem);
    }

    // response_fares_breakdown_item->route_part_ids
    cJSON *route_part_ids = cJSON_GetObjectItemCaseSensitive(response_fares_breakdown_itemJSON, "route_part_ids");
    if (!route_part_ids) {
        goto end;
    }

    list_t *route_part_idsList;
    
    cJSON *route_part_ids_local;
    if(!cJSON_IsArray(route_part_ids)) {
        goto end;//primitive container
    }
    route_part_idsList = list_create();

    cJSON_ArrayForEach(route_part_ids_local, route_part_ids)
    {
        if(!cJSON_IsNumber(route_part_ids_local))
        {
            goto end;
        }
        list_addElement(route_part_idsList , &route_part_ids_local->valuedouble);
    }

    // response_fares_breakdown_item->tickets
    cJSON *tickets = cJSON_GetObjectItemCaseSensitive(response_fares_breakdown_itemJSON, "tickets");
    if (!tickets) {
        goto end;
    }

    list_t *ticketsList;
    
    cJSON *tickets_local_nonprimitive;
    if(!cJSON_IsArray(tickets)){
        goto end; //nonprimitive container
    }

    ticketsList = list_create();

    cJSON_ArrayForEach(tickets_local_nonprimitive,tickets )
    {
        if(!cJSON_IsObject(tickets_local_nonprimitive)){
            goto end;
        }
        response_fare_ticket_t *ticketsItem = response_fare_ticket_parseFromJSON(tickets_local_nonprimitive);

        list_addElement(ticketsList, ticketsItem);
    }


    response_fares_breakdown_item_local_var = response_fares_breakdown_item_create (
        modesList,
        route_part_idsList,
        ticketsList
        );

    return response_fares_breakdown_item_local_var;
end:
    return NULL;

}
