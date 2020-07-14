#ifndef request_time_filter_postcode_districts_TEST
#define request_time_filter_postcode_districts_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_time_filter_postcode_districts_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_time_filter_postcode_districts.h"
request_time_filter_postcode_districts_t* instantiate_request_time_filter_postcode_districts(int include_optional);



request_time_filter_postcode_districts_t* instantiate_request_time_filter_postcode_districts(int include_optional) {
  request_time_filter_postcode_districts_t* request_time_filter_postcode_districts = NULL;
  if (include_optional) {
    request_time_filter_postcode_districts = request_time_filter_postcode_districts_create(
      list_create(),
      list_create()
    );
  } else {
    request_time_filter_postcode_districts = request_time_filter_postcode_districts_create(
      list_create(),
      list_create()
    );
  }

  return request_time_filter_postcode_districts;
}


#ifdef request_time_filter_postcode_districts_MAIN

void test_request_time_filter_postcode_districts(int include_optional) {
    request_time_filter_postcode_districts_t* request_time_filter_postcode_districts_1 = instantiate_request_time_filter_postcode_districts(include_optional);

	cJSON* jsonrequest_time_filter_postcode_districts_1 = request_time_filter_postcode_districts_convertToJSON(request_time_filter_postcode_districts_1);
	printf("request_time_filter_postcode_districts :\n%s\n", cJSON_Print(jsonrequest_time_filter_postcode_districts_1));
	request_time_filter_postcode_districts_t* request_time_filter_postcode_districts_2 = request_time_filter_postcode_districts_parseFromJSON(jsonrequest_time_filter_postcode_districts_1);
	cJSON* jsonrequest_time_filter_postcode_districts_2 = request_time_filter_postcode_districts_convertToJSON(request_time_filter_postcode_districts_2);
	printf("repeating request_time_filter_postcode_districts:\n%s\n", cJSON_Print(jsonrequest_time_filter_postcode_districts_2));
}

int main() {
  test_request_time_filter_postcode_districts(1);
  test_request_time_filter_postcode_districts(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_time_filter_postcode_districts_MAIN
#endif // request_time_filter_postcode_districts_TEST
