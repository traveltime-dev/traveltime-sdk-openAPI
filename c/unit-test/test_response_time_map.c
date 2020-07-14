#ifndef response_time_map_TEST
#define response_time_map_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_time_map_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_time_map.h"
response_time_map_t* instantiate_response_time_map(int include_optional);



response_time_map_t* instantiate_response_time_map(int include_optional) {
  response_time_map_t* response_time_map = NULL;
  if (include_optional) {
    response_time_map = response_time_map_create(
      list_create()
    );
  } else {
    response_time_map = response_time_map_create(
      list_create()
    );
  }

  return response_time_map;
}


#ifdef response_time_map_MAIN

void test_response_time_map(int include_optional) {
    response_time_map_t* response_time_map_1 = instantiate_response_time_map(include_optional);

	cJSON* jsonresponse_time_map_1 = response_time_map_convertToJSON(response_time_map_1);
	printf("response_time_map :\n%s\n", cJSON_Print(jsonresponse_time_map_1));
	response_time_map_t* response_time_map_2 = response_time_map_parseFromJSON(jsonresponse_time_map_1);
	cJSON* jsonresponse_time_map_2 = response_time_map_convertToJSON(response_time_map_2);
	printf("repeating response_time_map:\n%s\n", cJSON_Print(jsonresponse_time_map_2));
}

int main() {
  test_response_time_map(1);
  test_response_time_map(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_time_map_MAIN
#endif // response_time_map_TEST
