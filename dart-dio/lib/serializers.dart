library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:openapi/model/coords.dart';
import 'package:openapi/model/request_arrival_time_period.dart';
import 'package:openapi/model/request_location.dart';
import 'package:openapi/model/request_range_full.dart';
import 'package:openapi/model/request_range_no_max_results.dart';
import 'package:openapi/model/request_routes.dart';
import 'package:openapi/model/request_routes_arrival_search.dart';
import 'package:openapi/model/request_routes_departure_search.dart';
import 'package:openapi/model/request_routes_property.dart';
import 'package:openapi/model/request_supported_locations.dart';
import 'package:openapi/model/request_time_filter.dart';
import 'package:openapi/model/request_time_filter_arrival_search.dart';
import 'package:openapi/model/request_time_filter_departure_search.dart';
import 'package:openapi/model/request_time_filter_fast.dart';
import 'package:openapi/model/request_time_filter_fast_arrival_many_to_one_search.dart';
import 'package:openapi/model/request_time_filter_fast_arrival_one_to_many_search.dart';
import 'package:openapi/model/request_time_filter_fast_arrival_searches.dart';
import 'package:openapi/model/request_time_filter_fast_property.dart';
import 'package:openapi/model/request_time_filter_postcode_districts.dart';
import 'package:openapi/model/request_time_filter_postcode_districts_arrival_search.dart';
import 'package:openapi/model/request_time_filter_postcode_districts_departure_search.dart';
import 'package:openapi/model/request_time_filter_postcode_districts_property.dart';
import 'package:openapi/model/request_time_filter_postcode_sectors.dart';
import 'package:openapi/model/request_time_filter_postcode_sectors_arrival_search.dart';
import 'package:openapi/model/request_time_filter_postcode_sectors_departure_search.dart';
import 'package:openapi/model/request_time_filter_postcode_sectors_property.dart';
import 'package:openapi/model/request_time_filter_postcodes.dart';
import 'package:openapi/model/request_time_filter_postcodes_arrival_search.dart';
import 'package:openapi/model/request_time_filter_postcodes_departure_search.dart';
import 'package:openapi/model/request_time_filter_postcodes_property.dart';
import 'package:openapi/model/request_time_filter_property.dart';
import 'package:openapi/model/request_time_map.dart';
import 'package:openapi/model/request_time_map_arrival_search.dart';
import 'package:openapi/model/request_time_map_departure_search.dart';
import 'package:openapi/model/request_time_map_property.dart';
import 'package:openapi/model/request_transportation.dart';
import 'package:openapi/model/request_transportation_fast.dart';
import 'package:openapi/model/request_union_on_intersection.dart';
import 'package:openapi/model/response_bounding_box.dart';
import 'package:openapi/model/response_box.dart';
import 'package:openapi/model/response_distance_breakdown_item.dart';
import 'package:openapi/model/response_error.dart';
import 'package:openapi/model/response_fare_ticket.dart';
import 'package:openapi/model/response_fares.dart';
import 'package:openapi/model/response_fares_breakdown_item.dart';
import 'package:openapi/model/response_fares_fast.dart';
import 'package:openapi/model/response_geocoding.dart';
import 'package:openapi/model/response_geocoding_geo_json_feature.dart';
import 'package:openapi/model/response_geocoding_geometry.dart';
import 'package:openapi/model/response_geocoding_properties.dart';
import 'package:openapi/model/response_map_info.dart';
import 'package:openapi/model/response_map_info_features.dart';
import 'package:openapi/model/response_map_info_features_public_transport.dart';
import 'package:openapi/model/response_map_info_map.dart';
import 'package:openapi/model/response_route.dart';
import 'package:openapi/model/response_route_part.dart';
import 'package:openapi/model/response_routes.dart';
import 'package:openapi/model/response_routes_location.dart';
import 'package:openapi/model/response_routes_properties.dart';
import 'package:openapi/model/response_routes_result.dart';
import 'package:openapi/model/response_shape.dart';
import 'package:openapi/model/response_supported_location.dart';
import 'package:openapi/model/response_supported_locations.dart';
import 'package:openapi/model/response_time_filter.dart';
import 'package:openapi/model/response_time_filter_fast.dart';
import 'package:openapi/model/response_time_filter_fast_location.dart';
import 'package:openapi/model/response_time_filter_fast_properties.dart';
import 'package:openapi/model/response_time_filter_fast_result.dart';
import 'package:openapi/model/response_time_filter_location.dart';
import 'package:openapi/model/response_time_filter_postcode.dart';
import 'package:openapi/model/response_time_filter_postcode_district.dart';
import 'package:openapi/model/response_time_filter_postcode_district_properties.dart';
import 'package:openapi/model/response_time_filter_postcode_districts.dart';
import 'package:openapi/model/response_time_filter_postcode_districts_result.dart';
import 'package:openapi/model/response_time_filter_postcode_sector.dart';
import 'package:openapi/model/response_time_filter_postcode_sector_properties.dart';
import 'package:openapi/model/response_time_filter_postcode_sectors.dart';
import 'package:openapi/model/response_time_filter_postcode_sectors_result.dart';
import 'package:openapi/model/response_time_filter_postcodes.dart';
import 'package:openapi/model/response_time_filter_postcodes_properties.dart';
import 'package:openapi/model/response_time_filter_postcodes_result.dart';
import 'package:openapi/model/response_time_filter_properties.dart';
import 'package:openapi/model/response_time_filter_result.dart';
import 'package:openapi/model/response_time_map.dart';
import 'package:openapi/model/response_time_map_bounding_boxes.dart';
import 'package:openapi/model/response_time_map_bounding_boxes_result.dart';
import 'package:openapi/model/response_time_map_properties.dart';
import 'package:openapi/model/response_time_map_result.dart';
import 'package:openapi/model/response_time_map_wkt.dart';
import 'package:openapi/model/response_time_map_wkt_result.dart';
import 'package:openapi/model/response_transportation_mode.dart';
import 'package:openapi/model/response_travel_time_statistics.dart';


part 'serializers.g.dart';

@SerializersFor(const [
Coords,
RequestArrivalTimePeriod,
RequestLocation,
RequestRangeFull,
RequestRangeNoMaxResults,
RequestRoutes,
RequestRoutesArrivalSearch,
RequestRoutesDepartureSearch,
RequestRoutesProperty,
RequestSupportedLocations,
RequestTimeFilter,
RequestTimeFilterArrivalSearch,
RequestTimeFilterDepartureSearch,
RequestTimeFilterFast,
RequestTimeFilterFastArrivalManyToOneSearch,
RequestTimeFilterFastArrivalOneToManySearch,
RequestTimeFilterFastArrivalSearches,
RequestTimeFilterFastProperty,
RequestTimeFilterPostcodeDistricts,
RequestTimeFilterPostcodeDistrictsArrivalSearch,
RequestTimeFilterPostcodeDistrictsDepartureSearch,
RequestTimeFilterPostcodeDistrictsProperty,
RequestTimeFilterPostcodeSectors,
RequestTimeFilterPostcodeSectorsArrivalSearch,
RequestTimeFilterPostcodeSectorsDepartureSearch,
RequestTimeFilterPostcodeSectorsProperty,
RequestTimeFilterPostcodes,
RequestTimeFilterPostcodesArrivalSearch,
RequestTimeFilterPostcodesDepartureSearch,
RequestTimeFilterPostcodesProperty,
RequestTimeFilterProperty,
RequestTimeMap,
RequestTimeMapArrivalSearch,
RequestTimeMapDepartureSearch,
RequestTimeMapProperty,
RequestTransportation,
RequestTransportationFast,
RequestUnionOnIntersection,
ResponseBoundingBox,
ResponseBox,
ResponseDistanceBreakdownItem,
ResponseError,
ResponseFareTicket,
ResponseFares,
ResponseFaresBreakdownItem,
ResponseFaresFast,
ResponseGeocoding,
ResponseGeocodingGeoJsonFeature,
ResponseGeocodingGeometry,
ResponseGeocodingProperties,
ResponseMapInfo,
ResponseMapInfoFeatures,
ResponseMapInfoFeaturesPublicTransport,
ResponseMapInfoMap,
ResponseRoute,
ResponseRoutePart,
ResponseRoutes,
ResponseRoutesLocation,
ResponseRoutesProperties,
ResponseRoutesResult,
ResponseShape,
ResponseSupportedLocation,
ResponseSupportedLocations,
ResponseTimeFilter,
ResponseTimeFilterFast,
ResponseTimeFilterFastLocation,
ResponseTimeFilterFastProperties,
ResponseTimeFilterFastResult,
ResponseTimeFilterLocation,
ResponseTimeFilterPostcode,
ResponseTimeFilterPostcodeDistrict,
ResponseTimeFilterPostcodeDistrictProperties,
ResponseTimeFilterPostcodeDistricts,
ResponseTimeFilterPostcodeDistrictsResult,
ResponseTimeFilterPostcodeSector,
ResponseTimeFilterPostcodeSectorProperties,
ResponseTimeFilterPostcodeSectors,
ResponseTimeFilterPostcodeSectorsResult,
ResponseTimeFilterPostcodes,
ResponseTimeFilterPostcodesProperties,
ResponseTimeFilterPostcodesResult,
ResponseTimeFilterProperties,
ResponseTimeFilterResult,
ResponseTimeMap,
ResponseTimeMapBoundingBoxes,
ResponseTimeMapBoundingBoxesResult,
ResponseTimeMapProperties,
ResponseTimeMapResult,
ResponseTimeMapWkt,
ResponseTimeMapWktResult,
ResponseTransportationMode,
ResponseTravelTimeStatistics,

])

//allow all models to be serialized within a list
Serializers serializers = (_$serializers.toBuilder()
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Coords)]),
() => new ListBuilder<Coords>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestArrivalTimePeriod)]),
() => new ListBuilder<RequestArrivalTimePeriod>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestLocation)]),
() => new ListBuilder<RequestLocation>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestRangeFull)]),
() => new ListBuilder<RequestRangeFull>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestRangeNoMaxResults)]),
() => new ListBuilder<RequestRangeNoMaxResults>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestRoutes)]),
() => new ListBuilder<RequestRoutes>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestRoutesArrivalSearch)]),
() => new ListBuilder<RequestRoutesArrivalSearch>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestRoutesDepartureSearch)]),
() => new ListBuilder<RequestRoutesDepartureSearch>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestRoutesProperty)]),
() => new ListBuilder<RequestRoutesProperty>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestSupportedLocations)]),
() => new ListBuilder<RequestSupportedLocations>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilter)]),
() => new ListBuilder<RequestTimeFilter>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterArrivalSearch)]),
() => new ListBuilder<RequestTimeFilterArrivalSearch>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterDepartureSearch)]),
() => new ListBuilder<RequestTimeFilterDepartureSearch>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterFast)]),
() => new ListBuilder<RequestTimeFilterFast>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterFastArrivalManyToOneSearch)]),
() => new ListBuilder<RequestTimeFilterFastArrivalManyToOneSearch>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterFastArrivalOneToManySearch)]),
() => new ListBuilder<RequestTimeFilterFastArrivalOneToManySearch>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterFastArrivalSearches)]),
() => new ListBuilder<RequestTimeFilterFastArrivalSearches>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterFastProperty)]),
() => new ListBuilder<RequestTimeFilterFastProperty>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterPostcodeDistricts)]),
() => new ListBuilder<RequestTimeFilterPostcodeDistricts>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterPostcodeDistrictsArrivalSearch)]),
() => new ListBuilder<RequestTimeFilterPostcodeDistrictsArrivalSearch>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterPostcodeDistrictsDepartureSearch)]),
() => new ListBuilder<RequestTimeFilterPostcodeDistrictsDepartureSearch>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterPostcodeDistrictsProperty)]),
() => new ListBuilder<RequestTimeFilterPostcodeDistrictsProperty>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterPostcodeSectors)]),
() => new ListBuilder<RequestTimeFilterPostcodeSectors>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterPostcodeSectorsArrivalSearch)]),
() => new ListBuilder<RequestTimeFilterPostcodeSectorsArrivalSearch>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterPostcodeSectorsDepartureSearch)]),
() => new ListBuilder<RequestTimeFilterPostcodeSectorsDepartureSearch>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterPostcodeSectorsProperty)]),
() => new ListBuilder<RequestTimeFilterPostcodeSectorsProperty>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterPostcodes)]),
() => new ListBuilder<RequestTimeFilterPostcodes>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterPostcodesArrivalSearch)]),
() => new ListBuilder<RequestTimeFilterPostcodesArrivalSearch>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterPostcodesDepartureSearch)]),
() => new ListBuilder<RequestTimeFilterPostcodesDepartureSearch>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterPostcodesProperty)]),
() => new ListBuilder<RequestTimeFilterPostcodesProperty>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeFilterProperty)]),
() => new ListBuilder<RequestTimeFilterProperty>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeMap)]),
() => new ListBuilder<RequestTimeMap>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeMapArrivalSearch)]),
() => new ListBuilder<RequestTimeMapArrivalSearch>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeMapDepartureSearch)]),
() => new ListBuilder<RequestTimeMapDepartureSearch>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTimeMapProperty)]),
() => new ListBuilder<RequestTimeMapProperty>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTransportation)]),
() => new ListBuilder<RequestTransportation>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestTransportationFast)]),
() => new ListBuilder<RequestTransportationFast>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RequestUnionOnIntersection)]),
() => new ListBuilder<RequestUnionOnIntersection>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseBoundingBox)]),
() => new ListBuilder<ResponseBoundingBox>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseBox)]),
() => new ListBuilder<ResponseBox>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseDistanceBreakdownItem)]),
() => new ListBuilder<ResponseDistanceBreakdownItem>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseError)]),
() => new ListBuilder<ResponseError>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseFareTicket)]),
() => new ListBuilder<ResponseFareTicket>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseFares)]),
() => new ListBuilder<ResponseFares>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseFaresBreakdownItem)]),
() => new ListBuilder<ResponseFaresBreakdownItem>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseFaresFast)]),
() => new ListBuilder<ResponseFaresFast>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseGeocoding)]),
() => new ListBuilder<ResponseGeocoding>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseGeocodingGeoJsonFeature)]),
() => new ListBuilder<ResponseGeocodingGeoJsonFeature>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseGeocodingGeometry)]),
() => new ListBuilder<ResponseGeocodingGeometry>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseGeocodingProperties)]),
() => new ListBuilder<ResponseGeocodingProperties>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseMapInfo)]),
() => new ListBuilder<ResponseMapInfo>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseMapInfoFeatures)]),
() => new ListBuilder<ResponseMapInfoFeatures>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseMapInfoFeaturesPublicTransport)]),
() => new ListBuilder<ResponseMapInfoFeaturesPublicTransport>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseMapInfoMap)]),
() => new ListBuilder<ResponseMapInfoMap>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseRoute)]),
() => new ListBuilder<ResponseRoute>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseRoutePart)]),
() => new ListBuilder<ResponseRoutePart>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseRoutes)]),
() => new ListBuilder<ResponseRoutes>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseRoutesLocation)]),
() => new ListBuilder<ResponseRoutesLocation>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseRoutesProperties)]),
() => new ListBuilder<ResponseRoutesProperties>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseRoutesResult)]),
() => new ListBuilder<ResponseRoutesResult>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseShape)]),
() => new ListBuilder<ResponseShape>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseSupportedLocation)]),
() => new ListBuilder<ResponseSupportedLocation>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseSupportedLocations)]),
() => new ListBuilder<ResponseSupportedLocations>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilter)]),
() => new ListBuilder<ResponseTimeFilter>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterFast)]),
() => new ListBuilder<ResponseTimeFilterFast>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterFastLocation)]),
() => new ListBuilder<ResponseTimeFilterFastLocation>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterFastProperties)]),
() => new ListBuilder<ResponseTimeFilterFastProperties>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterFastResult)]),
() => new ListBuilder<ResponseTimeFilterFastResult>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterLocation)]),
() => new ListBuilder<ResponseTimeFilterLocation>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterPostcode)]),
() => new ListBuilder<ResponseTimeFilterPostcode>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterPostcodeDistrict)]),
() => new ListBuilder<ResponseTimeFilterPostcodeDistrict>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterPostcodeDistrictProperties)]),
() => new ListBuilder<ResponseTimeFilterPostcodeDistrictProperties>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterPostcodeDistricts)]),
() => new ListBuilder<ResponseTimeFilterPostcodeDistricts>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterPostcodeDistrictsResult)]),
() => new ListBuilder<ResponseTimeFilterPostcodeDistrictsResult>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterPostcodeSector)]),
() => new ListBuilder<ResponseTimeFilterPostcodeSector>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterPostcodeSectorProperties)]),
() => new ListBuilder<ResponseTimeFilterPostcodeSectorProperties>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterPostcodeSectors)]),
() => new ListBuilder<ResponseTimeFilterPostcodeSectors>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterPostcodeSectorsResult)]),
() => new ListBuilder<ResponseTimeFilterPostcodeSectorsResult>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterPostcodes)]),
() => new ListBuilder<ResponseTimeFilterPostcodes>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterPostcodesProperties)]),
() => new ListBuilder<ResponseTimeFilterPostcodesProperties>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterPostcodesResult)]),
() => new ListBuilder<ResponseTimeFilterPostcodesResult>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterProperties)]),
() => new ListBuilder<ResponseTimeFilterProperties>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeFilterResult)]),
() => new ListBuilder<ResponseTimeFilterResult>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeMap)]),
() => new ListBuilder<ResponseTimeMap>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeMapBoundingBoxes)]),
() => new ListBuilder<ResponseTimeMapBoundingBoxes>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeMapBoundingBoxesResult)]),
() => new ListBuilder<ResponseTimeMapBoundingBoxesResult>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeMapProperties)]),
() => new ListBuilder<ResponseTimeMapProperties>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeMapResult)]),
() => new ListBuilder<ResponseTimeMapResult>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeMapWkt)]),
() => new ListBuilder<ResponseTimeMapWkt>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTimeMapWktResult)]),
() => new ListBuilder<ResponseTimeMapWktResult>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTransportationMode)]),
() => new ListBuilder<ResponseTransportationMode>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ResponseTravelTimeStatistics)]),
() => new ListBuilder<ResponseTravelTimeStatistics>())

..add(Iso8601DateTimeSerializer())
).build();

Serializers standardSerializers =
(serializers.toBuilder()
..addPlugin(StandardJsonPlugin())).build();
