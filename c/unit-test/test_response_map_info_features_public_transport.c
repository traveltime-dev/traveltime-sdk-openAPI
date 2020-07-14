#ifndef response_map_info_features_public_transport_TEST
#define response_map_info_features_public_transport_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define response_map_info_features_public_transport_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/response_map_info_features_public_transport.h"
response_map_info_features_public_transport_t* instantiate_response_map_info_features_public_transport(int include_optional);



response_map_info_features_public_transport_t* instantiate_response_map_info_features_public_transport(int include_optional) {
  response_map_info_features_public_transport_t* response_map_info_features_public_transport = NULL;
  if (include_optional) {
    response_map_info_features_public_transport = response_map_info_features_public_transport_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00"
    );
  } else {
    response_map_info_features_public_transport = response_map_info_features_public_transport_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00"
    );
  }

  return response_map_info_features_public_transport;
}


#ifdef response_map_info_features_public_transport_MAIN

void test_response_map_info_features_public_transport(int include_optional) {
    response_map_info_features_public_transport_t* response_map_info_features_public_transport_1 = instantiate_response_map_info_features_public_transport(include_optional);

	cJSON* jsonresponse_map_info_features_public_transport_1 = response_map_info_features_public_transport_convertToJSON(response_map_info_features_public_transport_1);
	printf("response_map_info_features_public_transport :\n%s\n", cJSON_Print(jsonresponse_map_info_features_public_transport_1));
	response_map_info_features_public_transport_t* response_map_info_features_public_transport_2 = response_map_info_features_public_transport_parseFromJSON(jsonresponse_map_info_features_public_transport_1);
	cJSON* jsonresponse_map_info_features_public_transport_2 = response_map_info_features_public_transport_convertToJSON(response_map_info_features_public_transport_2);
	printf("repeating response_map_info_features_public_transport:\n%s\n", cJSON_Print(jsonresponse_map_info_features_public_transport_2));
}

int main() {
  test_response_map_info_features_public_transport(1);
  test_response_map_info_features_public_transport(0);

  printf("Hello world \n");
  return 0;
}

#endif // response_map_info_features_public_transport_MAIN
#endif // response_map_info_features_public_transport_TEST
