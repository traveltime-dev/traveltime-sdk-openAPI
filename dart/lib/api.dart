//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/default_api.dart';

part 'model/coords.dart';
part 'model/request_arrival_time_period.dart';
part 'model/request_level_of_detail.dart';
part 'model/request_location.dart';
part 'model/request_range_full.dart';
part 'model/request_range_no_max_results.dart';
part 'model/request_routes.dart';
part 'model/request_routes_arrival_search.dart';
part 'model/request_routes_departure_search.dart';
part 'model/request_routes_property.dart';
part 'model/request_supported_locations.dart';
part 'model/request_time_filter.dart';
part 'model/request_time_filter_arrival_search.dart';
part 'model/request_time_filter_departure_search.dart';
part 'model/request_time_filter_fast.dart';
part 'model/request_time_filter_fast_arrival_many_to_one_search.dart';
part 'model/request_time_filter_fast_arrival_one_to_many_search.dart';
part 'model/request_time_filter_fast_arrival_searches.dart';
part 'model/request_time_filter_fast_property.dart';
part 'model/request_time_filter_postcode_districts.dart';
part 'model/request_time_filter_postcode_districts_arrival_search.dart';
part 'model/request_time_filter_postcode_districts_departure_search.dart';
part 'model/request_time_filter_postcode_districts_property.dart';
part 'model/request_time_filter_postcode_sectors.dart';
part 'model/request_time_filter_postcode_sectors_arrival_search.dart';
part 'model/request_time_filter_postcode_sectors_departure_search.dart';
part 'model/request_time_filter_postcode_sectors_property.dart';
part 'model/request_time_filter_postcodes.dart';
part 'model/request_time_filter_postcodes_arrival_search.dart';
part 'model/request_time_filter_postcodes_departure_search.dart';
part 'model/request_time_filter_postcodes_property.dart';
part 'model/request_time_filter_property.dart';
part 'model/request_time_map.dart';
part 'model/request_time_map_arrival_search.dart';
part 'model/request_time_map_departure_search.dart';
part 'model/request_time_map_property.dart';
part 'model/request_transportation.dart';
part 'model/request_transportation_fast.dart';
part 'model/request_union_on_intersection.dart';
part 'model/response_bounding_box.dart';
part 'model/response_box.dart';
part 'model/response_distance_breakdown_item.dart';
part 'model/response_error.dart';
part 'model/response_fare_ticket.dart';
part 'model/response_fares.dart';
part 'model/response_fares_breakdown_item.dart';
part 'model/response_fares_fast.dart';
part 'model/response_geocoding.dart';
part 'model/response_geocoding_geo_json_feature.dart';
part 'model/response_geocoding_geometry.dart';
part 'model/response_geocoding_properties.dart';
part 'model/response_map_info.dart';
part 'model/response_map_info_features.dart';
part 'model/response_map_info_features_public_transport.dart';
part 'model/response_map_info_map.dart';
part 'model/response_route.dart';
part 'model/response_route_part.dart';
part 'model/response_routes.dart';
part 'model/response_routes_location.dart';
part 'model/response_routes_properties.dart';
part 'model/response_routes_result.dart';
part 'model/response_shape.dart';
part 'model/response_supported_location.dart';
part 'model/response_supported_locations.dart';
part 'model/response_time_filter.dart';
part 'model/response_time_filter_fast.dart';
part 'model/response_time_filter_fast_location.dart';
part 'model/response_time_filter_fast_properties.dart';
part 'model/response_time_filter_fast_result.dart';
part 'model/response_time_filter_location.dart';
part 'model/response_time_filter_postcode.dart';
part 'model/response_time_filter_postcode_district.dart';
part 'model/response_time_filter_postcode_district_properties.dart';
part 'model/response_time_filter_postcode_districts.dart';
part 'model/response_time_filter_postcode_districts_result.dart';
part 'model/response_time_filter_postcode_sector.dart';
part 'model/response_time_filter_postcode_sector_properties.dart';
part 'model/response_time_filter_postcode_sectors.dart';
part 'model/response_time_filter_postcode_sectors_result.dart';
part 'model/response_time_filter_postcodes.dart';
part 'model/response_time_filter_postcodes_properties.dart';
part 'model/response_time_filter_postcodes_result.dart';
part 'model/response_time_filter_properties.dart';
part 'model/response_time_filter_result.dart';
part 'model/response_time_map.dart';
part 'model/response_time_map_bounding_boxes.dart';
part 'model/response_time_map_bounding_boxes_result.dart';
part 'model/response_time_map_properties.dart';
part 'model/response_time_map_result.dart';
part 'model/response_time_map_wkt.dart';
part 'model/response_time_map_wkt_result.dart';
part 'model/response_transportation_mode.dart';
part 'model/response_travel_time_statistics.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
