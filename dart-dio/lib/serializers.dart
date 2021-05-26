//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:openapi/model/coords.dart';
import 'package:openapi/model/request_arrival_time_period.dart';
import 'package:openapi/model/request_level_of_detail.dart';
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
  RequestLevelOfDetail,
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
Serializers serializers = (_$serializers.toBuilder()
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
