#ifndef response_map_info_TEST
#define response_map_info_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_map_info_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_map_info.h"
response_map_info_t* instantiate_response_map_info(int include_optional);



response_map_info_t* instantiate_response_map_info(int include_optional) {
  response_map_info_t* response_map_info = NULL;
  if (include_optional) {
    response_map_info = response_map_info_create(
      list_create()
    );
  } else {
    response_map_info = response_map_info_create(
      list_create()
    );
  }

  return response_map_info;
}


#ifdef response_map_info_MAIN

void test_response_map_info(int include_optional) {
    response_map_info_t* response_map_info_1 = instantiate_response_map_info(include_optional);

	cJSON* jsonresponse_map_info_1 = response_map_info_convertToJSON(response_map_info_1);
	printf("response_map_info :\n%s\n", cJSON_Print(jsonresponse_map_info_1));
	response_map_info_t* response_map_info_2 = response_map_info_parseFromJSON(jsonresponse_map_info_1);
	cJSON* jsonresponse_map_info_2 = response_map_info_convertToJSON(response_map_info_2);
	printf("repeating response_map_info:\n%s\n", cJSON_Print(jsonresponse_map_info_2));
}

int main() {
  test_response_map_info(1);
  test_response_map_info(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_map_info_MAIN
#endif // response_map_info_TEST
