cmake_minimum_required (VERSION 2.6)
project (CGenerator)

cmake_policy(SET CMP0063 NEW)

set(CMAKE_C_VISIBILITY_PRESET default)
set(CMAKE_CXX_VISIBILITY_PRESET default)
set(CMAKE_VISIBILITY_INLINES_HIDDEN OFF)
set(CMAKE_BUILD_TYPE Debug)

set(pkgName "traveltime_platform_api")

find_package(CURL 7.58.0 REQUIRED)
if(CURL_FOUND)
	include_directories(${CURL_INCLUDE_DIR})
	set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
else(CURL_FOUND)
	message(FATAL_ERROR "Could not find the CURL library and development files.")
endif()

set(SRCS
    src/list.c
    src/apiKey.c
    src/apiClient.c
    external/cJSON.c
    model/object.c
    model/coords.c
    model/request_arrival_time_period.c
    model/request_location.c
    model/request_range_full.c
    model/request_range_no_max_results.c
    model/request_routes.c
    model/request_routes_arrival_search.c
    model/request_routes_departure_search.c
    model/request_routes_property.c
    model/request_supported_locations.c
    model/request_time_filter.c
    model/request_time_filter_arrival_search.c
    model/request_time_filter_departure_search.c
    model/request_time_filter_fast.c
    model/request_time_filter_fast_arrival_many_to_one_search.c
    model/request_time_filter_fast_arrival_one_to_many_search.c
    model/request_time_filter_fast_arrival_searches.c
    model/request_time_filter_fast_property.c
    model/request_time_filter_postcode_districts.c
    model/request_time_filter_postcode_districts_arrival_search.c
    model/request_time_filter_postcode_districts_departure_search.c
    model/request_time_filter_postcode_districts_property.c
    model/request_time_filter_postcode_sectors.c
    model/request_time_filter_postcode_sectors_arrival_search.c
    model/request_time_filter_postcode_sectors_departure_search.c
    model/request_time_filter_postcode_sectors_property.c
    model/request_time_filter_postcodes.c
    model/request_time_filter_postcodes_arrival_search.c
    model/request_time_filter_postcodes_departure_search.c
    model/request_time_filter_postcodes_property.c
    model/request_time_filter_property.c
    model/request_time_map.c
    model/request_time_map_arrival_search.c
    model/request_time_map_departure_search.c
    model/request_time_map_property.c
    model/request_transportation.c
    model/request_transportation_fast.c
    model/request_union_on_intersection.c
    model/response_bounding_box.c
    model/response_box.c
    model/response_distance_breakdown_item.c
    model/response_error.c
    model/response_fare_ticket.c
    model/response_fares.c
    model/response_fares_breakdown_item.c
    model/response_fares_fast.c
    model/response_geocoding.c
    model/response_geocoding_geo_json_feature.c
    model/response_geocoding_geometry.c
    model/response_geocoding_properties.c
    model/response_map_info.c
    model/response_map_info_features.c
    model/response_map_info_features_public_transport.c
    model/response_map_info_map.c
    model/response_route.c
    model/response_route_part.c
    model/response_routes.c
    model/response_routes_location.c
    model/response_routes_properties.c
    model/response_routes_result.c
    model/response_shape.c
    model/response_supported_location.c
    model/response_supported_locations.c
    model/response_time_filter.c
    model/response_time_filter_fast.c
    model/response_time_filter_fast_location.c
    model/response_time_filter_fast_properties.c
    model/response_time_filter_fast_result.c
    model/response_time_filter_location.c
    model/response_time_filter_postcode.c
    model/response_time_filter_postcode_district.c
    model/response_time_filter_postcode_district_properties.c
    model/response_time_filter_postcode_districts.c
    model/response_time_filter_postcode_districts_result.c
    model/response_time_filter_postcode_sector.c
    model/response_time_filter_postcode_sector_properties.c
    model/response_time_filter_postcode_sectors.c
    model/response_time_filter_postcode_sectors_result.c
    model/response_time_filter_postcodes.c
    model/response_time_filter_postcodes_properties.c
    model/response_time_filter_postcodes_result.c
    model/response_time_filter_properties.c
    model/response_time_filter_result.c
    model/response_time_map.c
    model/response_time_map_bounding_boxes.c
    model/response_time_map_bounding_boxes_result.c
    model/response_time_map_properties.c
    model/response_time_map_result.c
    model/response_time_map_wkt.c
    model/response_time_map_wkt_result.c
    model/response_transportation_mode.c
    model/response_travel_time_statistics.c
    api/DefaultAPI.c

)

set(HDRS
    include/apiClient.h
    include/list.h
    include/keyValuePair.h
    external/cJSON.h
    model/object.h
    model/coords.h
    model/request_arrival_time_period.h
    model/request_location.h
    model/request_range_full.h
    model/request_range_no_max_results.h
    model/request_routes.h
    model/request_routes_arrival_search.h
    model/request_routes_departure_search.h
    model/request_routes_property.h
    model/request_supported_locations.h
    model/request_time_filter.h
    model/request_time_filter_arrival_search.h
    model/request_time_filter_departure_search.h
    model/request_time_filter_fast.h
    model/request_time_filter_fast_arrival_many_to_one_search.h
    model/request_time_filter_fast_arrival_one_to_many_search.h
    model/request_time_filter_fast_arrival_searches.h
    model/request_time_filter_fast_property.h
    model/request_time_filter_postcode_districts.h
    model/request_time_filter_postcode_districts_arrival_search.h
    model/request_time_filter_postcode_districts_departure_search.h
    model/request_time_filter_postcode_districts_property.h
    model/request_time_filter_postcode_sectors.h
    model/request_time_filter_postcode_sectors_arrival_search.h
    model/request_time_filter_postcode_sectors_departure_search.h
    model/request_time_filter_postcode_sectors_property.h
    model/request_time_filter_postcodes.h
    model/request_time_filter_postcodes_arrival_search.h
    model/request_time_filter_postcodes_departure_search.h
    model/request_time_filter_postcodes_property.h
    model/request_time_filter_property.h
    model/request_time_map.h
    model/request_time_map_arrival_search.h
    model/request_time_map_departure_search.h
    model/request_time_map_property.h
    model/request_transportation.h
    model/request_transportation_fast.h
    model/request_union_on_intersection.h
    model/response_bounding_box.h
    model/response_box.h
    model/response_distance_breakdown_item.h
    model/response_error.h
    model/response_fare_ticket.h
    model/response_fares.h
    model/response_fares_breakdown_item.h
    model/response_fares_fast.h
    model/response_geocoding.h
    model/response_geocoding_geo_json_feature.h
    model/response_geocoding_geometry.h
    model/response_geocoding_properties.h
    model/response_map_info.h
    model/response_map_info_features.h
    model/response_map_info_features_public_transport.h
    model/response_map_info_map.h
    model/response_route.h
    model/response_route_part.h
    model/response_routes.h
    model/response_routes_location.h
    model/response_routes_properties.h
    model/response_routes_result.h
    model/response_shape.h
    model/response_supported_location.h
    model/response_supported_locations.h
    model/response_time_filter.h
    model/response_time_filter_fast.h
    model/response_time_filter_fast_location.h
    model/response_time_filter_fast_properties.h
    model/response_time_filter_fast_result.h
    model/response_time_filter_location.h
    model/response_time_filter_postcode.h
    model/response_time_filter_postcode_district.h
    model/response_time_filter_postcode_district_properties.h
    model/response_time_filter_postcode_districts.h
    model/response_time_filter_postcode_districts_result.h
    model/response_time_filter_postcode_sector.h
    model/response_time_filter_postcode_sector_properties.h
    model/response_time_filter_postcode_sectors.h
    model/response_time_filter_postcode_sectors_result.h
    model/response_time_filter_postcodes.h
    model/response_time_filter_postcodes_properties.h
    model/response_time_filter_postcodes_result.h
    model/response_time_filter_properties.h
    model/response_time_filter_result.h
    model/response_time_map.h
    model/response_time_map_bounding_boxes.h
    model/response_time_map_bounding_boxes_result.h
    model/response_time_map_properties.h
    model/response_time_map_result.h
    model/response_time_map_wkt.h
    model/response_time_map_wkt_result.h
    model/response_transportation_mode.h
    model/response_travel_time_statistics.h
    api/DefaultAPI.h

)

# Add library with project file with projectname as library name
add_library(${pkgName} SHARED ${SRCS} ${HDRS})
# Link dependent libraries
target_link_libraries(${pkgName} ${CURL_LIBRARIES} )
#install library to destination
install(TARGETS ${pkgName} DESTINATION ${CMAKE_INSTALL_PREFIX})

# Setting file variables to null
set(SRCS "")
set(HDRS "")


## This section shows how to use the above compiled libary to compile the source files
## set source files
#set(SRCS
#    unit-tests/manual-DefaultAPI.c
#)

##set header files
#set(HDRS
#)

## loop over all files in SRCS variable
#foreach(SOURCE_FILE ${SRCS})
#    # Get only the file name from the file as add_executable doesnot support executable with slash("/")
#    get_filename_component(FILE_NAME_ONLY ${SOURCE_FILE} NAME_WE)
#    # Remove .c from the file name and set it as executable name
#    string( REPLACE ".c" "" EXECUTABLE_FILE ${FILE_NAME_ONLY})
#    # Add executable for every source file in  SRCS
#    add_executable(unit-${EXECUTABLE_FILE} ${SOURCE_FILE})
#    # Link above created libary to executable and dependent libary curl
#    target_link_libraries(unit-${EXECUTABLE_FILE} ${CURL_LIBRARIES} ${pkgName} )
#endforeach(SOURCE_FILE ${SRCS})
