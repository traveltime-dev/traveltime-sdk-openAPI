#ifndef response_transportation_mode_TEST
#define response_transportation_mode_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_transportation_mode_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_transportation_mode.h"
response_transportation_mode_t* instantiate_response_transportation_mode(int include_optional);



response_transportation_mode_t* instantiate_response_transportation_mode(int include_optional) {
  response_transportation_mode_t* response_transportation_mode = NULL;
  if (include_optional) {
    response_transportation_mode = response_transportation_mode_create(
    );
  } else {
    response_transportation_mode = response_transportation_mode_create(
    );
  }

  return response_transportation_mode;
}


#ifdef response_transportation_mode_MAIN

void test_response_transportation_mode(int include_optional) {
    response_transportation_mode_t* response_transportation_mode_1 = instantiate_response_transportation_mode(include_optional);

	cJSON* jsonresponse_transportation_mode_1 = response_transportation_mode_convertToJSON(response_transportation_mode_1);
	printf("response_transportation_mode :\n%s\n", cJSON_Print(jsonresponse_transportation_mode_1));
	response_transportation_mode_t* response_transportation_mode_2 = response_transportation_mode_parseFromJSON(jsonresponse_transportation_mode_1);
	cJSON* jsonresponse_transportation_mode_2 = response_transportation_mode_convertToJSON(response_transportation_mode_2);
	printf("repeating response_transportation_mode:\n%s\n", cJSON_Print(jsonresponse_transportation_mode_2));
}

int main() {
  test_response_transportation_mode(1);
  test_response_transportation_mode(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_transportation_mode_MAIN
#endif // response_transportation_mode_TEST
