#ifndef response_routes_location_TEST
#define response_routes_location_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_routes_location_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_routes_location.h"
response_routes_location_t* instantiate_response_routes_location(int include_optional);



response_routes_location_t* instantiate_response_routes_location(int include_optional) {
  response_routes_location_t* response_routes_location = NULL;
  if (include_optional) {
    response_routes_location = response_routes_location_create(
      "0",
      list_create()
    );
  } else {
    response_routes_location = response_routes_location_create(
      "0",
      list_create()
    );
  }

  return response_routes_location;
}


#ifdef response_routes_location_MAIN

void test_response_routes_location(int include_optional) {
    response_routes_location_t* response_routes_location_1 = instantiate_response_routes_location(include_optional);

	cJSON* jsonresponse_routes_location_1 = response_routes_location_convertToJSON(response_routes_location_1);
	printf("response_routes_location :\n%s\n", cJSON_Print(jsonresponse_routes_location_1));
	response_routes_location_t* response_routes_location_2 = response_routes_location_parseFromJSON(jsonresponse_routes_location_1);
	cJSON* jsonresponse_routes_location_2 = response_routes_location_convertToJSON(response_routes_location_2);
	printf("repeating response_routes_location:\n%s\n", cJSON_Print(jsonresponse_routes_location_2));
}

int main() {
  test_response_routes_location(1);
  test_response_routes_location(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_routes_location_MAIN
#endif // response_routes_location_TEST
