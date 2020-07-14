#ifndef request_time_filter_TEST
#define request_time_filter_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_time_filter_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_time_filter.h"
request_time_filter_t* instantiate_request_time_filter(int include_optional);



request_time_filter_t* instantiate_request_time_filter(int include_optional) {
  request_time_filter_t* request_time_filter = NULL;
  if (include_optional) {
    request_time_filter = request_time_filter_create(
      list_create(),
      list_create(),
      list_create()
    );
  } else {
    request_time_filter = request_time_filter_create(
      list_create(),
      list_create(),
      list_create()
    );
  }

  return request_time_filter;
}


#ifdef request_time_filter_MAIN

void test_request_time_filter(int include_optional) {
    request_time_filter_t* request_time_filter_1 = instantiate_request_time_filter(include_optional);

	cJSON* jsonrequest_time_filter_1 = request_time_filter_convertToJSON(request_time_filter_1);
	printf("request_time_filter :\n%s\n", cJSON_Print(jsonrequest_time_filter_1));
	request_time_filter_t* request_time_filter_2 = request_time_filter_parseFromJSON(jsonrequest_time_filter_1);
	cJSON* jsonrequest_time_filter_2 = request_time_filter_convertToJSON(request_time_filter_2);
	printf("repeating request_time_filter:\n%s\n", cJSON_Print(jsonrequest_time_filter_2));
}

int main() {
  test_request_time_filter(1);
  test_request_time_filter(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_time_filter_MAIN
#endif // request_time_filter_TEST
