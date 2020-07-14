#ifndef response_route_part_TEST
#define response_route_part_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_route_part_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_route_part.h"
response_route_part_t* instantiate_response_route_part(int include_optional);



response_route_part_t* instantiate_response_route_part(int include_optional) {
  response_route_part_t* response_route_part = NULL;
  if (include_optional) {
    response_route_part = response_route_part_create(
      "0",
      traveltime_api_response_route_part_TYPE_basic,
      traveltime_api_response_route_part__car,
      "0",
      56,
      56,
      list_create(),
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      56
    );
  } else {
    response_route_part = response_route_part_create(
      "0",
      traveltime_api_response_route_part_TYPE_basic,
      traveltime_api_response_route_part__car,
      "0",
      56,
      56,
      list_create(),
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      56
    );
  }

  return response_route_part;
}


#ifdef response_route_part_MAIN

void test_response_route_part(int include_optional) {
    response_route_part_t* response_route_part_1 = instantiate_response_route_part(include_optional);

	cJSON* jsonresponse_route_part_1 = response_route_part_convertToJSON(response_route_part_1);
	printf("response_route_part :\n%s\n", cJSON_Print(jsonresponse_route_part_1));
	response_route_part_t* response_route_part_2 = response_route_part_parseFromJSON(jsonresponse_route_part_1);
	cJSON* jsonresponse_route_part_2 = response_route_part_convertToJSON(response_route_part_2);
	printf("repeating response_route_part:\n%s\n", cJSON_Print(jsonresponse_route_part_2));
}

int main() {
  test_response_route_part(1);
  test_response_route_part(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_route_part_MAIN
#endif // response_route_part_TEST
