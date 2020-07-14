#ifndef response_time_map_wkt_TEST
#define response_time_map_wkt_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_time_map_wkt_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_time_map_wkt.h"
response_time_map_wkt_t* instantiate_response_time_map_wkt(int include_optional);



response_time_map_wkt_t* instantiate_response_time_map_wkt(int include_optional) {
  response_time_map_wkt_t* response_time_map_wkt = NULL;
  if (include_optional) {
    response_time_map_wkt = response_time_map_wkt_create(
      list_create()
    );
  } else {
    response_time_map_wkt = response_time_map_wkt_create(
      list_create()
    );
  }

  return response_time_map_wkt;
}


#ifdef response_time_map_wkt_MAIN

void test_response_time_map_wkt(int include_optional) {
    response_time_map_wkt_t* response_time_map_wkt_1 = instantiate_response_time_map_wkt(include_optional);

	cJSON* jsonresponse_time_map_wkt_1 = response_time_map_wkt_convertToJSON(response_time_map_wkt_1);
	printf("response_time_map_wkt :\n%s\n", cJSON_Print(jsonresponse_time_map_wkt_1));
	response_time_map_wkt_t* response_time_map_wkt_2 = response_time_map_wkt_parseFromJSON(jsonresponse_time_map_wkt_1);
	cJSON* jsonresponse_time_map_wkt_2 = response_time_map_wkt_convertToJSON(response_time_map_wkt_2);
	printf("repeating response_time_map_wkt:\n%s\n", cJSON_Print(jsonresponse_time_map_wkt_2));
}

int main() {
  test_response_time_map_wkt(1);
  test_response_time_map_wkt(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_time_map_wkt_MAIN
#endif // response_time_map_wkt_TEST
