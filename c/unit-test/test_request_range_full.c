#ifndef request_range_full_TEST
#define request_range_full_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_range_full_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_range_full.h"
request_range_full_t* instantiate_request_range_full(int include_optional);



request_range_full_t* instantiate_request_range_full(int include_optional) {
  request_range_full_t* request_range_full = NULL;
  if (include_optional) {
    request_range_full = request_range_full_create(
      1,
      1,
      1
    );
  } else {
    request_range_full = request_range_full_create(
      1,
      1,
      1
    );
  }

  return request_range_full;
}


#ifdef request_range_full_MAIN

void test_request_range_full(int include_optional) {
    request_range_full_t* request_range_full_1 = instantiate_request_range_full(include_optional);

	cJSON* jsonrequest_range_full_1 = request_range_full_convertToJSON(request_range_full_1);
	printf("request_range_full :\n%s\n", cJSON_Print(jsonrequest_range_full_1));
	request_range_full_t* request_range_full_2 = request_range_full_parseFromJSON(jsonrequest_range_full_1);
	cJSON* jsonrequest_range_full_2 = request_range_full_convertToJSON(request_range_full_2);
	printf("repeating request_range_full:\n%s\n", cJSON_Print(jsonrequest_range_full_2));
}

int main() {
  test_request_range_full(1);
  test_request_range_full(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_range_full_MAIN
#endif // request_range_full_TEST
