#ifndef response_box_TEST
#define response_box_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_box_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_box.h"
response_box_t* instantiate_response_box(int include_optional);



response_box_t* instantiate_response_box(int include_optional) {
  response_box_t* response_box = NULL;
  if (include_optional) {
    response_box = response_box_create(
      1.337,
      1.337,
      1.337,
      1.337
    );
  } else {
    response_box = response_box_create(
      1.337,
      1.337,
      1.337,
      1.337
    );
  }

  return response_box;
}


#ifdef response_box_MAIN

void test_response_box(int include_optional) {
    response_box_t* response_box_1 = instantiate_response_box(include_optional);

	cJSON* jsonresponse_box_1 = response_box_convertToJSON(response_box_1);
	printf("response_box :\n%s\n", cJSON_Print(jsonresponse_box_1));
	response_box_t* response_box_2 = response_box_parseFromJSON(jsonresponse_box_1);
	cJSON* jsonresponse_box_2 = response_box_convertToJSON(response_box_2);
	printf("repeating response_box:\n%s\n", cJSON_Print(jsonresponse_box_2));
}

int main() {
  test_response_box(1);
  test_response_box(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_box_MAIN
#endif // response_box_TEST
