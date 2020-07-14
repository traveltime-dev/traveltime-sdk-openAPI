#ifndef request_transportation_fast_TEST
#define request_transportation_fast_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_transportation_fast_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_transportation_fast.h"
request_transportation_fast_t* instantiate_request_transportation_fast(int include_optional);



request_transportation_fast_t* instantiate_request_transportation_fast(int include_optional) {
  request_transportation_fast_t* request_transportation_fast = NULL;
  if (include_optional) {
    request_transportation_fast = request_transportation_fast_create(
      traveltime_api_request_transportation_fast_TYPE_public_transport
    );
  } else {
    request_transportation_fast = request_transportation_fast_create(
      traveltime_api_request_transportation_fast_TYPE_public_transport
    );
  }

  return request_transportation_fast;
}


#ifdef request_transportation_fast_MAIN

void test_request_transportation_fast(int include_optional) {
    request_transportation_fast_t* request_transportation_fast_1 = instantiate_request_transportation_fast(include_optional);

	cJSON* jsonrequest_transportation_fast_1 = request_transportation_fast_convertToJSON(request_transportation_fast_1);
	printf("request_transportation_fast :\n%s\n", cJSON_Print(jsonrequest_transportation_fast_1));
	request_transportation_fast_t* request_transportation_fast_2 = request_transportation_fast_parseFromJSON(jsonrequest_transportation_fast_1);
	cJSON* jsonrequest_transportation_fast_2 = request_transportation_fast_convertToJSON(request_transportation_fast_2);
	printf("repeating request_transportation_fast:\n%s\n", cJSON_Print(jsonrequest_transportation_fast_2));
}

int main() {
  test_request_transportation_fast(1);
  test_request_transportation_fast(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_transportation_fast_MAIN
#endif // request_transportation_fast_TEST
