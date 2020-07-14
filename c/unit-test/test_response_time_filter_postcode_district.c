#ifndef response_time_filter_postcode_district_TEST
#define response_time_filter_postcode_district_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_time_filter_postcode_district_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_time_filter_postcode_district.h"
response_time_filter_postcode_district_t* instantiate_response_time_filter_postcode_district(int include_optional);

#include "test_response_time_filter_postcode_district_properties.c"


response_time_filter_postcode_district_t* instantiate_response_time_filter_postcode_district(int include_optional) {
  response_time_filter_postcode_district_t* response_time_filter_postcode_district = NULL;
  if (include_optional) {
    response_time_filter_postcode_district = response_time_filter_postcode_district_create(
      null,
       // false, not to have infinite recursion
      instantiate_response_time_filter_postcode_district_properties(0)
    );
  } else {
    response_time_filter_postcode_district = response_time_filter_postcode_district_create(
      null,
      NULL
    );
  }

  return response_time_filter_postcode_district;
}


#ifdef response_time_filter_postcode_district_MAIN

void test_response_time_filter_postcode_district(int include_optional) {
    response_time_filter_postcode_district_t* response_time_filter_postcode_district_1 = instantiate_response_time_filter_postcode_district(include_optional);

	cJSON* jsonresponse_time_filter_postcode_district_1 = response_time_filter_postcode_district_convertToJSON(response_time_filter_postcode_district_1);
	printf("response_time_filter_postcode_district :\n%s\n", cJSON_Print(jsonresponse_time_filter_postcode_district_1));
	response_time_filter_postcode_district_t* response_time_filter_postcode_district_2 = response_time_filter_postcode_district_parseFromJSON(jsonresponse_time_filter_postcode_district_1);
	cJSON* jsonresponse_time_filter_postcode_district_2 = response_time_filter_postcode_district_convertToJSON(response_time_filter_postcode_district_2);
	printf("repeating response_time_filter_postcode_district:\n%s\n", cJSON_Print(jsonresponse_time_filter_postcode_district_2));
}

int main() {
  test_response_time_filter_postcode_district(1);
  test_response_time_filter_postcode_district(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_time_filter_postcode_district_MAIN
#endif // response_time_filter_postcode_district_TEST
