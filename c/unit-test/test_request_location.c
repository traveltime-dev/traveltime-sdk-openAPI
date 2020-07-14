#ifndef request_location_TEST
#define request_location_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_location_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_location.h"
request_location_t* instantiate_request_location(int include_optional);

#include "test_coords.c"


request_location_t* instantiate_request_location(int include_optional) {
  request_location_t* request_location = NULL;
  if (include_optional) {
    request_location = request_location_create(
      "0",
       // false, not to have infinite recursion
      instantiate_coords(0)
    );
  } else {
    request_location = request_location_create(
      "0",
      NULL
    );
  }

  return request_location;
}


#ifdef request_location_MAIN

void test_request_location(int include_optional) {
    request_location_t* request_location_1 = instantiate_request_location(include_optional);

	cJSON* jsonrequest_location_1 = request_location_convertToJSON(request_location_1);
	printf("request_location :\n%s\n", cJSON_Print(jsonrequest_location_1));
	request_location_t* request_location_2 = request_location_parseFromJSON(jsonrequest_location_1);
	cJSON* jsonrequest_location_2 = request_location_convertToJSON(request_location_2);
	printf("repeating request_location:\n%s\n", cJSON_Print(jsonrequest_location_2));
}

int main() {
  test_request_location(1);
  test_request_location(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_location_MAIN
#endif // request_location_TEST
