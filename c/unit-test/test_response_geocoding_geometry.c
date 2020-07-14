#ifndef response_geocoding_geometry_TEST
#define response_geocoding_geometry_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_geocoding_geometry_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_geocoding_geometry.h"
response_geocoding_geometry_t* instantiate_response_geocoding_geometry(int include_optional);



response_geocoding_geometry_t* instantiate_response_geocoding_geometry(int include_optional) {
  response_geocoding_geometry_t* response_geocoding_geometry = NULL;
  if (include_optional) {
    response_geocoding_geometry = response_geocoding_geometry_create(
      "0",
      list_create()
    );
  } else {
    response_geocoding_geometry = response_geocoding_geometry_create(
      "0",
      list_create()
    );
  }

  return response_geocoding_geometry;
}


#ifdef response_geocoding_geometry_MAIN

void test_response_geocoding_geometry(int include_optional) {
    response_geocoding_geometry_t* response_geocoding_geometry_1 = instantiate_response_geocoding_geometry(include_optional);

	cJSON* jsonresponse_geocoding_geometry_1 = response_geocoding_geometry_convertToJSON(response_geocoding_geometry_1);
	printf("response_geocoding_geometry :\n%s\n", cJSON_Print(jsonresponse_geocoding_geometry_1));
	response_geocoding_geometry_t* response_geocoding_geometry_2 = response_geocoding_geometry_parseFromJSON(jsonresponse_geocoding_geometry_1);
	cJSON* jsonresponse_geocoding_geometry_2 = response_geocoding_geometry_convertToJSON(response_geocoding_geometry_2);
	printf("repeating response_geocoding_geometry:\n%s\n", cJSON_Print(jsonresponse_geocoding_geometry_2));
}

int main() {
  test_response_geocoding_geometry(1);
  test_response_geocoding_geometry(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_geocoding_geometry_MAIN
#endif // response_geocoding_geometry_TEST
