#ifndef response_fares_TEST
#define response_fares_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_fares_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_fares.h"
response_fares_t* instantiate_response_fares(int include_optional);



response_fares_t* instantiate_response_fares(int include_optional) {
  response_fares_t* response_fares = NULL;
  if (include_optional) {
    response_fares = response_fares_create(
      list_create(),
      list_create()
    );
  } else {
    response_fares = response_fares_create(
      list_create(),
      list_create()
    );
  }

  return response_fares;
}


#ifdef response_fares_MAIN

void test_response_fares(int include_optional) {
    response_fares_t* response_fares_1 = instantiate_response_fares(include_optional);

	cJSON* jsonresponse_fares_1 = response_fares_convertToJSON(response_fares_1);
	printf("response_fares :\n%s\n", cJSON_Print(jsonresponse_fares_1));
	response_fares_t* response_fares_2 = response_fares_parseFromJSON(jsonresponse_fares_1);
	cJSON* jsonresponse_fares_2 = response_fares_convertToJSON(response_fares_2);
	printf("repeating response_fares:\n%s\n", cJSON_Print(jsonresponse_fares_2));
}

int main() {
  test_response_fares(1);
  test_response_fares(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_fares_MAIN
#endif // response_fares_TEST
