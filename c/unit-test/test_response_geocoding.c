#ifndef response_geocoding_TEST
#define response_geocoding_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_geocoding_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_geocoding.h"
response_geocoding_t* instantiate_response_geocoding(int include_optional);



response_geocoding_t* instantiate_response_geocoding(int include_optional) {
  response_geocoding_t* response_geocoding = NULL;
  if (include_optional) {
    response_geocoding = response_geocoding_create(
      "0",
      list_create()
    );
  } else {
    response_geocoding = response_geocoding_create(
      "0",
      list_create()
    );
  }

  return response_geocoding;
}


#ifdef response_geocoding_MAIN

void test_response_geocoding(int include_optional) {
    response_geocoding_t* response_geocoding_1 = instantiate_response_geocoding(include_optional);

	cJSON* jsonresponse_geocoding_1 = response_geocoding_convertToJSON(response_geocoding_1);
	printf("response_geocoding :\n%s\n", cJSON_Print(jsonresponse_geocoding_1));
	response_geocoding_t* response_geocoding_2 = response_geocoding_parseFromJSON(jsonresponse_geocoding_1);
	cJSON* jsonresponse_geocoding_2 = response_geocoding_convertToJSON(response_geocoding_2);
	printf("repeating response_geocoding:\n%s\n", cJSON_Print(jsonresponse_geocoding_2));
}

int main() {
  test_response_geocoding(1);
  test_response_geocoding(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_geocoding_MAIN
#endif // response_geocoding_TEST
