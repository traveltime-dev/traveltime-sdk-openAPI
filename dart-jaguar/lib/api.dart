library openapi.api;

import 'package:http/http.dart' as http;
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:openapi/auth/api_key_auth.dart';
import 'package:openapi/auth/basic_auth.dart';
import 'package:openapi/auth/oauth.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';

import 'package:openapi/api/default_api.dart';

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



final _jsonJaguarRepo = JsonRepo()
..add(CoordsSerializer())

..add(RequestLocationSerializer())
..add(RequestRangeFullSerializer())
..add(RequestRangeNoMaxResultsSerializer())
..add(RequestRoutesSerializer())
..add(RequestRoutesArrivalSearchSerializer())
..add(RequestRoutesDepartureSearchSerializer())

..add(RequestSupportedLocationsSerializer())
..add(RequestTimeFilterSerializer())
..add(RequestTimeFilterArrivalSearchSerializer())
..add(RequestTimeFilterDepartureSearchSerializer())
..add(RequestTimeFilterFastSerializer())
..add(RequestTimeFilterFastArrivalManyToOneSearchSerializer())
..add(RequestTimeFilterFastArrivalOneToManySearchSerializer())
..add(RequestTimeFilterFastArrivalSearchesSerializer())

..add(RequestTimeFilterPostcodeDistrictsSerializer())
..add(RequestTimeFilterPostcodeDistrictsArrivalSearchSerializer())
..add(RequestTimeFilterPostcodeDistrictsDepartureSearchSerializer())

..add(RequestTimeFilterPostcodeSectorsSerializer())
..add(RequestTimeFilterPostcodeSectorsArrivalSearchSerializer())
..add(RequestTimeFilterPostcodeSectorsDepartureSearchSerializer())

..add(RequestTimeFilterPostcodesSerializer())
..add(RequestTimeFilterPostcodesArrivalSearchSerializer())
..add(RequestTimeFilterPostcodesDepartureSearchSerializer())


..add(RequestTimeMapSerializer())
..add(RequestTimeMapArrivalSearchSerializer())
..add(RequestTimeMapDepartureSearchSerializer())

..add(RequestTransportationSerializer())
..add(RequestTransportationFastSerializer())
..add(RequestUnionOnIntersectionSerializer())
..add(ResponseBoundingBoxSerializer())
..add(ResponseBoxSerializer())
..add(ResponseDistanceBreakdownItemSerializer())
..add(ResponseErrorSerializer())
..add(ResponseFareTicketSerializer())
..add(ResponseFaresSerializer())
..add(ResponseFaresBreakdownItemSerializer())
..add(ResponseFaresFastSerializer())
..add(ResponseGeocodingSerializer())
..add(ResponseGeocodingGeoJsonFeatureSerializer())
..add(ResponseGeocodingGeometrySerializer())
..add(ResponseGeocodingPropertiesSerializer())
..add(ResponseMapInfoSerializer())
..add(ResponseMapInfoFeaturesSerializer())
..add(ResponseMapInfoFeaturesPublicTransportSerializer())
..add(ResponseMapInfoMapSerializer())
..add(ResponseRouteSerializer())
..add(ResponseRoutePartSerializer())
..add(ResponseRoutesSerializer())
..add(ResponseRoutesLocationSerializer())
..add(ResponseRoutesPropertiesSerializer())
..add(ResponseRoutesResultSerializer())
..add(ResponseShapeSerializer())
..add(ResponseSupportedLocationSerializer())
..add(ResponseSupportedLocationsSerializer())
..add(ResponseTimeFilterSerializer())
..add(ResponseTimeFilterFastSerializer())
..add(ResponseTimeFilterFastLocationSerializer())
..add(ResponseTimeFilterFastPropertiesSerializer())
..add(ResponseTimeFilterFastResultSerializer())
..add(ResponseTimeFilterLocationSerializer())
..add(ResponseTimeFilterPostcodeSerializer())
..add(ResponseTimeFilterPostcodeDistrictSerializer())
..add(ResponseTimeFilterPostcodeDistrictPropertiesSerializer())
..add(ResponseTimeFilterPostcodeDistrictsSerializer())
..add(ResponseTimeFilterPostcodeDistrictsResultSerializer())
..add(ResponseTimeFilterPostcodeSectorSerializer())
..add(ResponseTimeFilterPostcodeSectorPropertiesSerializer())
..add(ResponseTimeFilterPostcodeSectorsSerializer())
..add(ResponseTimeFilterPostcodeSectorsResultSerializer())
..add(ResponseTimeFilterPostcodesSerializer())
..add(ResponseTimeFilterPostcodesPropertiesSerializer())
..add(ResponseTimeFilterPostcodesResultSerializer())
..add(ResponseTimeFilterPropertiesSerializer())
..add(ResponseTimeFilterResultSerializer())
..add(ResponseTimeMapSerializer())
..add(ResponseTimeMapBoundingBoxesSerializer())
..add(ResponseTimeMapBoundingBoxesResultSerializer())
..add(ResponseTimeMapPropertiesSerializer())
..add(ResponseTimeMapResultSerializer())
..add(ResponseTimeMapWktSerializer())
..add(ResponseTimeMapWktResultSerializer())

..add(ResponseTravelTimeStatisticsSerializer())
;
final Map<String, CodecRepo> defaultConverters = {
    MimeTypes.json: _jsonJaguarRepo,
};



final _defaultInterceptors = [OAuthInterceptor(), BasicAuthInterceptor(), ApiKeyAuthInterceptor()];

class Openapi {
    List<Interceptor> interceptors;
    String basePath = "https://api.traveltimeapp.com";
    Route _baseRoute;
    final Duration timeout;

    /**
    * Add custom global interceptors, put overrideInterceptors to true to set your interceptors only (auth interceptors will not be added)
    */
    Openapi({List<Interceptor> interceptors, bool overrideInterceptors = false, String baseUrl, this.timeout = const Duration(minutes: 2)}) {
        _baseRoute = Route(baseUrl ?? basePath).withClient(globalClient ?? http.Client());
        if(interceptors == null) {
            this.interceptors = _defaultInterceptors;
        }
        else if(overrideInterceptors){
            this.interceptors = interceptors;
        }
        else {
            this.interceptors = List.from(_defaultInterceptors)..addAll(interceptors);
        }

        this.interceptors.forEach((interceptor) {
            _baseRoute.before(interceptor.before);
            _baseRoute.after(interceptor.after);
        });
    }

    void setOAuthToken(String name, String token) {
        (_defaultInterceptors[0] as OAuthInterceptor).tokens[name] = token;
    }

    void setBasicAuth(String name, String username, String password) {
        (_defaultInterceptors[1] as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }

    void setApiKey(String name, String apiKey) {
        (_defaultInterceptors[2] as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }

    
    /**
    * Get DefaultApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    DefaultApi getDefaultApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return DefaultApi(base: base, converters: converters, timeout: timeout);
    }

    
}
