#ifndef request_routes_property_TEST
#define request_routes_property_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_routes_property_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_routes_property.h"
request_routes_property_t* instantiate_request_routes_property(int include_optional);



request_routes_property_t* instantiate_request_routes_property(int include_optional) {
  request_routes_property_t* request_routes_property = NULL;
  if (include_optional) {
    request_routes_property = request_routes_property_create(
    );
  } else {
    request_routes_property = request_routes_property_create(
    );
  }

  return request_routes_property;
}


#ifdef request_routes_property_MAIN

void test_request_routes_property(int include_optional) {
    request_routes_property_t* request_routes_property_1 = instantiate_request_routes_property(include_optional);

	cJSON* jsonrequest_routes_property_1 = request_routes_property_convertToJSON(request_routes_property_1);
	printf("request_routes_property :\n%s\n", cJSON_Print(jsonrequest_routes_property_1));
	request_routes_property_t* request_routes_property_2 = request_routes_property_parseFromJSON(jsonrequest_routes_property_1);
	cJSON* jsonrequest_routes_property_2 = request_routes_property_convertToJSON(request_routes_property_2);
	printf("repeating request_routes_property:\n%s\n", cJSON_Print(jsonrequest_routes_property_2));
}

int main() {
  test_request_routes_property(1);
  test_request_routes_property(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_routes_property_MAIN
#endif // request_routes_property_TEST
