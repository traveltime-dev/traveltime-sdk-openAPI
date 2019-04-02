#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cJSON.h"
#include "list.h"
#include "keyValuePair.h"
#include "response_fare_ticket.h"

char* typeresponse_fare_ticket_ToString(type_e type){
    char *typeArray[] =  { "single","week","month","year" };
    return typeArray[type];

}

type_e typeresponse_fare_ticket_FromString(char* type){
    int stringToReturn = 0;
    char *typeArray[] =  { "single","week","month","year" };
    size_t sizeofArray = sizeof(typeArray) / sizeof(typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(type, typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
}

response_fare_ticket_t *response_fare_ticket_create(
    type_e type,
    double price,
    char *currency
    ) {
	response_fare_ticket_t *response_fare_ticket = malloc(sizeof(response_fare_ticket_t));
	response_fare_ticket->type = type;
	response_fare_ticket->price = price;
	response_fare_ticket->currency = currency;

	return response_fare_ticket;
}


void response_fare_ticket_free(response_fare_ticket_t *response_fare_ticket) {
    listEntry_t *listEntry;
    free(response_fare_ticket->currency);

	free(response_fare_ticket);
}

cJSON *response_fare_ticket_convertToJSON(response_fare_ticket_t *response_fare_ticket) {
	cJSON *item = cJSON_CreateObject();
	// response_fare_ticket->type
    if(cJSON_AddStringToObject(item, "type", typeresponse_fare_ticket_ToString(response_fare_ticket->type)) == NULL) {
    goto fail; //String
    }

	// response_fare_ticket->price
    if(cJSON_AddNumberToObject(item, "price", response_fare_ticket->price) == NULL) {
    goto fail; //Numeric
    }

	// response_fare_ticket->currency
    if(cJSON_AddStringToObject(item, "currency", response_fare_ticket->currency) == NULL) {
    goto fail; //String
    }

	return item;
fail:
	cJSON_Delete(item);
	return NULL;
}

response_fare_ticket_t *response_fare_ticket_parseFromJSON(char *jsonString){

    response_fare_ticket_t *response_fare_ticket = NULL;
    cJSON *response_fare_ticketJSON = cJSON_Parse(jsonString);
    if(response_fare_ticketJSON == NULL){
        const char *error_ptr = cJSON_GetErrorPtr();
        if (error_ptr != NULL) {
            fprintf(stderr, "Error Before: %s\n", error_ptr);
            goto end;
        }
    }

    // response_fare_ticket->type
    type_e typeVariable;
    cJSON *type = cJSON_GetObjectItemCaseSensitive(response_fare_ticketJSON, "type");
    if(!cJSON_IsString(type) || (type->valuestring == NULL)){
    goto end; //String
    }

    typeVariable = typeresponse_fare_ticket_FromString(type->valuestring);

    // response_fare_ticket->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(response_fare_ticketJSON, "price");
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }

    // response_fare_ticket->currency
    cJSON *currency = cJSON_GetObjectItemCaseSensitive(response_fare_ticketJSON, "currency");
    if(!cJSON_IsString(currency) || (currency->valuestring == NULL)){
    goto end; //String
    }


    response_fare_ticket = response_fare_ticket_create (
        typeVariable,
        price->valuedouble,
        strdup(currency->valuestring)
        );
 cJSON_Delete(response_fare_ticketJSON);
    return response_fare_ticket;
end:
    cJSON_Delete(response_fare_ticketJSON);
    return NULL;

}

