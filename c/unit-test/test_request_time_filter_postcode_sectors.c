#ifndef request_time_filter_postcode_sectors_TEST
#define request_time_filter_postcode_sectors_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_time_filter_postcode_sectors_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_time_filter_postcode_sectors.h"
request_time_filter_postcode_sectors_t* instantiate_request_time_filter_postcode_sectors(int include_optional);



request_time_filter_postcode_sectors_t* instantiate_request_time_filter_postcode_sectors(int include_optional) {
  request_time_filter_postcode_sectors_t* request_time_filter_postcode_sectors = NULL;
  if (include_optional) {
    request_time_filter_postcode_sectors = request_time_filter_postcode_sectors_create(
      list_create(),
      list_create()
    );
  } else {
    request_time_filter_postcode_sectors = request_time_filter_postcode_sectors_create(
      list_create(),
      list_create()
    );
  }

  return request_time_filter_postcode_sectors;
}


#ifdef request_time_filter_postcode_sectors_MAIN

void test_request_time_filter_postcode_sectors(int include_optional) {
    request_time_filter_postcode_sectors_t* request_time_filter_postcode_sectors_1 = instantiate_request_time_filter_postcode_sectors(include_optional);

	cJSON* jsonrequest_time_filter_postcode_sectors_1 = request_time_filter_postcode_sectors_convertToJSON(request_time_filter_postcode_sectors_1);
	printf("request_time_filter_postcode_sectors :\n%s\n", cJSON_Print(jsonrequest_time_filter_postcode_sectors_1));
	request_time_filter_postcode_sectors_t* request_time_filter_postcode_sectors_2 = request_time_filter_postcode_sectors_parseFromJSON(jsonrequest_time_filter_postcode_sectors_1);
	cJSON* jsonrequest_time_filter_postcode_sectors_2 = request_time_filter_postcode_sectors_convertToJSON(request_time_filter_postcode_sectors_2);
	printf("repeating request_time_filter_postcode_sectors:\n%s\n", cJSON_Print(jsonrequest_time_filter_postcode_sectors_2));
}

int main() {
  test_request_time_filter_postcode_sectors(1);
  test_request_time_filter_postcode_sectors(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_time_filter_postcode_sectors_MAIN
#endif // request_time_filter_postcode_sectors_TEST
