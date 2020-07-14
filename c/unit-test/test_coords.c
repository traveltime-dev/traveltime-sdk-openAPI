#ifndef coords_TEST
#define coords_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define coords_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/coords.h"
coords_t* instantiate_coords(int include_optional);



coords_t* instantiate_coords(int include_optional) {
  coords_t* coords = NULL;
  if (include_optional) {
    coords = coords_create(
      1.337,
      1.337
    );
  } else {
    coords = coords_create(
      1.337,
      1.337
    );
  }

  return coords;
}


#ifdef coords_MAIN

void test_coords(int include_optional) {
    coords_t* coords_1 = instantiate_coords(include_optional);

	cJSON* jsoncoords_1 = coords_convertToJSON(coords_1);
	printf("coords :\n%s\n", cJSON_Print(jsoncoords_1));
	coords_t* coords_2 = coords_parseFromJSON(jsoncoords_1);
	cJSON* jsoncoords_2 = coords_convertToJSON(coords_2);
	printf("repeating coords:\n%s\n", cJSON_Print(jsoncoords_2));
}

int main() {
  test_coords(1);
  test_coords(0);

  printf("Hello world \n");
  return 0;
}

#endif // coords_MAIN
#endif // coords_TEST
