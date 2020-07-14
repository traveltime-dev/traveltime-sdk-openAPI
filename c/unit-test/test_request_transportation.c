#ifndef request_transportation_TEST
#define request_transportation_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_transportation_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_transportation.h"
request_transportation_t* instantiate_request_transportation(int include_optional);



request_transportation_t* instantiate_request_transportation(int include_optional) {
  request_transportation_t* request_transportation = NULL;
  if (include_optional) {
    request_transportation = request_transportation_create(
      traveltime_api_request_transportation_TYPE_cycling,
      56,
      56,
      56,
      56,
      56
    );
  } else {
    request_transportation = request_transportation_create(
      traveltime_api_request_transportation_TYPE_cycling,
      56,
      56,
      56,
      56,
      56
    );
  }

  return request_transportation;
}


#ifdef request_transportation_MAIN

void test_request_transportation(int include_optional) {
    request_transportation_t* request_transportation_1 = instantiate_request_transportation(include_optional);

	cJSON* jsonrequest_transportation_1 = request_transportation_convertToJSON(request_transportation_1);
	printf("request_transportation :\n%s\n", cJSON_Print(jsonrequest_transportation_1));
	request_transportation_t* request_transportation_2 = request_transportation_parseFromJSON(jsonrequest_transportation_1);
	cJSON* jsonrequest_transportation_2 = request_transportation_convertToJSON(request_transportation_2);
	printf("repeating request_transportation:\n%s\n", cJSON_Print(jsonrequest_transportation_2));
}

int main() {
  test_request_transportation(1);
  test_request_transportation(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_transportation_MAIN
#endif // request_transportation_TEST
