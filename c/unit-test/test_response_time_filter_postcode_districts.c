#ifndef response_time_filter_postcode_districts_TEST
#define response_time_filter_postcode_districts_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_time_filter_postcode_districts_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_time_filter_postcode_districts.h"
response_time_filter_postcode_districts_t* instantiate_response_time_filter_postcode_districts(int include_optional);



response_time_filter_postcode_districts_t* instantiate_response_time_filter_postcode_districts(int include_optional) {
  response_time_filter_postcode_districts_t* response_time_filter_postcode_districts = NULL;
  if (include_optional) {
    response_time_filter_postcode_districts = response_time_filter_postcode_districts_create(
      list_create()
    );
  } else {
    response_time_filter_postcode_districts = response_time_filter_postcode_districts_create(
      list_create()
    );
  }

  return response_time_filter_postcode_districts;
}


#ifdef response_time_filter_postcode_districts_MAIN

void test_response_time_filter_postcode_districts(int include_optional) {
    response_time_filter_postcode_districts_t* response_time_filter_postcode_districts_1 = instantiate_response_time_filter_postcode_districts(include_optional);

	cJSON* jsonresponse_time_filter_postcode_districts_1 = response_time_filter_postcode_districts_convertToJSON(response_time_filter_postcode_districts_1);
	printf("response_time_filter_postcode_districts :\n%s\n", cJSON_Print(jsonresponse_time_filter_postcode_districts_1));
	response_time_filter_postcode_districts_t* response_time_filter_postcode_districts_2 = response_time_filter_postcode_districts_parseFromJSON(jsonresponse_time_filter_postcode_districts_1);
	cJSON* jsonresponse_time_filter_postcode_districts_2 = response_time_filter_postcode_districts_convertToJSON(response_time_filter_postcode_districts_2);
	printf("repeating response_time_filter_postcode_districts:\n%s\n", cJSON_Print(jsonresponse_time_filter_postcode_districts_2));
}

int main() {
  test_response_time_filter_postcode_districts(1);
  test_response_time_filter_postcode_districts(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_time_filter_postcode_districts_MAIN
#endif // response_time_filter_postcode_districts_TEST
