#ifndef response_routes_result_TEST
#define response_routes_result_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_routes_result_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_routes_result.h"
response_routes_result_t* instantiate_response_routes_result(int include_optional);



response_routes_result_t* instantiate_response_routes_result(int include_optional) {
  response_routes_result_t* response_routes_result = NULL;
  if (include_optional) {
    response_routes_result = response_routes_result_create(
      "0",
      list_create(),
      list_create()
    );
  } else {
    response_routes_result = response_routes_result_create(
      "0",
      list_create(),
      list_create()
    );
  }

  return response_routes_result;
}


#ifdef response_routes_result_MAIN

void test_response_routes_result(int include_optional) {
    response_routes_result_t* response_routes_result_1 = instantiate_response_routes_result(include_optional);

	cJSON* jsonresponse_routes_result_1 = response_routes_result_convertToJSON(response_routes_result_1);
	printf("response_routes_result :\n%s\n", cJSON_Print(jsonresponse_routes_result_1));
	response_routes_result_t* response_routes_result_2 = response_routes_result_parseFromJSON(jsonresponse_routes_result_1);
	cJSON* jsonresponse_routes_result_2 = response_routes_result_convertToJSON(response_routes_result_2);
	printf("repeating response_routes_result:\n%s\n", cJSON_Print(jsonresponse_routes_result_2));
}

int main() {
  test_response_routes_result(1);
  test_response_routes_result(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_routes_result_MAIN
#endif // response_routes_result_TEST
