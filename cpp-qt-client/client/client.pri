QT += network

HEADERS += \
# Models
    $${PWD}/OAICoords.h \
    $${PWD}/OAIRequestArrivalTimePeriod.h \
    $${PWD}/OAIRequestLevelOfDetail.h \
    $${PWD}/OAIRequestLocation.h \
    $${PWD}/OAIRequestRangeFull.h \
    $${PWD}/OAIRequestRangeNoMaxResults.h \
    $${PWD}/OAIRequestRoutes.h \
    $${PWD}/OAIRequestRoutesArrivalSearch.h \
    $${PWD}/OAIRequestRoutesDepartureSearch.h \
    $${PWD}/OAIRequestRoutesProperty.h \
    $${PWD}/OAIRequestSupportedLocations.h \
    $${PWD}/OAIRequestTimeFilter.h \
    $${PWD}/OAIRequestTimeFilterArrivalSearch.h \
    $${PWD}/OAIRequestTimeFilterDepartureSearch.h \
    $${PWD}/OAIRequestTimeFilterFast.h \
    $${PWD}/OAIRequestTimeFilterFastArrivalManyToOneSearch.h \
    $${PWD}/OAIRequestTimeFilterFastArrivalOneToManySearch.h \
    $${PWD}/OAIRequestTimeFilterFastArrivalSearches.h \
    $${PWD}/OAIRequestTimeFilterFastProperty.h \
    $${PWD}/OAIRequestTimeFilterPostcodeDistricts.h \
    $${PWD}/OAIRequestTimeFilterPostcodeDistrictsArrivalSearch.h \
    $${PWD}/OAIRequestTimeFilterPostcodeDistrictsDepartureSearch.h \
    $${PWD}/OAIRequestTimeFilterPostcodeDistrictsProperty.h \
    $${PWD}/OAIRequestTimeFilterPostcodeSectors.h \
    $${PWD}/OAIRequestTimeFilterPostcodeSectorsArrivalSearch.h \
    $${PWD}/OAIRequestTimeFilterPostcodeSectorsDepartureSearch.h \
    $${PWD}/OAIRequestTimeFilterPostcodeSectorsProperty.h \
    $${PWD}/OAIRequestTimeFilterPostcodes.h \
    $${PWD}/OAIRequestTimeFilterPostcodesArrivalSearch.h \
    $${PWD}/OAIRequestTimeFilterPostcodesDepartureSearch.h \
    $${PWD}/OAIRequestTimeFilterPostcodesProperty.h \
    $${PWD}/OAIRequestTimeFilterProperty.h \
    $${PWD}/OAIRequestTimeMap.h \
    $${PWD}/OAIRequestTimeMapArrivalSearch.h \
    $${PWD}/OAIRequestTimeMapDepartureSearch.h \
    $${PWD}/OAIRequestTimeMapProperty.h \
    $${PWD}/OAIRequestTransportation.h \
    $${PWD}/OAIRequestTransportationFast.h \
    $${PWD}/OAIRequestUnionOnIntersection.h \
    $${PWD}/OAIResponseBoundingBox.h \
    $${PWD}/OAIResponseBox.h \
    $${PWD}/OAIResponseDistanceBreakdownItem.h \
    $${PWD}/OAIResponseError.h \
    $${PWD}/OAIResponseFareTicket.h \
    $${PWD}/OAIResponseFares.h \
    $${PWD}/OAIResponseFaresBreakdownItem.h \
    $${PWD}/OAIResponseFaresFast.h \
    $${PWD}/OAIResponseGeocoding.h \
    $${PWD}/OAIResponseGeocodingGeoJsonFeature.h \
    $${PWD}/OAIResponseGeocodingGeometry.h \
    $${PWD}/OAIResponseGeocodingProperties.h \
    $${PWD}/OAIResponseMapInfo.h \
    $${PWD}/OAIResponseMapInfoFeatures.h \
    $${PWD}/OAIResponseMapInfoFeaturesPublicTransport.h \
    $${PWD}/OAIResponseMapInfoMap.h \
    $${PWD}/OAIResponseRoute.h \
    $${PWD}/OAIResponseRoutePart.h \
    $${PWD}/OAIResponseRoutes.h \
    $${PWD}/OAIResponseRoutesLocation.h \
    $${PWD}/OAIResponseRoutesProperties.h \
    $${PWD}/OAIResponseRoutesResult.h \
    $${PWD}/OAIResponseShape.h \
    $${PWD}/OAIResponseSupportedLocation.h \
    $${PWD}/OAIResponseSupportedLocations.h \
    $${PWD}/OAIResponseTimeFilter.h \
    $${PWD}/OAIResponseTimeFilterFast.h \
    $${PWD}/OAIResponseTimeFilterFastLocation.h \
    $${PWD}/OAIResponseTimeFilterFastProperties.h \
    $${PWD}/OAIResponseTimeFilterFastResult.h \
    $${PWD}/OAIResponseTimeFilterLocation.h \
    $${PWD}/OAIResponseTimeFilterPostcode.h \
    $${PWD}/OAIResponseTimeFilterPostcodeDistrict.h \
    $${PWD}/OAIResponseTimeFilterPostcodeDistrictProperties.h \
    $${PWD}/OAIResponseTimeFilterPostcodeDistricts.h \
    $${PWD}/OAIResponseTimeFilterPostcodeDistrictsResult.h \
    $${PWD}/OAIResponseTimeFilterPostcodeSector.h \
    $${PWD}/OAIResponseTimeFilterPostcodeSectorProperties.h \
    $${PWD}/OAIResponseTimeFilterPostcodeSectors.h \
    $${PWD}/OAIResponseTimeFilterPostcodeSectorsResult.h \
    $${PWD}/OAIResponseTimeFilterPostcodes.h \
    $${PWD}/OAIResponseTimeFilterPostcodesProperties.h \
    $${PWD}/OAIResponseTimeFilterPostcodesResult.h \
    $${PWD}/OAIResponseTimeFilterProperties.h \
    $${PWD}/OAIResponseTimeFilterResult.h \
    $${PWD}/OAIResponseTimeMap.h \
    $${PWD}/OAIResponseTimeMapBoundingBoxes.h \
    $${PWD}/OAIResponseTimeMapBoundingBoxesResult.h \
    $${PWD}/OAIResponseTimeMapProperties.h \
    $${PWD}/OAIResponseTimeMapResult.h \
    $${PWD}/OAIResponseTimeMapWkt.h \
    $${PWD}/OAIResponseTimeMapWktResult.h \
    $${PWD}/OAIResponseTransportationMode.h \
    $${PWD}/OAIResponseTravelTimeStatistics.h \
# APIs
    $${PWD}/OAIDefaultApi.h \
# Others
    $${PWD}/OAIHelpers.h \
    $${PWD}/OAIHttpRequest.h \
    $${PWD}/OAIObject.h \
    $${PWD}/OAIEnum.h \
    $${PWD}/OAIHttpFileElement.h \
    $${PWD}/OAIServerConfiguration.h \
    $${PWD}/OAIServerVariable.h

SOURCES += \
# Models
    $${PWD}/OAICoords.cpp \
    $${PWD}/OAIRequestArrivalTimePeriod.cpp \
    $${PWD}/OAIRequestLevelOfDetail.cpp \
    $${PWD}/OAIRequestLocation.cpp \
    $${PWD}/OAIRequestRangeFull.cpp \
    $${PWD}/OAIRequestRangeNoMaxResults.cpp \
    $${PWD}/OAIRequestRoutes.cpp \
    $${PWD}/OAIRequestRoutesArrivalSearch.cpp \
    $${PWD}/OAIRequestRoutesDepartureSearch.cpp \
    $${PWD}/OAIRequestRoutesProperty.cpp \
    $${PWD}/OAIRequestSupportedLocations.cpp \
    $${PWD}/OAIRequestTimeFilter.cpp \
    $${PWD}/OAIRequestTimeFilterArrivalSearch.cpp \
    $${PWD}/OAIRequestTimeFilterDepartureSearch.cpp \
    $${PWD}/OAIRequestTimeFilterFast.cpp \
    $${PWD}/OAIRequestTimeFilterFastArrivalManyToOneSearch.cpp \
    $${PWD}/OAIRequestTimeFilterFastArrivalOneToManySearch.cpp \
    $${PWD}/OAIRequestTimeFilterFastArrivalSearches.cpp \
    $${PWD}/OAIRequestTimeFilterFastProperty.cpp \
    $${PWD}/OAIRequestTimeFilterPostcodeDistricts.cpp \
    $${PWD}/OAIRequestTimeFilterPostcodeDistrictsArrivalSearch.cpp \
    $${PWD}/OAIRequestTimeFilterPostcodeDistrictsDepartureSearch.cpp \
    $${PWD}/OAIRequestTimeFilterPostcodeDistrictsProperty.cpp \
    $${PWD}/OAIRequestTimeFilterPostcodeSectors.cpp \
    $${PWD}/OAIRequestTimeFilterPostcodeSectorsArrivalSearch.cpp \
    $${PWD}/OAIRequestTimeFilterPostcodeSectorsDepartureSearch.cpp \
    $${PWD}/OAIRequestTimeFilterPostcodeSectorsProperty.cpp \
    $${PWD}/OAIRequestTimeFilterPostcodes.cpp \
    $${PWD}/OAIRequestTimeFilterPostcodesArrivalSearch.cpp \
    $${PWD}/OAIRequestTimeFilterPostcodesDepartureSearch.cpp \
    $${PWD}/OAIRequestTimeFilterPostcodesProperty.cpp \
    $${PWD}/OAIRequestTimeFilterProperty.cpp \
    $${PWD}/OAIRequestTimeMap.cpp \
    $${PWD}/OAIRequestTimeMapArrivalSearch.cpp \
    $${PWD}/OAIRequestTimeMapDepartureSearch.cpp \
    $${PWD}/OAIRequestTimeMapProperty.cpp \
    $${PWD}/OAIRequestTransportation.cpp \
    $${PWD}/OAIRequestTransportationFast.cpp \
    $${PWD}/OAIRequestUnionOnIntersection.cpp \
    $${PWD}/OAIResponseBoundingBox.cpp \
    $${PWD}/OAIResponseBox.cpp \
    $${PWD}/OAIResponseDistanceBreakdownItem.cpp \
    $${PWD}/OAIResponseError.cpp \
    $${PWD}/OAIResponseFareTicket.cpp \
    $${PWD}/OAIResponseFares.cpp \
    $${PWD}/OAIResponseFaresBreakdownItem.cpp \
    $${PWD}/OAIResponseFaresFast.cpp \
    $${PWD}/OAIResponseGeocoding.cpp \
    $${PWD}/OAIResponseGeocodingGeoJsonFeature.cpp \
    $${PWD}/OAIResponseGeocodingGeometry.cpp \
    $${PWD}/OAIResponseGeocodingProperties.cpp \
    $${PWD}/OAIResponseMapInfo.cpp \
    $${PWD}/OAIResponseMapInfoFeatures.cpp \
    $${PWD}/OAIResponseMapInfoFeaturesPublicTransport.cpp \
    $${PWD}/OAIResponseMapInfoMap.cpp \
    $${PWD}/OAIResponseRoute.cpp \
    $${PWD}/OAIResponseRoutePart.cpp \
    $${PWD}/OAIResponseRoutes.cpp \
    $${PWD}/OAIResponseRoutesLocation.cpp \
    $${PWD}/OAIResponseRoutesProperties.cpp \
    $${PWD}/OAIResponseRoutesResult.cpp \
    $${PWD}/OAIResponseShape.cpp \
    $${PWD}/OAIResponseSupportedLocation.cpp \
    $${PWD}/OAIResponseSupportedLocations.cpp \
    $${PWD}/OAIResponseTimeFilter.cpp \
    $${PWD}/OAIResponseTimeFilterFast.cpp \
    $${PWD}/OAIResponseTimeFilterFastLocation.cpp \
    $${PWD}/OAIResponseTimeFilterFastProperties.cpp \
    $${PWD}/OAIResponseTimeFilterFastResult.cpp \
    $${PWD}/OAIResponseTimeFilterLocation.cpp \
    $${PWD}/OAIResponseTimeFilterPostcode.cpp \
    $${PWD}/OAIResponseTimeFilterPostcodeDistrict.cpp \
    $${PWD}/OAIResponseTimeFilterPostcodeDistrictProperties.cpp \
    $${PWD}/OAIResponseTimeFilterPostcodeDistricts.cpp \
    $${PWD}/OAIResponseTimeFilterPostcodeDistrictsResult.cpp \
    $${PWD}/OAIResponseTimeFilterPostcodeSector.cpp \
    $${PWD}/OAIResponseTimeFilterPostcodeSectorProperties.cpp \
    $${PWD}/OAIResponseTimeFilterPostcodeSectors.cpp \
    $${PWD}/OAIResponseTimeFilterPostcodeSectorsResult.cpp \
    $${PWD}/OAIResponseTimeFilterPostcodes.cpp \
    $${PWD}/OAIResponseTimeFilterPostcodesProperties.cpp \
    $${PWD}/OAIResponseTimeFilterPostcodesResult.cpp \
    $${PWD}/OAIResponseTimeFilterProperties.cpp \
    $${PWD}/OAIResponseTimeFilterResult.cpp \
    $${PWD}/OAIResponseTimeMap.cpp \
    $${PWD}/OAIResponseTimeMapBoundingBoxes.cpp \
    $${PWD}/OAIResponseTimeMapBoundingBoxesResult.cpp \
    $${PWD}/OAIResponseTimeMapProperties.cpp \
    $${PWD}/OAIResponseTimeMapResult.cpp \
    $${PWD}/OAIResponseTimeMapWkt.cpp \
    $${PWD}/OAIResponseTimeMapWktResult.cpp \
    $${PWD}/OAIResponseTransportationMode.cpp \
    $${PWD}/OAIResponseTravelTimeStatistics.cpp \
# APIs
    $${PWD}/OAIDefaultApi.cpp \
# Others
    $${PWD}/OAIHelpers.cpp \
    $${PWD}/OAIHttpRequest.cpp \
    $${PWD}/OAIHttpFileElement.cpp

