#ifndef response_time_filter_postcode_sector_properties_TEST
#define response_time_filter_postcode_sector_properties_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_time_filter_postcode_sector_properties_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_time_filter_postcode_sector_properties.h"
response_time_filter_postcode_sector_properties_t* instantiate_response_time_filter_postcode_sector_properties(int include_optional);

#include "test_response_travel_time_statistics.c"
#include "test_response_travel_time_statistics.c"


response_time_filter_postcode_sector_properties_t* instantiate_response_time_filter_postcode_sector_properties(int include_optional) {
  response_time_filter_postcode_sector_properties_t* response_time_filter_postcode_sector_properties = NULL;
  if (include_optional) {
    response_time_filter_postcode_sector_properties = response_time_filter_postcode_sector_properties_create(
       // false, not to have infinite recursion
      instantiate_response_travel_time_statistics(0),
       // false, not to have infinite recursion
      instantiate_response_travel_time_statistics(0),
      1.337
    );
  } else {
    response_time_filter_postcode_sector_properties = response_time_filter_postcode_sector_properties_create(
      NULL,
      NULL,
      1.337
    );
  }

  return response_time_filter_postcode_sector_properties;
}


#ifdef response_time_filter_postcode_sector_properties_MAIN

void test_response_time_filter_postcode_sector_properties(int include_optional) {
    response_time_filter_postcode_sector_properties_t* response_time_filter_postcode_sector_properties_1 = instantiate_response_time_filter_postcode_sector_properties(include_optional);

	cJSON* jsonresponse_time_filter_postcode_sector_properties_1 = response_time_filter_postcode_sector_properties_convertToJSON(response_time_filter_postcode_sector_properties_1);
	printf("response_time_filter_postcode_sector_properties :\n%s\n", cJSON_Print(jsonresponse_time_filter_postcode_sector_properties_1));
	response_time_filter_postcode_sector_properties_t* response_time_filter_postcode_sector_properties_2 = response_time_filter_postcode_sector_properties_parseFromJSON(jsonresponse_time_filter_postcode_sector_properties_1);
	cJSON* jsonresponse_time_filter_postcode_sector_properties_2 = response_time_filter_postcode_sector_properties_convertToJSON(response_time_filter_postcode_sector_properties_2);
	printf("repeating response_time_filter_postcode_sector_properties:\n%s\n", cJSON_Print(jsonresponse_time_filter_postcode_sector_properties_2));
}

int main() {
  test_response_time_filter_postcode_sector_properties(1);
  test_response_time_filter_postcode_sector_properties(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_time_filter_postcode_sector_properties_MAIN
#endif // response_time_filter_postcode_sector_properties_TEST
