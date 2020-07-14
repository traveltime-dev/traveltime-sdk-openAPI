#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "response_fare_ticket.h"


char* typeresponse_fare_ticket_ToString(traveltime_api_response_fare_ticket_TYPE_e type) {
    char* typeArray[] =  { "NULL", "single", "week", "month", "year" };
	return typeArray[type];
}

traveltime_api_response_fare_ticket_TYPE_e typeresponse_fare_ticket_FromString(char* type){
    int stringToReturn = 0;
    char *typeArray[] =  { "NULL", "single", "week", "month", "year" };
    size_t sizeofArray = sizeof(typeArray) / sizeof(typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(type, typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

response_fare_ticket_t *response_fare_ticket_create(
    traveltime_api_response_fare_ticket_TYPE_e type,
    double price,
    char *currency
    ) {
    response_fare_ticket_t *response_fare_ticket_local_var = malloc(sizeof(response_fare_ticket_t));
    if (!response_fare_ticket_local_var) {
        return NULL;
    }
    response_fare_ticket_local_var->type = type;
    response_fare_ticket_local_var->price = price;
    response_fare_ticket_local_var->currency = currency;

    return response_fare_ticket_local_var;
}


void response_fare_ticket_free(response_fare_ticket_t *response_fare_ticket) {
    if(NULL == response_fare_ticket){
        return ;
    }
    listEntry_t *listEntry;
    free(response_fare_ticket->currency);
    free(response_fare_ticket);
}

cJSON *response_fare_ticket_convertToJSON(response_fare_ticket_t *response_fare_ticket) {
    cJSON *item = cJSON_CreateObject();

    // response_fare_ticket->type
    
    if(cJSON_AddStringToObject(item, "type", typeresponse_fare_ticket_ToString(response_fare_ticket->type)) == NULL)
    {
    goto fail; //Enum
    }


    // response_fare_ticket->price
    if (!response_fare_ticket->price) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "price", response_fare_ticket->price) == NULL) {
    goto fail; //Numeric
    }


    // response_fare_ticket->currency
    if (!response_fare_ticket->currency) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "currency", response_fare_ticket->currency) == NULL) {
    goto fail; //String
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

response_fare_ticket_t *response_fare_ticket_parseFromJSON(cJSON *response_fare_ticketJSON){

    response_fare_ticket_t *response_fare_ticket_local_var = NULL;

    // response_fare_ticket->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(response_fare_ticketJSON, "type");
    if (!type) {
        goto end;
    }

    traveltime_api_response_fare_ticket_TYPE_e typeVariable;
    
    if(!cJSON_IsString(type))
    {
    goto end; //Enum
    }
    typeVariable = typeresponse_fare_ticket_FromString(type->valuestring);

    // response_fare_ticket->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(response_fare_ticketJSON, "price");
    if (!price) {
        goto end;
    }

    
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }

    // response_fare_ticket->currency
    cJSON *currency = cJSON_GetObjectItemCaseSensitive(response_fare_ticketJSON, "currency");
    if (!currency) {
        goto end;
    }

    
    if(!cJSON_IsString(currency))
    {
    goto end; //String
    }


    response_fare_ticket_local_var = response_fare_ticket_create (
        typeVariable,
        price->valuedouble,
        strdup(currency->valuestring)
        );

    return response_fare_ticket_local_var;
end:
    return NULL;

}
