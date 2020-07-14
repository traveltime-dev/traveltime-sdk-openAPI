#ifndef response_fares_fast_TEST
#define response_fares_fast_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_fares_fast_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_fares_fast.h"
response_fares_fast_t* instantiate_response_fares_fast(int include_optional);



response_fares_fast_t* instantiate_response_fares_fast(int include_optional) {
  response_fares_fast_t* response_fares_fast = NULL;
  if (include_optional) {
    response_fares_fast = response_fares_fast_create(
      list_create()
    );
  } else {
    response_fares_fast = response_fares_fast_create(
      list_create()
    );
  }

  return response_fares_fast;
}


#ifdef response_fares_fast_MAIN

void test_response_fares_fast(int include_optional) {
    response_fares_fast_t* response_fares_fast_1 = instantiate_response_fares_fast(include_optional);

	cJSON* jsonresponse_fares_fast_1 = response_fares_fast_convertToJSON(response_fares_fast_1);
	printf("response_fares_fast :\n%s\n", cJSON_Print(jsonresponse_fares_fast_1));
	response_fares_fast_t* response_fares_fast_2 = response_fares_fast_parseFromJSON(jsonresponse_fares_fast_1);
	cJSON* jsonresponse_fares_fast_2 = response_fares_fast_convertToJSON(response_fares_fast_2);
	printf("repeating response_fares_fast:\n%s\n", cJSON_Print(jsonresponse_fares_fast_2));
}

int main() {
  test_response_fares_fast(1);
  test_response_fares_fast(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_fares_fast_MAIN
#endif // response_fares_fast_TEST
