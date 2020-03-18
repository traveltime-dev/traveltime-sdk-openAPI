/*
 * response_fare_ticket.h
 *
 * 
 */

#ifndef _response_fare_ticket_H_
#define _response_fare_ticket_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"

// Enum TYPE for response_fare_ticket

typedef enum  { traveltime_platform_api_response_fare_ticket_TYPE_NULL = 0, traveltime_platform_api_response_fare_ticket_TYPE_single, traveltime_platform_api_response_fare_ticket_TYPE_week, traveltime_platform_api_response_fare_ticket_TYPE_month, traveltime_platform_api_response_fare_ticket_TYPE_year } traveltime_platform_api_response_fare_ticket_TYPE_e;

char* response_fare_ticket_type_ToString(traveltime_platform_api_response_fare_ticket_TYPE_e type);

traveltime_platform_api_response_fare_ticket_TYPE_e response_fare_ticket_type_FromString(char* type);



typedef struct response_fare_ticket_t {
    traveltime_platform_api_response_fare_ticket_TYPE_e type; //enum
    double price; //numeric
    char *currency; // string

} response_fare_ticket_t;

response_fare_ticket_t *response_fare_ticket_create(
    traveltime_platform_api_response_fare_ticket_TYPE_e type,
    double price,
    char *currency
);

void response_fare_ticket_free(response_fare_ticket_t *response_fare_ticket);

response_fare_ticket_t *response_fare_ticket_parseFromJSON(cJSON *response_fare_ticketJSON);

cJSON *response_fare_ticket_convertToJSON(response_fare_ticket_t *response_fare_ticket);

#endif /* _response_fare_ticket_H_ */

