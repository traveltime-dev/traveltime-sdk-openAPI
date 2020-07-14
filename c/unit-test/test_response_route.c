#ifndef response_route_TEST
#define response_route_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_route_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_route.h"
response_route_t* instantiate_response_route(int include_optional);



response_route_t* instantiate_response_route(int include_optional) {
  response_route_t* response_route = NULL;
  if (include_optional) {
    response_route = response_route_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      list_create()
    );
  } else {
    response_route = response_route_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      list_create()
    );
  }

  return response_route;
}


#ifdef response_route_MAIN

void test_response_route(int include_optional) {
    response_route_t* response_route_1 = instantiate_response_route(include_optional);

	cJSON* jsonresponse_route_1 = response_route_convertToJSON(response_route_1);
	printf("response_route :\n%s\n", cJSON_Print(jsonresponse_route_1));
	response_route_t* response_route_2 = response_route_parseFromJSON(jsonresponse_route_1);
	cJSON* jsonresponse_route_2 = response_route_convertToJSON(response_route_2);
	printf("repeating response_route:\n%s\n", cJSON_Print(jsonresponse_route_2));
}

int main() {
  test_response_route(1);
  test_response_route(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_route_MAIN
#endif // response_route_TEST
