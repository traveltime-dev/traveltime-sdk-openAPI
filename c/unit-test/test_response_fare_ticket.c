#ifndef response_fare_ticket_TEST
#define response_fare_ticket_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_fare_ticket_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_fare_ticket.h"
response_fare_ticket_t* instantiate_response_fare_ticket(int include_optional);



response_fare_ticket_t* instantiate_response_fare_ticket(int include_optional) {
  response_fare_ticket_t* response_fare_ticket = NULL;
  if (include_optional) {
    response_fare_ticket = response_fare_ticket_create(
      traveltime_api_response_fare_ticket_TYPE_single,
      1.337,
      "0"
    );
  } else {
    response_fare_ticket = response_fare_ticket_create(
      traveltime_api_response_fare_ticket_TYPE_single,
      1.337,
      "0"
    );
  }

  return response_fare_ticket;
}


#ifdef response_fare_ticket_MAIN

void test_response_fare_ticket(int include_optional) {
    response_fare_ticket_t* response_fare_ticket_1 = instantiate_response_fare_ticket(include_optional);

	cJSON* jsonresponse_fare_ticket_1 = response_fare_ticket_convertToJSON(response_fare_ticket_1);
	printf("response_fare_ticket :\n%s\n", cJSON_Print(jsonresponse_fare_ticket_1));
	response_fare_ticket_t* response_fare_ticket_2 = response_fare_ticket_parseFromJSON(jsonresponse_fare_ticket_1);
	cJSON* jsonresponse_fare_ticket_2 = response_fare_ticket_convertToJSON(response_fare_ticket_2);
	printf("repeating response_fare_ticket:\n%s\n", cJSON_Print(jsonresponse_fare_ticket_2));
}

int main() {
  test_response_fare_ticket(1);
  test_response_fare_ticket(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_fare_ticket_MAIN
#endif // response_fare_ticket_TEST
