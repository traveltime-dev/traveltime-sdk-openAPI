#ifndef response_time_filter_location_TEST
#define response_time_filter_location_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_time_filter_location_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_time_filter_location.h"
response_time_filter_location_t* instantiate_response_time_filter_location(int include_optional);



response_time_filter_location_t* instantiate_response_time_filter_location(int include_optional) {
  response_time_filter_location_t* response_time_filter_location = NULL;
  if (include_optional) {
    response_time_filter_location = response_time_filter_location_create(
      "0",
      list_create()
    );
  } else {
    response_time_filter_location = response_time_filter_location_create(
      "0",
      list_create()
    );
  }

  return response_time_filter_location;
}


#ifdef response_time_filter_location_MAIN

void test_response_time_filter_location(int include_optional) {
    response_time_filter_location_t* response_time_filter_location_1 = instantiate_response_time_filter_location(include_optional);

	cJSON* jsonresponse_time_filter_location_1 = response_time_filter_location_convertToJSON(response_time_filter_location_1);
	printf("response_time_filter_location :\n%s\n", cJSON_Print(jsonresponse_time_filter_location_1));
	response_time_filter_location_t* response_time_filter_location_2 = response_time_filter_location_parseFromJSON(jsonresponse_time_filter_location_1);
	cJSON* jsonresponse_time_filter_location_2 = response_time_filter_location_convertToJSON(response_time_filter_location_2);
	printf("repeating response_time_filter_location:\n%s\n", cJSON_Print(jsonresponse_time_filter_location_2));
}

int main() {
  test_response_time_filter_location(1);
  test_response_time_filter_location(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_time_filter_location_MAIN
#endif // response_time_filter_location_TEST
