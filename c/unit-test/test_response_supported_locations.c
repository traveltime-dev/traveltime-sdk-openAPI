#ifndef response_supported_locations_TEST
#define response_supported_locations_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_supported_locations_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_supported_locations.h"
response_supported_locations_t* instantiate_response_supported_locations(int include_optional);



response_supported_locations_t* instantiate_response_supported_locations(int include_optional) {
  response_supported_locations_t* response_supported_locations = NULL;
  if (include_optional) {
    response_supported_locations = response_supported_locations_create(
      list_create(),
      list_create()
    );
  } else {
    response_supported_locations = response_supported_locations_create(
      list_create(),
      list_create()
    );
  }

  return response_supported_locations;
}


#ifdef response_supported_locations_MAIN

void test_response_supported_locations(int include_optional) {
    response_supported_locations_t* response_supported_locations_1 = instantiate_response_supported_locations(include_optional);

	cJSON* jsonresponse_supported_locations_1 = response_supported_locations_convertToJSON(response_supported_locations_1);
	printf("response_supported_locations :\n%s\n", cJSON_Print(jsonresponse_supported_locations_1));
	response_supported_locations_t* response_supported_locations_2 = response_supported_locations_parseFromJSON(jsonresponse_supported_locations_1);
	cJSON* jsonresponse_supported_locations_2 = response_supported_locations_convertToJSON(response_supported_locations_2);
	printf("repeating response_supported_locations:\n%s\n", cJSON_Print(jsonresponse_supported_locations_2));
}

int main() {
  test_response_supported_locations(1);
  test_response_supported_locations(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_supported_locations_MAIN
#endif // response_supported_locations_TEST
