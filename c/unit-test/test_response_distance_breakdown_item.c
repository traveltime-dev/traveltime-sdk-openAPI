#ifndef response_distance_breakdown_item_TEST
#define response_distance_breakdown_item_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_distance_breakdown_item_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_distance_breakdown_item.h"
response_distance_breakdown_item_t* instantiate_response_distance_breakdown_item(int include_optional);



response_distance_breakdown_item_t* instantiate_response_distance_breakdown_item(int include_optional) {
  response_distance_breakdown_item_t* response_distance_breakdown_item = NULL;
  if (include_optional) {
    response_distance_breakdown_item = response_distance_breakdown_item_create(
      traveltime_api_response_distance_breakdown_item__car,
      56
    );
  } else {
    response_distance_breakdown_item = response_distance_breakdown_item_create(
      traveltime_api_response_distance_breakdown_item__car,
      56
    );
  }

  return response_distance_breakdown_item;
}


#ifdef response_distance_breakdown_item_MAIN

void test_response_distance_breakdown_item(int include_optional) {
    response_distance_breakdown_item_t* response_distance_breakdown_item_1 = instantiate_response_distance_breakdown_item(include_optional);

	cJSON* jsonresponse_distance_breakdown_item_1 = response_distance_breakdown_item_convertToJSON(response_distance_breakdown_item_1);
	printf("response_distance_breakdown_item :\n%s\n", cJSON_Print(jsonresponse_distance_breakdown_item_1));
	response_distance_breakdown_item_t* response_distance_breakdown_item_2 = response_distance_breakdown_item_parseFromJSON(jsonresponse_distance_breakdown_item_1);
	cJSON* jsonresponse_distance_breakdown_item_2 = response_distance_breakdown_item_convertToJSON(response_distance_breakdown_item_2);
	printf("repeating response_distance_breakdown_item:\n%s\n", cJSON_Print(jsonresponse_distance_breakdown_item_2));
}

int main() {
  test_response_distance_breakdown_item(1);
  test_response_distance_breakdown_item(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_distance_breakdown_item_MAIN
#endif // response_distance_breakdown_item_TEST
