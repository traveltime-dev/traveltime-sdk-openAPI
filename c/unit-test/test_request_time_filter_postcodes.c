#ifndef request_time_filter_postcodes_TEST
#define request_time_filter_postcodes_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_time_filter_postcodes_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_time_filter_postcodes.h"
request_time_filter_postcodes_t* instantiate_request_time_filter_postcodes(int include_optional);



request_time_filter_postcodes_t* instantiate_request_time_filter_postcodes(int include_optional) {
  request_time_filter_postcodes_t* request_time_filter_postcodes = NULL;
  if (include_optional) {
    request_time_filter_postcodes = request_time_filter_postcodes_create(
      list_create(),
      list_create()
    );
  } else {
    request_time_filter_postcodes = request_time_filter_postcodes_create(
      list_create(),
      list_create()
    );
  }

  return request_time_filter_postcodes;
}


#ifdef request_time_filter_postcodes_MAIN

void test_request_time_filter_postcodes(int include_optional) {
    request_time_filter_postcodes_t* request_time_filter_postcodes_1 = instantiate_request_time_filter_postcodes(include_optional);

	cJSON* jsonrequest_time_filter_postcodes_1 = request_time_filter_postcodes_convertToJSON(request_time_filter_postcodes_1);
	printf("request_time_filter_postcodes :\n%s\n", cJSON_Print(jsonrequest_time_filter_postcodes_1));
	request_time_filter_postcodes_t* request_time_filter_postcodes_2 = request_time_filter_postcodes_parseFromJSON(jsonrequest_time_filter_postcodes_1);
	cJSON* jsonrequest_time_filter_postcodes_2 = request_time_filter_postcodes_convertToJSON(request_time_filter_postcodes_2);
	printf("repeating request_time_filter_postcodes:\n%s\n", cJSON_Print(jsonrequest_time_filter_postcodes_2));
}

int main() {
  test_request_time_filter_postcodes(1);
  test_request_time_filter_postcodes(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_time_filter_postcodes_MAIN
#endif // request_time_filter_postcodes_TEST
