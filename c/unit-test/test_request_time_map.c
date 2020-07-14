#ifndef request_time_map_TEST
#define request_time_map_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_time_map_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_time_map.h"
request_time_map_t* instantiate_request_time_map(int include_optional);



request_time_map_t* instantiate_request_time_map(int include_optional) {
  request_time_map_t* request_time_map = NULL;
  if (include_optional) {
    request_time_map = request_time_map_create(
      list_create(),
      list_create(),
      list_create(),
      list_create()
    );
  } else {
    request_time_map = request_time_map_create(
      list_create(),
      list_create(),
      list_create(),
      list_create()
    );
  }

  return request_time_map;
}


#ifdef request_time_map_MAIN

void test_request_time_map(int include_optional) {
    request_time_map_t* request_time_map_1 = instantiate_request_time_map(include_optional);

	cJSON* jsonrequest_time_map_1 = request_time_map_convertToJSON(request_time_map_1);
	printf("request_time_map :\n%s\n", cJSON_Print(jsonrequest_time_map_1));
	request_time_map_t* request_time_map_2 = request_time_map_parseFromJSON(jsonrequest_time_map_1);
	cJSON* jsonrequest_time_map_2 = request_time_map_convertToJSON(request_time_map_2);
	printf("repeating request_time_map:\n%s\n", cJSON_Print(jsonrequest_time_map_2));
}

int main() {
  test_request_time_map(1);
  test_request_time_map(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_time_map_MAIN
#endif // request_time_map_TEST
