#ifndef request_union_on_intersection_TEST
#define request_union_on_intersection_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define request_union_on_intersection_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/request_union_on_intersection.h"
request_union_on_intersection_t* instantiate_request_union_on_intersection(int include_optional);



request_union_on_intersection_t* instantiate_request_union_on_intersection(int include_optional) {
  request_union_on_intersection_t* request_union_on_intersection = NULL;
  if (include_optional) {
    request_union_on_intersection = request_union_on_intersection_create(
      "0",
      list_create()
    );
  } else {
    request_union_on_intersection = request_union_on_intersection_create(
      "0",
      list_create()
    );
  }

  return request_union_on_intersection;
}


#ifdef request_union_on_intersection_MAIN

void test_request_union_on_intersection(int include_optional) {
    request_union_on_intersection_t* request_union_on_intersection_1 = instantiate_request_union_on_intersection(include_optional);

	cJSON* jsonrequest_union_on_intersection_1 = request_union_on_intersection_convertToJSON(request_union_on_intersection_1);
	printf("request_union_on_intersection :\n%s\n", cJSON_Print(jsonrequest_union_on_intersection_1));
	request_union_on_intersection_t* request_union_on_intersection_2 = request_union_on_intersection_parseFromJSON(jsonrequest_union_on_intersection_1);
	cJSON* jsonrequest_union_on_intersection_2 = request_union_on_intersection_convertToJSON(request_union_on_intersection_2);
	printf("repeating request_union_on_intersection:\n%s\n", cJSON_Print(jsonrequest_union_on_intersection_2));
}

int main() {
  test_request_union_on_intersection(1);
  test_request_union_on_intersection(0);

  printf("Hello world \n");
  return 0;
}

#endif // request_union_on_intersection_MAIN
#endif // request_union_on_intersection_TEST
