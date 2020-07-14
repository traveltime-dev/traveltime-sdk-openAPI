#ifndef response_time_map_properties_TEST
#define response_time_map_properties_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_time_map_properties_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_time_map_properties.h"
response_time_map_properties_t* instantiate_response_time_map_properties(int include_optional);



response_time_map_properties_t* instantiate_response_time_map_properties(int include_optional) {
  response_time_map_properties_t* response_time_map_properties = NULL;
  if (include_optional) {
    response_time_map_properties = response_time_map_properties_create(
      1
    );
  } else {
    response_time_map_properties = response_time_map_properties_create(
      1
    );
  }

  return response_time_map_properties;
}


#ifdef response_time_map_properties_MAIN

void test_response_time_map_properties(int include_optional) {
    response_time_map_properties_t* response_time_map_properties_1 = instantiate_response_time_map_properties(include_optional);

	cJSON* jsonresponse_time_map_properties_1 = response_time_map_properties_convertToJSON(response_time_map_properties_1);
	printf("response_time_map_properties :\n%s\n", cJSON_Print(jsonresponse_time_map_properties_1));
	response_time_map_properties_t* response_time_map_properties_2 = response_time_map_properties_parseFromJSON(jsonresponse_time_map_properties_1);
	cJSON* jsonresponse_time_map_properties_2 = response_time_map_properties_convertToJSON(response_time_map_properties_2);
	printf("repeating response_time_map_properties:\n%s\n", cJSON_Print(jsonresponse_time_map_properties_2));
}

int main() {
  test_response_time_map_properties(1);
  test_response_time_map_properties(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_time_map_properties_MAIN
#endif // response_time_map_properties_TEST
