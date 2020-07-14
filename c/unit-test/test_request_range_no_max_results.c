#ifndef request_range_no_max_results_TEST
#define request_range_no_max_results_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_range_no_max_results_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_range_no_max_results.h"
request_range_no_max_results_t* instantiate_request_range_no_max_results(int include_optional);



request_range_no_max_results_t* instantiate_request_range_no_max_results(int include_optional) {
  request_range_no_max_results_t* request_range_no_max_results = NULL;
  if (include_optional) {
    request_range_no_max_results = request_range_no_max_results_create(
      1,
      1
    );
  } else {
    request_range_no_max_results = request_range_no_max_results_create(
      1,
      1
    );
  }

  return request_range_no_max_results;
}


#ifdef request_range_no_max_results_MAIN

void test_request_range_no_max_results(int include_optional) {
    request_range_no_max_results_t* request_range_no_max_results_1 = instantiate_request_range_no_max_results(include_optional);

	cJSON* jsonrequest_range_no_max_results_1 = request_range_no_max_results_convertToJSON(request_range_no_max_results_1);
	printf("request_range_no_max_results :\n%s\n", cJSON_Print(jsonrequest_range_no_max_results_1));
	request_range_no_max_results_t* request_range_no_max_results_2 = request_range_no_max_results_parseFromJSON(jsonrequest_range_no_max_results_1);
	cJSON* jsonrequest_range_no_max_results_2 = request_range_no_max_results_convertToJSON(request_range_no_max_results_2);
	printf("repeating request_range_no_max_results:\n%s\n", cJSON_Print(jsonrequest_range_no_max_results_2));
}

int main() {
  test_request_range_no_max_results(1);
  test_request_range_no_max_results(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_range_no_max_results_MAIN
#endif // request_range_no_max_results_TEST
