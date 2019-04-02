/*
 * response_fare_ticket.h
 *
 * 
 */

#ifndef _response_fare_ticket_H_
#define _response_fare_ticket_H_

#include <string.h>
#include "cJSON.h"


typedef enum  {  single, week, month, year } type_e;

char* typeresponse_fare_ticket_ToString(type_e type);

type_e typeresponse_fare_ticket_FromString(char* type);

typedef struct response_fare_ticket_t {
        type_e type; //enum string
        double price; //numeric
        char *currency; //no enum string

} response_fare_ticket_t;

response_fare_ticket_t *response_fare_ticket_create(
        type_e type,
        double price,
        char *currency
);

void response_fare_ticket_free(response_fare_ticket_t *response_fare_ticket);

response_fare_ticket_t *response_fare_ticket_parseFromJSON(char *jsonString);

cJSON *response_fare_ticket_convertToJSON(response_fare_ticket_t *response_fare_ticket);

#endif /* _response_fare_ticket_H_ */

