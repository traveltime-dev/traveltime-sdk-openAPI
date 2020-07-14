#ifndef response_time_filter_postcodes_result_TEST
#define response_time_filter_postcodes_result_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_time_filter_postcodes_result_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_time_filter_postcodes_result.h"
response_time_filter_postcodes_result_t* instantiate_response_time_filter_postcodes_result(int include_optional);



response_time_filter_postcodes_result_t* instantiate_response_time_filter_postcodes_result(int include_optional) {
  response_time_filter_postcodes_result_t* response_time_filter_postcodes_result = NULL;
  if (include_optional) {
    response_time_filter_postcodes_result = response_time_filter_postcodes_result_create(
      "0",
      list_create()
    );
  } else {
    response_time_filter_postcodes_result = response_time_filter_postcodes_result_create(
      "0",
      list_create()
    );
  }

  return response_time_filter_postcodes_result;
}


#ifdef response_time_filter_postcodes_result_MAIN

void test_response_time_filter_postcodes_result(int include_optional) {
    response_time_filter_postcodes_result_t* response_time_filter_postcodes_result_1 = instantiate_response_time_filter_postcodes_result(include_optional);

	cJSON* jsonresponse_time_filter_postcodes_result_1 = response_time_filter_postcodes_result_convertToJSON(response_time_filter_postcodes_result_1);
	printf("response_time_filter_postcodes_result :\n%s\n", cJSON_Print(jsonresponse_time_filter_postcodes_result_1));
	response_time_filter_postcodes_result_t* response_time_filter_postcodes_result_2 = response_time_filter_postcodes_result_parseFromJSON(jsonresponse_time_filter_postcodes_result_1);
	cJSON* jsonresponse_time_filter_postcodes_result_2 = response_time_filter_postcodes_result_convertToJSON(response_time_filter_postcodes_result_2);
	printf("repeating response_time_filter_postcodes_result:\n%s\n", cJSON_Print(jsonresponse_time_filter_postcodes_result_2));
}

int main() {
  test_response_time_filter_postcodes_result(1);
  test_response_time_filter_postcodes_result(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_time_filter_postcodes_result_MAIN
#endif // response_time_filter_postcodes_result_TEST
