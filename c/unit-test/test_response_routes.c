#ifndef response_routes_TEST
#define response_routes_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_routes_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_routes.h"
response_routes_t* instantiate_response_routes(int include_optional);



response_routes_t* instantiate_response_routes(int include_optional) {
  response_routes_t* response_routes = NULL;
  if (include_optional) {
    response_routes = response_routes_create(
      list_create()
    );
  } else {
    response_routes = response_routes_create(
      list_create()
    );
  }

  return response_routes;
}


#ifdef response_routes_MAIN

void test_response_routes(int include_optional) {
    response_routes_t* response_routes_1 = instantiate_response_routes(include_optional);

	cJSON* jsonresponse_routes_1 = response_routes_convertToJSON(response_routes_1);
	printf("response_routes :\n%s\n", cJSON_Print(jsonresponse_routes_1));
	response_routes_t* response_routes_2 = response_routes_parseFromJSON(jsonresponse_routes_1);
	cJSON* jsonresponse_routes_2 = response_routes_convertToJSON(response_routes_2);
	printf("repeating response_routes:\n%s\n", cJSON_Print(jsonresponse_routes_2));
}

int main() {
  test_response_routes(1);
  test_response_routes(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_routes_MAIN
#endif // response_routes_TEST
