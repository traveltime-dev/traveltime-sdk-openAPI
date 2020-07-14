#ifndef request_routes_departure_search_TEST
#define request_routes_departure_search_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_routes_departure_search_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_routes_departure_search.h"
request_routes_departure_search_t* instantiate_request_routes_departure_search(int include_optional);

#include "test_request_transportation.c"
#include "test_request_range_full.c"


request_routes_departure_search_t* instantiate_request_routes_departure_search(int include_optional) {
  request_routes_departure_search_t* request_routes_departure_search = NULL;
  if (include_optional) {
    request_routes_departure_search = request_routes_departure_search_create(
      "0",
      "0",
      list_create(),
       // false, not to have infinite recursion
      instantiate_request_transportation(0),
      "2013-10-20T19:20:30+01:00",
      list_create(),
       // false, not to have infinite recursion
      instantiate_request_range_full(0)
    );
  } else {
    request_routes_departure_search = request_routes_departure_search_create(
      "0",
      "0",
      list_create(),
      NULL,
      "2013-10-20T19:20:30+01:00",
      list_create(),
      NULL
    );
  }

  return request_routes_departure_search;
}


#ifdef request_routes_departure_search_MAIN

void test_request_routes_departure_search(int include_optional) {
    request_routes_departure_search_t* request_routes_departure_search_1 = instantiate_request_routes_departure_search(include_optional);

	cJSON* jsonrequest_routes_departure_search_1 = request_routes_departure_search_convertToJSON(request_routes_departure_search_1);
	printf("request_routes_departure_search :\n%s\n", cJSON_Print(jsonrequest_routes_departure_search_1));
	request_routes_departure_search_t* request_routes_departure_search_2 = request_routes_departure_search_parseFromJSON(jsonrequest_routes_departure_search_1);
	cJSON* jsonrequest_routes_departure_search_2 = request_routes_departure_search_convertToJSON(request_routes_departure_search_2);
	printf("repeating request_routes_departure_search:\n%s\n", cJSON_Print(jsonrequest_routes_departure_search_2));
}

int main() {
  test_request_routes_departure_search(1);
  test_request_routes_departure_search(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_routes_departure_search_MAIN
#endif // request_routes_departure_search_TEST
