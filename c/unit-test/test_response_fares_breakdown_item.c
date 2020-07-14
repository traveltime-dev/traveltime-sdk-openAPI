#ifndef response_fares_breakdown_item_TEST
#define response_fares_breakdown_item_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_fares_breakdown_item_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_fares_breakdown_item.h"
response_fares_breakdown_item_t* instantiate_response_fares_breakdown_item(int include_optional);



response_fares_breakdown_item_t* instantiate_response_fares_breakdown_item(int include_optional) {
  response_fares_breakdown_item_t* response_fares_breakdown_item = NULL;
  if (include_optional) {
    response_fares_breakdown_item = response_fares_breakdown_item_create(
      list_create(),
      list_create(),
      list_create()
    );
  } else {
    response_fares_breakdown_item = response_fares_breakdown_item_create(
      list_create(),
      list_create(),
      list_create()
    );
  }

  return response_fares_breakdown_item;
}


#ifdef response_fares_breakdown_item_MAIN

void test_response_fares_breakdown_item(int include_optional) {
    response_fares_breakdown_item_t* response_fares_breakdown_item_1 = instantiate_response_fares_breakdown_item(include_optional);

	cJSON* jsonresponse_fares_breakdown_item_1 = response_fares_breakdown_item_convertToJSON(response_fares_breakdown_item_1);
	printf("response_fares_breakdown_item :\n%s\n", cJSON_Print(jsonresponse_fares_breakdown_item_1));
	response_fares_breakdown_item_t* response_fares_breakdown_item_2 = response_fares_breakdown_item_parseFromJSON(jsonresponse_fares_breakdown_item_1);
	cJSON* jsonresponse_fares_breakdown_item_2 = response_fares_breakdown_item_convertToJSON(response_fares_breakdown_item_2);
	printf("repeating response_fares_breakdown_item:\n%s\n", cJSON_Print(jsonresponse_fares_breakdown_item_2));
}

int main() {
  test_response_fares_breakdown_item(1);
  test_response_fares_breakdown_item(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_fares_breakdown_item_MAIN
#endif // response_fares_breakdown_item_TEST
