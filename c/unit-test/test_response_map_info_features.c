#ifndef response_map_info_features_TEST
#define response_map_info_features_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_map_info_features_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_map_info_features.h"
response_map_info_features_t* instantiate_response_map_info_features(int include_optional);

#include "test_response_map_info_features_public_transport.c"


response_map_info_features_t* instantiate_response_map_info_features(int include_optional) {
  response_map_info_features_t* response_map_info_features = NULL;
  if (include_optional) {
    response_map_info_features = response_map_info_features_create(
       // false, not to have infinite recursion
      instantiate_response_map_info_features_public_transport(0),
      1,
      1
    );
  } else {
    response_map_info_features = response_map_info_features_create(
      NULL,
      1,
      1
    );
  }

  return response_map_info_features;
}


#ifdef response_map_info_features_MAIN

void test_response_map_info_features(int include_optional) {
    response_map_info_features_t* response_map_info_features_1 = instantiate_response_map_info_features(include_optional);

	cJSON* jsonresponse_map_info_features_1 = response_map_info_features_convertToJSON(response_map_info_features_1);
	printf("response_map_info_features :\n%s\n", cJSON_Print(jsonresponse_map_info_features_1));
	response_map_info_features_t* response_map_info_features_2 = response_map_info_features_parseFromJSON(jsonresponse_map_info_features_1);
	cJSON* jsonresponse_map_info_features_2 = response_map_info_features_convertToJSON(response_map_info_features_2);
	printf("repeating response_map_info_features:\n%s\n", cJSON_Print(jsonresponse_map_info_features_2));
}

int main() {
  test_response_map_info_features(1);
  test_response_map_info_features(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_map_info_features_MAIN
#endif // response_map_info_features_TEST
