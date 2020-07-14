#ifndef response_error_TEST
#define response_error_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_error_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_error.h"
response_error_t* instantiate_response_error(int include_optional);



response_error_t* instantiate_response_error(int include_optional) {
  response_error_t* response_error = NULL;
  if (include_optional) {
    response_error = response_error_create(
      56,
      56,
      "0",
      "0",
      list_create()
    );
  } else {
    response_error = response_error_create(
      56,
      56,
      "0",
      "0",
      list_create()
    );
  }

  return response_error;
}


#ifdef response_error_MAIN

void test_response_error(int include_optional) {
    response_error_t* response_error_1 = instantiate_response_error(include_optional);

	cJSON* jsonresponse_error_1 = response_error_convertToJSON(response_error_1);
	printf("response_error :\n%s\n", cJSON_Print(jsonresponse_error_1));
	response_error_t* response_error_2 = response_error_parseFromJSON(jsonresponse_error_1);
	cJSON* jsonresponse_error_2 = response_error_convertToJSON(response_error_2);
	printf("repeating response_error:\n%s\n", cJSON_Print(jsonresponse_error_2));
}

int main() {
  test_response_error(1);
  test_response_error(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_error_MAIN
#endif // response_error_TEST
