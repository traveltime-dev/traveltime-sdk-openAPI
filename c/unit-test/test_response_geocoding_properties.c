#ifndef response_geocoding_properties_TEST
#define response_geocoding_properties_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_geocoding_properties_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_geocoding_properties.h"
response_geocoding_properties_t* instantiate_response_geocoding_properties(int include_optional);

#include "test_response_map_info_features.c"


response_geocoding_properties_t* instantiate_response_geocoding_properties(int include_optional) {
  response_geocoding_properties_t* response_geocoding_properties = NULL;
  if (include_optional) {
    response_geocoding_properties = response_geocoding_properties_create(
      "0",
      "0",
      1.337,
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
       // false, not to have infinite recursion
      instantiate_response_map_info_features(0)
    );
  } else {
    response_geocoding_properties = response_geocoding_properties_create(
      "0",
      "0",
      1.337,
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      NULL
    );
  }

  return response_geocoding_properties;
}


#ifdef response_geocoding_properties_MAIN

void test_response_geocoding_properties(int include_optional) {
    response_geocoding_properties_t* response_geocoding_properties_1 = instantiate_response_geocoding_properties(include_optional);

	cJSON* jsonresponse_geocoding_properties_1 = response_geocoding_properties_convertToJSON(response_geocoding_properties_1);
	printf("response_geocoding_properties :\n%s\n", cJSON_Print(jsonresponse_geocoding_properties_1));
	response_geocoding_properties_t* response_geocoding_properties_2 = response_geocoding_properties_parseFromJSON(jsonresponse_geocoding_properties_1);
	cJSON* jsonresponse_geocoding_properties_2 = response_geocoding_properties_convertToJSON(response_geocoding_properties_2);
	printf("repeating response_geocoding_properties:\n%s\n", cJSON_Print(jsonresponse_geocoding_properties_2));
}

int main() {
  test_response_geocoding_properties(1);
  test_response_geocoding_properties(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_geocoding_properties_MAIN
#endif // response_geocoding_properties_TEST
