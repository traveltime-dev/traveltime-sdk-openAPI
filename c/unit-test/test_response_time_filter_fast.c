#ifndef response_time_filter_fast_TEST
#define response_time_filter_fast_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_time_filter_fast_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_time_filter_fast.h"
response_time_filter_fast_t* instantiate_response_time_filter_fast(int include_optional);



response_time_filter_fast_t* instantiate_response_time_filter_fast(int include_optional) {
  response_time_filter_fast_t* response_time_filter_fast = NULL;
  if (include_optional) {
    response_time_filter_fast = response_time_filter_fast_create(
      list_create()
    );
  } else {
    response_time_filter_fast = response_time_filter_fast_create(
      list_create()
    );
  }

  return response_time_filter_fast;
}


#ifdef response_time_filter_fast_MAIN

void test_response_time_filter_fast(int include_optional) {
    response_time_filter_fast_t* response_time_filter_fast_1 = instantiate_response_time_filter_fast(include_optional);

	cJSON* jsonresponse_time_filter_fast_1 = response_time_filter_fast_convertToJSON(response_time_filter_fast_1);
	printf("response_time_filter_fast :\n%s\n", cJSON_Print(jsonresponse_time_filter_fast_1));
	response_time_filter_fast_t* response_time_filter_fast_2 = response_time_filter_fast_parseFromJSON(jsonresponse_time_filter_fast_1);
	cJSON* jsonresponse_time_filter_fast_2 = response_time_filter_fast_convertToJSON(response_time_filter_fast_2);
	printf("repeating response_time_filter_fast:\n%s\n", cJSON_Print(jsonresponse_time_filter_fast_2));
}

int main() {
  test_response_time_filter_fast(1);
  test_response_time_filter_fast(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_time_filter_fast_MAIN
#endif // response_time_filter_fast_TEST
