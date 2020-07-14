#ifndef request_time_filter_fast_TEST
#define request_time_filter_fast_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_time_filter_fast_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_time_filter_fast.h"
request_time_filter_fast_t* instantiate_request_time_filter_fast(int include_optional);

#include "test_request_time_filter_fast_arrival_searches.c"


request_time_filter_fast_t* instantiate_request_time_filter_fast(int include_optional) {
  request_time_filter_fast_t* request_time_filter_fast = NULL;
  if (include_optional) {
    request_time_filter_fast = request_time_filter_fast_create(
      list_create(),
       // false, not to have infinite recursion
      instantiate_request_time_filter_fast_arrival_searches(0)
    );
  } else {
    request_time_filter_fast = request_time_filter_fast_create(
      list_create(),
      NULL
    );
  }

  return request_time_filter_fast;
}


#ifdef request_time_filter_fast_MAIN

void test_request_time_filter_fast(int include_optional) {
    request_time_filter_fast_t* request_time_filter_fast_1 = instantiate_request_time_filter_fast(include_optional);

	cJSON* jsonrequest_time_filter_fast_1 = request_time_filter_fast_convertToJSON(request_time_filter_fast_1);
	printf("request_time_filter_fast :\n%s\n", cJSON_Print(jsonrequest_time_filter_fast_1));
	request_time_filter_fast_t* request_time_filter_fast_2 = request_time_filter_fast_parseFromJSON(jsonrequest_time_filter_fast_1);
	cJSON* jsonrequest_time_filter_fast_2 = request_time_filter_fast_convertToJSON(request_time_filter_fast_2);
	printf("repeating request_time_filter_fast:\n%s\n", cJSON_Print(jsonrequest_time_filter_fast_2));
}

int main() {
  test_request_time_filter_fast(1);
  test_request_time_filter_fast(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_time_filter_fast_MAIN
#endif // request_time_filter_fast_TEST
