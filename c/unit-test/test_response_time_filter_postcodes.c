#ifndef response_time_filter_postcodes_TEST
#define response_time_filter_postcodes_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_time_filter_postcodes_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_time_filter_postcodes.h"
response_time_filter_postcodes_t* instantiate_response_time_filter_postcodes(int include_optional);



response_time_filter_postcodes_t* instantiate_response_time_filter_postcodes(int include_optional) {
  response_time_filter_postcodes_t* response_time_filter_postcodes = NULL;
  if (include_optional) {
    response_time_filter_postcodes = response_time_filter_postcodes_create(
      list_create()
    );
  } else {
    response_time_filter_postcodes = response_time_filter_postcodes_create(
      list_create()
    );
  }

  return response_time_filter_postcodes;
}


#ifdef response_time_filter_postcodes_MAIN

void test_response_time_filter_postcodes(int include_optional) {
    response_time_filter_postcodes_t* response_time_filter_postcodes_1 = instantiate_response_time_filter_postcodes(include_optional);

	cJSON* jsonresponse_time_filter_postcodes_1 = response_time_filter_postcodes_convertToJSON(response_time_filter_postcodes_1);
	printf("response_time_filter_postcodes :\n%s\n", cJSON_Print(jsonresponse_time_filter_postcodes_1));
	response_time_filter_postcodes_t* response_time_filter_postcodes_2 = response_time_filter_postcodes_parseFromJSON(jsonresponse_time_filter_postcodes_1);
	cJSON* jsonresponse_time_filter_postcodes_2 = response_time_filter_postcodes_convertToJSON(response_time_filter_postcodes_2);
	printf("repeating response_time_filter_postcodes:\n%s\n", cJSON_Print(jsonresponse_time_filter_postcodes_2));
}

int main() {
  test_response_time_filter_postcodes(1);
  test_response_time_filter_postcodes(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_time_filter_postcodes_MAIN
#endif // response_time_filter_postcodes_TEST
