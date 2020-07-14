#ifndef response_routes_properties_TEST
#define response_routes_properties_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_routes_properties_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_routes_properties.h"
response_routes_properties_t* instantiate_response_routes_properties(int include_optional);

#include "test_response_fares.c"
#include "test_response_route.c"


response_routes_properties_t* instantiate_response_routes_properties(int include_optional) {
  response_routes_properties_t* response_routes_properties = NULL;
  if (include_optional) {
    response_routes_properties = response_routes_properties_create(
      56,
      56,
       // false, not to have infinite recursion
      instantiate_response_fares(0),
       // false, not to have infinite recursion
      instantiate_response_route(0)
    );
  } else {
    response_routes_properties = response_routes_properties_create(
      56,
      56,
      NULL,
      NULL
    );
  }

  return response_routes_properties;
}


#ifdef response_routes_properties_MAIN

void test_response_routes_properties(int include_optional) {
    response_routes_properties_t* response_routes_properties_1 = instantiate_response_routes_properties(include_optional);

	cJSON* jsonresponse_routes_properties_1 = response_routes_properties_convertToJSON(response_routes_properties_1);
	printf("response_routes_properties :\n%s\n", cJSON_Print(jsonresponse_routes_properties_1));
	response_routes_properties_t* response_routes_properties_2 = response_routes_properties_parseFromJSON(jsonresponse_routes_properties_1);
	cJSON* jsonresponse_routes_properties_2 = response_routes_properties_convertToJSON(response_routes_properties_2);
	printf("repeating response_routes_properties:\n%s\n", cJSON_Print(jsonresponse_routes_properties_2));
}

int main() {
  test_response_routes_properties(1);
  test_response_routes_properties(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_routes_properties_MAIN
#endif // response_routes_properties_TEST
