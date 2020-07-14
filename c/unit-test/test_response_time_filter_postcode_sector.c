#ifndef response_time_filter_postcode_sector_TEST
#define response_time_filter_postcode_sector_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_time_filter_postcode_sector_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_time_filter_postcode_sector.h"
response_time_filter_postcode_sector_t* instantiate_response_time_filter_postcode_sector(int include_optional);

#include "test_response_time_filter_postcode_sector_properties.c"


response_time_filter_postcode_sector_t* instantiate_response_time_filter_postcode_sector(int include_optional) {
  response_time_filter_postcode_sector_t* response_time_filter_postcode_sector = NULL;
  if (include_optional) {
    response_time_filter_postcode_sector = response_time_filter_postcode_sector_create(
      null,
       // false, not to have infinite recursion
      instantiate_response_time_filter_postcode_sector_properties(0)
    );
  } else {
    response_time_filter_postcode_sector = response_time_filter_postcode_sector_create(
      null,
      NULL
    );
  }

  return response_time_filter_postcode_sector;
}


#ifdef response_time_filter_postcode_sector_MAIN

void test_response_time_filter_postcode_sector(int include_optional) {
    response_time_filter_postcode_sector_t* response_time_filter_postcode_sector_1 = instantiate_response_time_filter_postcode_sector(include_optional);

	cJSON* jsonresponse_time_filter_postcode_sector_1 = response_time_filter_postcode_sector_convertToJSON(response_time_filter_postcode_sector_1);
	printf("response_time_filter_postcode_sector :\n%s\n", cJSON_Print(jsonresponse_time_filter_postcode_sector_1));
	response_time_filter_postcode_sector_t* response_time_filter_postcode_sector_2 = response_time_filter_postcode_sector_parseFromJSON(jsonresponse_time_filter_postcode_sector_1);
	cJSON* jsonresponse_time_filter_postcode_sector_2 = response_time_filter_postcode_sector_convertToJSON(response_time_filter_postcode_sector_2);
	printf("repeating response_time_filter_postcode_sector:\n%s\n", cJSON_Print(jsonresponse_time_filter_postcode_sector_2));
}

int main() {
  test_response_time_filter_postcode_sector(1);
  test_response_time_filter_postcode_sector(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_time_filter_postcode_sector_MAIN
#endif // response_time_filter_postcode_sector_TEST
