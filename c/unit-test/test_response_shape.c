#ifndef response_shape_TEST
#define response_shape_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_shape_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_shape.h"
response_shape_t* instantiate_response_shape(int include_optional);



response_shape_t* instantiate_response_shape(int include_optional) {
  response_shape_t* response_shape = NULL;
  if (include_optional) {
    response_shape = response_shape_create(
      list_create(),
      list_create()
    );
  } else {
    response_shape = response_shape_create(
      list_create(),
      list_create()
    );
  }

  return response_shape;
}


#ifdef response_shape_MAIN

void test_response_shape(int include_optional) {
    response_shape_t* response_shape_1 = instantiate_response_shape(include_optional);

	cJSON* jsonresponse_shape_1 = response_shape_convertToJSON(response_shape_1);
	printf("response_shape :\n%s\n", cJSON_Print(jsonresponse_shape_1));
	response_shape_t* response_shape_2 = response_shape_parseFromJSON(jsonresponse_shape_1);
	cJSON* jsonresponse_shape_2 = response_shape_convertToJSON(response_shape_2);
	printf("repeating response_shape:\n%s\n", cJSON_Print(jsonresponse_shape_2));
}

int main() {
  test_response_shape(1);
  test_response_shape(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_shape_MAIN
#endif // response_shape_TEST
