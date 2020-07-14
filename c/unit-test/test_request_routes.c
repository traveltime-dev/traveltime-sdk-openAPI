#ifndef request_routes_TEST
#define request_routes_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_routes_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_routes.h"
request_routes_t* instantiate_request_routes(int include_optional);



request_routes_t* instantiate_request_routes(int include_optional) {
  request_routes_t* request_routes = NULL;
  if (include_optional) {
    request_routes = request_routes_create(
      list_create(),
      list_create(),
      list_create()
    );
  } else {
    request_routes = request_routes_create(
      list_create(),
      list_create(),
      list_create()
    );
  }

  return request_routes;
}


#ifdef request_routes_MAIN

void test_request_routes(int include_optional) {
    request_routes_t* request_routes_1 = instantiate_request_routes(include_optional);

	cJSON* jsonrequest_routes_1 = request_routes_convertToJSON(request_routes_1);
	printf("request_routes :\n%s\n", cJSON_Print(jsonrequest_routes_1));
	request_routes_t* request_routes_2 = request_routes_parseFromJSON(jsonrequest_routes_1);
	cJSON* jsonrequest_routes_2 = request_routes_convertToJSON(request_routes_2);
	printf("repeating request_routes:\n%s\n", cJSON_Print(jsonrequest_routes_2));
}

int main() {
  test_request_routes(1);
  test_request_routes(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_routes_MAIN
#endif // request_routes_TEST
