#ifndef request_level_of_detail_TEST
#define request_level_of_detail_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_level_of_detail_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_level_of_detail.h"
request_level_of_detail_t* instantiate_request_level_of_detail(int include_optional);



request_level_of_detail_t* instantiate_request_level_of_detail(int include_optional) {
  request_level_of_detail_t* request_level_of_detail = NULL;
  if (include_optional) {
    request_level_of_detail = request_level_of_detail_create(
      traveltime_api_request_level_of_detail_SCALETYPE_simple,
      traveltime_api_request_level_of_detail_LEVEL_lowest
    );
  } else {
    request_level_of_detail = request_level_of_detail_create(
      traveltime_api_request_level_of_detail_SCALETYPE_simple,
      traveltime_api_request_level_of_detail_LEVEL_lowest
    );
  }

  return request_level_of_detail;
}


#ifdef request_level_of_detail_MAIN

void test_request_level_of_detail(int include_optional) {
    request_level_of_detail_t* request_level_of_detail_1 = instantiate_request_level_of_detail(include_optional);

	cJSON* jsonrequest_level_of_detail_1 = request_level_of_detail_convertToJSON(request_level_of_detail_1);
	printf("request_level_of_detail :\n%s\n", cJSON_Print(jsonrequest_level_of_detail_1));
	request_level_of_detail_t* request_level_of_detail_2 = request_level_of_detail_parseFromJSON(jsonrequest_level_of_detail_1);
	cJSON* jsonrequest_level_of_detail_2 = request_level_of_detail_convertToJSON(request_level_of_detail_2);
	printf("repeating request_level_of_detail:\n%s\n", cJSON_Print(jsonrequest_level_of_detail_2));
}

int main() {
  test_request_level_of_detail(1);
  test_request_level_of_detail(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_level_of_detail_MAIN
#endif // request_level_of_detail_TEST
