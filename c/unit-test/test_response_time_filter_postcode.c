#ifndef response_time_filter_postcode_TEST
#define response_time_filter_postcode_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_time_filter_postcode_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_time_filter_postcode.h"
response_time_filter_postcode_t* instantiate_response_time_filter_postcode(int include_optional);



response_time_filter_postcode_t* instantiate_response_time_filter_postcode(int include_optional) {
  response_time_filter_postcode_t* response_time_filter_postcode = NULL;
  if (include_optional) {
    response_time_filter_postcode = response_time_filter_postcode_create(
      null,
      list_create()
    );
  } else {
    response_time_filter_postcode = response_time_filter_postcode_create(
      null,
      list_create()
    );
  }

  return response_time_filter_postcode;
}


#ifdef response_time_filter_postcode_MAIN

void test_response_time_filter_postcode(int include_optional) {
    response_time_filter_postcode_t* response_time_filter_postcode_1 = instantiate_response_time_filter_postcode(include_optional);

	cJSON* jsonresponse_time_filter_postcode_1 = response_time_filter_postcode_convertToJSON(response_time_filter_postcode_1);
	printf("response_time_filter_postcode :\n%s\n", cJSON_Print(jsonresponse_time_filter_postcode_1));
	response_time_filter_postcode_t* response_time_filter_postcode_2 = response_time_filter_postcode_parseFromJSON(jsonresponse_time_filter_postcode_1);
	cJSON* jsonresponse_time_filter_postcode_2 = response_time_filter_postcode_convertToJSON(response_time_filter_postcode_2);
	printf("repeating response_time_filter_postcode:\n%s\n", cJSON_Print(jsonresponse_time_filter_postcode_2));
}

int main() {
  test_response_time_filter_postcode(1);
  test_response_time_filter_postcode(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_time_filter_postcode_MAIN
#endif // response_time_filter_postcode_TEST
