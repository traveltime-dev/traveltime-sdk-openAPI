#ifndef response_map_info_map_TEST
#define response_map_info_map_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_map_info_map_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_map_info_map.h"
response_map_info_map_t* instantiate_response_map_info_map(int include_optional);

#include "test_response_map_info_features.c"


response_map_info_map_t* instantiate_response_map_info_map(int include_optional) {
  response_map_info_map_t* response_map_info_map = NULL;
  if (include_optional) {
    response_map_info_map = response_map_info_map_create(
      "0",
       // false, not to have infinite recursion
      instantiate_response_map_info_features(0)
    );
  } else {
    response_map_info_map = response_map_info_map_create(
      "0",
      NULL
    );
  }

  return response_map_info_map;
}


#ifdef response_map_info_map_MAIN

void test_response_map_info_map(int include_optional) {
    response_map_info_map_t* response_map_info_map_1 = instantiate_response_map_info_map(include_optional);

	cJSON* jsonresponse_map_info_map_1 = response_map_info_map_convertToJSON(response_map_info_map_1);
	printf("response_map_info_map :\n%s\n", cJSON_Print(jsonresponse_map_info_map_1));
	response_map_info_map_t* response_map_info_map_2 = response_map_info_map_parseFromJSON(jsonresponse_map_info_map_1);
	cJSON* jsonresponse_map_info_map_2 = response_map_info_map_convertToJSON(response_map_info_map_2);
	printf("repeating response_map_info_map:\n%s\n", cJSON_Print(jsonresponse_map_info_map_2));
}

int main() {
  test_response_map_info_map(1);
  test_response_map_info_map(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_map_info_map_MAIN
#endif // response_map_info_map_TEST
