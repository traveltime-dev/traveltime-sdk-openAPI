#ifndef request_arrival_time_period_TEST
#define request_arrival_time_period_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_arrival_time_period_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_arrival_time_period.h"
request_arrival_time_period_t* instantiate_request_arrival_time_period(int include_optional);



request_arrival_time_period_t* instantiate_request_arrival_time_period(int include_optional) {
  request_arrival_time_period_t* request_arrival_time_period = NULL;
  if (include_optional) {
    request_arrival_time_period = request_arrival_time_period_create(
    );
  } else {
    request_arrival_time_period = request_arrival_time_period_create(
    );
  }

  return request_arrival_time_period;
}


#ifdef request_arrival_time_period_MAIN

void test_request_arrival_time_period(int include_optional) {
    request_arrival_time_period_t* request_arrival_time_period_1 = instantiate_request_arrival_time_period(include_optional);

	cJSON* jsonrequest_arrival_time_period_1 = request_arrival_time_period_convertToJSON(request_arrival_time_period_1);
	printf("request_arrival_time_period :\n%s\n", cJSON_Print(jsonrequest_arrival_time_period_1));
	request_arrival_time_period_t* request_arrival_time_period_2 = request_arrival_time_period_parseFromJSON(jsonrequest_arrival_time_period_1);
	cJSON* jsonrequest_arrival_time_period_2 = request_arrival_time_period_convertToJSON(request_arrival_time_period_2);
	printf("repeating request_arrival_time_period:\n%s\n", cJSON_Print(jsonrequest_arrival_time_period_2));
}

int main() {
  test_request_arrival_time_period(1);
  test_request_arrival_time_period(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_arrival_time_period_MAIN
#endif // request_arrival_time_period_TEST
