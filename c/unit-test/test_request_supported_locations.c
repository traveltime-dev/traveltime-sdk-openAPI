#ifndef request_supported_locations_TEST
#define request_supported_locations_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_supported_locations_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_supported_locations.h"
request_supported_locations_t* instantiate_request_supported_locations(int include_optional);



request_supported_locations_t* instantiate_request_supported_locations(int include_optional) {
  request_supported_locations_t* request_supported_locations = NULL;
  if (include_optional) {
    request_supported_locations = request_supported_locations_create(
      list_create()
    );
  } else {
    request_supported_locations = request_supported_locations_create(
      list_create()
    );
  }

  return request_supported_locations;
}


#ifdef request_supported_locations_MAIN

void test_request_supported_locations(int include_optional) {
    request_supported_locations_t* request_supported_locations_1 = instantiate_request_supported_locations(include_optional);

	cJSON* jsonrequest_supported_locations_1 = request_supported_locations_convertToJSON(request_supported_locations_1);
	printf("request_supported_locations :\n%s\n", cJSON_Print(jsonrequest_supported_locations_1));
	request_supported_locations_t* request_supported_locations_2 = request_supported_locations_parseFromJSON(jsonrequest_supported_locations_1);
	cJSON* jsonrequest_supported_locations_2 = request_supported_locations_convertToJSON(request_supported_locations_2);
	printf("repeating request_supported_locations:\n%s\n", cJSON_Print(jsonrequest_supported_locations_2));
}

int main() {
  test_request_supported_locations(1);
  test_request_supported_locations(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_supported_locations_MAIN
#endif // request_supported_locations_TEST
