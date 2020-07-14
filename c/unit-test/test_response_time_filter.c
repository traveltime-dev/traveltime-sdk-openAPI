#ifndef response_time_filter_TEST
#define response_time_filter_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_time_filter_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_time_filter.h"
response_time_filter_t* instantiate_response_time_filter(int include_optional);



response_time_filter_t* instantiate_response_time_filter(int include_optional) {
  response_time_filter_t* response_time_filter = NULL;
  if (include_optional) {
    response_time_filter = response_time_filter_create(
      list_create()
    );
  } else {
    response_time_filter = response_time_filter_create(
      list_create()
    );
  }

  return response_time_filter;
}


#ifdef response_time_filter_MAIN

void test_response_time_filter(int include_optional) {
    response_time_filter_t* response_time_filter_1 = instantiate_response_time_filter(include_optional);

	cJSON* jsonresponse_time_filter_1 = response_time_filter_convertToJSON(response_time_filter_1);
	printf("response_time_filter :\n%s\n", cJSON_Print(jsonresponse_time_filter_1));
	response_time_filter_t* response_time_filter_2 = response_time_filter_parseFromJSON(jsonresponse_time_filter_1);
	cJSON* jsonresponse_time_filter_2 = response_time_filter_convertToJSON(response_time_filter_2);
	printf("repeating response_time_filter:\n%s\n", cJSON_Print(jsonresponse_time_filter_2));
}

int main() {
  test_response_time_filter(1);
  test_response_time_filter(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_time_filter_MAIN
#endif // response_time_filter_TEST
