cmake_minimum_required(VERSION 3.2)

project(client)
set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)

if (MSVC)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4")
else ()
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC -Wall -Wno-unused-variable")
endif ()

find_package(Qt5Core REQUIRED)
find_package(Qt5Network REQUIRED)

add_library(${PROJECT_NAME}
    OAICoords.cpp
    OAIRequestArrivalTimePeriod.cpp
    OAIRequestLocation.cpp
    OAIRequestRangeFull.cpp
    OAIRequestRangeNoMaxResults.cpp
    OAIRequestRoutes.cpp
    OAIRequestRoutesArrivalSearch.cpp
    OAIRequestRoutesDepartureSearch.cpp
    OAIRequestRoutesProperty.cpp
    OAIRequestSupportedLocations.cpp
    OAIRequestTimeFilter.cpp
    OAIRequestTimeFilterArrivalSearch.cpp
    OAIRequestTimeFilterDepartureSearch.cpp
    OAIRequestTimeFilterFast.cpp
    OAIRequestTimeFilterFastArrivalManyToOneSearch.cpp
    OAIRequestTimeFilterFastArrivalOneToManySearch.cpp
    OAIRequestTimeFilterFastArrivalSearches.cpp
    OAIRequestTimeFilterFastProperty.cpp
    OAIRequestTimeFilterPostcodeDistricts.cpp
    OAIRequestTimeFilterPostcodeDistrictsArrivalSearch.cpp
    OAIRequestTimeFilterPostcodeDistrictsDepartureSearch.cpp
    OAIRequestTimeFilterPostcodeDistrictsProperty.cpp
    OAIRequestTimeFilterPostcodeSectors.cpp
    OAIRequestTimeFilterPostcodeSectorsArrivalSearch.cpp
    OAIRequestTimeFilterPostcodeSectorsDepartureSearch.cpp
    OAIRequestTimeFilterPostcodeSectorsProperty.cpp
    OAIRequestTimeFilterPostcodes.cpp
    OAIRequestTimeFilterPostcodesArrivalSearch.cpp
    OAIRequestTimeFilterPostcodesDepartureSearch.cpp
    OAIRequestTimeFilterPostcodesProperty.cpp
    OAIRequestTimeFilterProperty.cpp
    OAIRequestTimeMap.cpp
    OAIRequestTimeMapArrivalSearch.cpp
    OAIRequestTimeMapDepartureSearch.cpp
    OAIRequestTimeMapProperty.cpp
    OAIRequestTransportation.cpp
    OAIRequestTransportationFast.cpp
    OAIRequestUnionOnIntersection.cpp
    OAIResponseBoundingBox.cpp
    OAIResponseBox.cpp
    OAIResponseDistanceBreakdownItem.cpp
    OAIResponseError.cpp
    OAIResponseFareTicket.cpp
    OAIResponseFares.cpp
    OAIResponseFaresBreakdownItem.cpp
    OAIResponseFaresFast.cpp
    OAIResponseGeocoding.cpp
    OAIResponseGeocodingGeoJsonFeature.cpp
    OAIResponseGeocodingGeometry.cpp
    OAIResponseGeocodingProperties.cpp
    OAIResponseMapInfo.cpp
    OAIResponseMapInfoFeatures.cpp
    OAIResponseMapInfoFeaturesPublicTransport.cpp
    OAIResponseMapInfoMap.cpp
    OAIResponseRoute.cpp
    OAIResponseRoutePart.cpp
    OAIResponseRoutes.cpp
    OAIResponseRoutesLocation.cpp
    OAIResponseRoutesProperties.cpp
    OAIResponseRoutesResult.cpp
    OAIResponseShape.cpp
    OAIResponseSupportedLocation.cpp
    OAIResponseSupportedLocations.cpp
    OAIResponseTimeFilter.cpp
    OAIResponseTimeFilterFast.cpp
    OAIResponseTimeFilterFastLocation.cpp
    OAIResponseTimeFilterFastProperties.cpp
    OAIResponseTimeFilterFastResult.cpp
    OAIResponseTimeFilterLocation.cpp
    OAIResponseTimeFilterPostcode.cpp
    OAIResponseTimeFilterPostcodeDistrict.cpp
    OAIResponseTimeFilterPostcodeDistrictProperties.cpp
    OAIResponseTimeFilterPostcodeDistricts.cpp
    OAIResponseTimeFilterPostcodeDistrictsResult.cpp
    OAIResponseTimeFilterPostcodeSector.cpp
    OAIResponseTimeFilterPostcodeSectorProperties.cpp
    OAIResponseTimeFilterPostcodeSectors.cpp
    OAIResponseTimeFilterPostcodeSectorsResult.cpp
    OAIResponseTimeFilterPostcodes.cpp
    OAIResponseTimeFilterPostcodesProperties.cpp
    OAIResponseTimeFilterPostcodesResult.cpp
    OAIResponseTimeFilterProperties.cpp
    OAIResponseTimeFilterResult.cpp
    OAIResponseTimeMap.cpp
    OAIResponseTimeMapBoundingBoxes.cpp
    OAIResponseTimeMapBoundingBoxesResult.cpp
    OAIResponseTimeMapProperties.cpp
    OAIResponseTimeMapResult.cpp
    OAIResponseTimeMapWkt.cpp
    OAIResponseTimeMapWktResult.cpp
    OAIResponseTransportationMode.cpp
    OAIResponseTravelTimeStatistics.cpp
    OAIDefaultApi.cpp
    OAIHelpers.cpp
    OAIHttpRequest.cpp
    OAIHttpFileElement.cpp
)
target_link_libraries(${PROJECT_NAME} PRIVATE Qt5::Core Qt5::Network )

if(NOT APPLE)
  target_link_libraries(${PROJECT_NAME} PRIVATE ssl crypto)
endif()

set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD 14)
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD_REQUIRED ON)
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_EXTENSIONS OFF)

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin LIBRARY DESTINATION lib ARCHIVE DESTINATION lib)
