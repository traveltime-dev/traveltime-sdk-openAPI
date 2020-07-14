#ifndef request_time_filter_postcode_districts_property_TEST
#define request_time_filter_postcode_districts_property_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_time_filter_postcode_districts_property_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_time_filter_postcode_districts_property.h"
request_time_filter_postcode_districts_property_t* instantiate_request_time_filter_postcode_districts_property(int include_optional);



request_time_filter_postcode_districts_property_t* instantiate_request_time_filter_postcode_districts_property(int include_optional) {
  request_time_filter_postcode_districts_property_t* request_time_filter_postcode_districts_property = NULL;
  if (include_optional) {
    request_time_filter_postcode_districts_property = request_time_filter_postcode_districts_property_create(
    );
  } else {
    request_time_filter_postcode_districts_property = request_time_filter_postcode_districts_property_create(
    );
  }

  return request_time_filter_postcode_districts_property;
}


#ifdef request_time_filter_postcode_districts_property_MAIN

void test_request_time_filter_postcode_districts_property(int include_optional) {
    request_time_filter_postcode_districts_property_t* request_time_filter_postcode_districts_property_1 = instantiate_request_time_filter_postcode_districts_property(include_optional);

	cJSON* jsonrequest_time_filter_postcode_districts_property_1 = request_time_filter_postcode_districts_property_convertToJSON(request_time_filter_postcode_districts_property_1);
	printf("request_time_filter_postcode_districts_property :\n%s\n", cJSON_Print(jsonrequest_time_filter_postcode_districts_property_1));
	request_time_filter_postcode_districts_property_t* request_time_filter_postcode_districts_property_2 = request_time_filter_postcode_districts_property_parseFromJSON(jsonrequest_time_filter_postcode_districts_property_1);
	cJSON* jsonrequest_time_filter_postcode_districts_property_2 = request_time_filter_postcode_districts_property_convertToJSON(request_time_filter_postcode_districts_property_2);
	printf("repeating request_time_filter_postcode_districts_property:\n%s\n", cJSON_Print(jsonrequest_time_filter_postcode_districts_property_2));
}

int main() {
  test_request_time_filter_postcode_districts_property(1);
  test_request_time_filter_postcode_districts_property(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_time_filter_postcode_districts_property_MAIN
#endif // request_time_filter_postcode_districts_property_TEST
