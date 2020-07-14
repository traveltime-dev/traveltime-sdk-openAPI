#ifndef request_time_filter_fast_arrival_searches_TEST
#define request_time_filter_fast_arrival_searches_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_time_filter_fast_arrival_searches_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_time_filter_fast_arrival_searches.h"
request_time_filter_fast_arrival_searches_t* instantiate_request_time_filter_fast_arrival_searches(int include_optional);



request_time_filter_fast_arrival_searches_t* instantiate_request_time_filter_fast_arrival_searches(int include_optional) {
  request_time_filter_fast_arrival_searches_t* request_time_filter_fast_arrival_searches = NULL;
  if (include_optional) {
    request_time_filter_fast_arrival_searches = request_time_filter_fast_arrival_searches_create(
      list_create(),
      list_create()
    );
  } else {
    request_time_filter_fast_arrival_searches = request_time_filter_fast_arrival_searches_create(
      list_create(),
      list_create()
    );
  }

  return request_time_filter_fast_arrival_searches;
}


#ifdef request_time_filter_fast_arrival_searches_MAIN

void test_request_time_filter_fast_arrival_searches(int include_optional) {
    request_time_filter_fast_arrival_searches_t* request_time_filter_fast_arrival_searches_1 = instantiate_request_time_filter_fast_arrival_searches(include_optional);

	cJSON* jsonrequest_time_filter_fast_arrival_searches_1 = request_time_filter_fast_arrival_searches_convertToJSON(request_time_filter_fast_arrival_searches_1);
	printf("request_time_filter_fast_arrival_searches :\n%s\n", cJSON_Print(jsonrequest_time_filter_fast_arrival_searches_1));
	request_time_filter_fast_arrival_searches_t* request_time_filter_fast_arrival_searches_2 = request_time_filter_fast_arrival_searches_parseFromJSON(jsonrequest_time_filter_fast_arrival_searches_1);
	cJSON* jsonrequest_time_filter_fast_arrival_searches_2 = request_time_filter_fast_arrival_searches_convertToJSON(request_time_filter_fast_arrival_searches_2);
	printf("repeating request_time_filter_fast_arrival_searches:\n%s\n", cJSON_Print(jsonrequest_time_filter_fast_arrival_searches_2));
}

int main() {
  test_request_time_filter_fast_arrival_searches(1);
  test_request_time_filter_fast_arrival_searches(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_time_filter_fast_arrival_searches_MAIN
#endif // request_time_filter_fast_arrival_searches_TEST
