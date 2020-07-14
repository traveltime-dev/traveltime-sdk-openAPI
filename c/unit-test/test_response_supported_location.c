#ifndef response_supported_location_TEST
#define response_supported_location_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_supported_location_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_supported_location.h"
response_supported_location_t* instantiate_response_supported_location(int include_optional);



response_supported_location_t* instantiate_response_supported_location(int include_optional) {
  response_supported_location_t* response_supported_location = NULL;
  if (include_optional) {
    response_supported_location = response_supported_location_create(
      "0",
      "0"
    );
  } else {
    response_supported_location = response_supported_location_create(
      "0",
      "0"
    );
  }

  return response_supported_location;
}


#ifdef response_supported_location_MAIN

void test_response_supported_location(int include_optional) {
    response_supported_location_t* response_supported_location_1 = instantiate_response_supported_location(include_optional);

	cJSON* jsonresponse_supported_location_1 = response_supported_location_convertToJSON(response_supported_location_1);
	printf("response_supported_location :\n%s\n", cJSON_Print(jsonresponse_supported_location_1));
	response_supported_location_t* response_supported_location_2 = response_supported_location_parseFromJSON(jsonresponse_supported_location_1);
	cJSON* jsonresponse_supported_location_2 = response_supported_location_convertToJSON(response_supported_location_2);
	printf("repeating response_supported_location:\n%s\n", cJSON_Print(jsonresponse_supported_location_2));
}

int main() {
  test_response_supported_location(1);
  test_response_supported_location(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_supported_location_MAIN
#endif // response_supported_location_TEST
