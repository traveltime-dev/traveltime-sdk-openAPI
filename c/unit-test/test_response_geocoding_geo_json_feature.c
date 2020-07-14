#ifndef response_geocoding_geo_json_feature_TEST
#define response_geocoding_geo_json_feature_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_geocoding_geo_json_feature_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_geocoding_geo_json_feature.h"
response_geocoding_geo_json_feature_t* instantiate_response_geocoding_geo_json_feature(int include_optional);

#include "test_response_geocoding_geometry.c"
#include "test_response_geocoding_properties.c"


response_geocoding_geo_json_feature_t* instantiate_response_geocoding_geo_json_feature(int include_optional) {
  response_geocoding_geo_json_feature_t* response_geocoding_geo_json_feature = NULL;
  if (include_optional) {
    response_geocoding_geo_json_feature = response_geocoding_geo_json_feature_create(
      "0",
       // false, not to have infinite recursion
      instantiate_response_geocoding_geometry(0),
       // false, not to have infinite recursion
      instantiate_response_geocoding_properties(0)
    );
  } else {
    response_geocoding_geo_json_feature = response_geocoding_geo_json_feature_create(
      "0",
      NULL,
      NULL
    );
  }

  return response_geocoding_geo_json_feature;
}


#ifdef response_geocoding_geo_json_feature_MAIN

void test_response_geocoding_geo_json_feature(int include_optional) {
    response_geocoding_geo_json_feature_t* response_geocoding_geo_json_feature_1 = instantiate_response_geocoding_geo_json_feature(include_optional);

	cJSON* jsonresponse_geocoding_geo_json_feature_1 = response_geocoding_geo_json_feature_convertToJSON(response_geocoding_geo_json_feature_1);
	printf("response_geocoding_geo_json_feature :\n%s\n", cJSON_Print(jsonresponse_geocoding_geo_json_feature_1));
	response_geocoding_geo_json_feature_t* response_geocoding_geo_json_feature_2 = response_geocoding_geo_json_feature_parseFromJSON(jsonresponse_geocoding_geo_json_feature_1);
	cJSON* jsonresponse_geocoding_geo_json_feature_2 = response_geocoding_geo_json_feature_convertToJSON(response_geocoding_geo_json_feature_2);
	printf("repeating response_geocoding_geo_json_feature:\n%s\n", cJSON_Print(jsonresponse_geocoding_geo_json_feature_2));
}

int main() {
  test_response_geocoding_geo_json_feature(1);
  test_response_geocoding_geo_json_feature(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_geocoding_geo_json_feature_MAIN
#endif // response_geocoding_geo_json_feature_TEST
