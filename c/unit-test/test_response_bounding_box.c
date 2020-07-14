#ifndef response_bounding_box_TEST
#define response_bounding_box_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_bounding_box_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_bounding_box.h"
response_bounding_box_t* instantiate_response_bounding_box(int include_optional);

#include "test_response_box.c"


response_bounding_box_t* instantiate_response_bounding_box(int include_optional) {
  response_bounding_box_t* response_bounding_box = NULL;
  if (include_optional) {
    response_bounding_box = response_bounding_box_create(
       // false, not to have infinite recursion
      instantiate_response_box(0),
      list_create()
    );
  } else {
    response_bounding_box = response_bounding_box_create(
      NULL,
      list_create()
    );
  }

  return response_bounding_box;
}


#ifdef response_bounding_box_MAIN

void test_response_bounding_box(int include_optional) {
    response_bounding_box_t* response_bounding_box_1 = instantiate_response_bounding_box(include_optional);

	cJSON* jsonresponse_bounding_box_1 = response_bounding_box_convertToJSON(response_bounding_box_1);
	printf("response_bounding_box :\n%s\n", cJSON_Print(jsonresponse_bounding_box_1));
	response_bounding_box_t* response_bounding_box_2 = response_bounding_box_parseFromJSON(jsonresponse_bounding_box_1);
	cJSON* jsonresponse_bounding_box_2 = response_bounding_box_convertToJSON(response_bounding_box_2);
	printf("repeating response_bounding_box:\n%s\n", cJSON_Print(jsonresponse_bounding_box_2));
}

int main() {
  test_response_bounding_box(1);
  test_response_bounding_box(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_bounding_box_MAIN
#endif // response_bounding_box_TEST
