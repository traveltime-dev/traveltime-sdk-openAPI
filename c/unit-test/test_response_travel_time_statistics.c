#ifndef response_travel_time_statistics_TEST
#define response_travel_time_statistics_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_travel_time_statistics_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_travel_time_statistics.h"
response_travel_time_statistics_t* instantiate_response_travel_time_statistics(int include_optional);



response_travel_time_statistics_t* instantiate_response_travel_time_statistics(int include_optional) {
  response_travel_time_statistics_t* response_travel_time_statistics = NULL;
  if (include_optional) {
    response_travel_time_statistics = response_travel_time_statistics_create(
      56,
      56,
      56,
      56
    );
  } else {
    response_travel_time_statistics = response_travel_time_statistics_create(
      56,
      56,
      56,
      56
    );
  }

  return response_travel_time_statistics;
}


#ifdef response_travel_time_statistics_MAIN

void test_response_travel_time_statistics(int include_optional) {
    response_travel_time_statistics_t* response_travel_time_statistics_1 = instantiate_response_travel_time_statistics(include_optional);

	cJSON* jsonresponse_travel_time_statistics_1 = response_travel_time_statistics_convertToJSON(response_travel_time_statistics_1);
	printf("response_travel_time_statistics :\n%s\n", cJSON_Print(jsonresponse_travel_time_statistics_1));
	response_travel_time_statistics_t* response_travel_time_statistics_2 = response_travel_time_statistics_parseFromJSON(jsonresponse_travel_time_statistics_1);
	cJSON* jsonresponse_travel_time_statistics_2 = response_travel_time_statistics_convertToJSON(response_travel_time_statistics_2);
	printf("repeating response_travel_time_statistics:\n%s\n", cJSON_Print(jsonresponse_travel_time_statistics_2));
}

int main() {
  test_response_travel_time_statistics(1);
  test_response_travel_time_statistics(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_travel_time_statistics_MAIN
#endif // response_travel_time_statistics_TEST
