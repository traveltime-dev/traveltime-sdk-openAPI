import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/response_time_filter_postcodes.dart';
import 'package:openapi/model/response_error.dart';
import 'package:openapi/model/request_time_map.dart';
import 'package:openapi/model/request_routes.dart';
import 'package:openapi/model/response_routes.dart';
import 'package:openapi/model/request_time_filter_postcodes.dart';
import 'package:openapi/model/request_supported_locations.dart';
import 'package:openapi/model/request_time_filter_fast.dart';
import 'package:openapi/model/response_time_filter_postcode_sectors.dart';
import 'package:openapi/model/response_time_filter_postcode_districts.dart';
import 'package:openapi/model/request_time_filter_postcode_districts.dart';
import 'package:openapi/model/response_time_filter.dart';
import 'package:openapi/model/response_geocoding.dart';
import 'package:openapi/model/response_time_map.dart';
import 'package:openapi/model/response_supported_locations.dart';
import 'package:openapi/model/response_time_filter_fast.dart';
import 'package:openapi/model/request_time_filter_postcode_sectors.dart';
import 'package:openapi/model/response_map_info.dart';
import 'package:openapi/model/request_time_filter.dart';

class DefaultApi {
    final Dio _dio;
    Serializers _serializers;

    DefaultApi(this._dio, this._serializers);

        /// 
        ///
        /// 
        Future<Response<ResponseGeocoding>>geocodingReverseSearch(double lat,double lng,{ String withinCountry,CancelToken cancelToken, Map<String, String> headers, ProgressCallback onSendProgress, ProgressCallback onReceiveProgress,}) async {

        String _path = "/v4/geocoding/reverse";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'lat'] = lat;
                queryParams[r'lng'] = lng;
                queryParams[r'within.country'] = withinCountry;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
            ).then((response) {

                var serializer = _serializers.serializerForType(ResponseGeocoding);
                var data = _serializers.deserializeWith<ResponseGeocoding>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ResponseGeocoding>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// 
        ///
        /// 
        Future<Response<ResponseGeocoding>>geocodingSearch(String query,{ double focusLat,double focusLng,String withinCountry,CancelToken cancelToken, Map<String, String> headers, ProgressCallback onSendProgress, ProgressCallback onReceiveProgress,}) async {

        String _path = "/v4/geocoding/search";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'query'] = query;
                queryParams[r'focus.lat'] = focusLat;
                queryParams[r'focus.lng'] = focusLng;
                queryParams[r'within.country'] = withinCountry;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
            ).then((response) {

                var serializer = _serializers.serializerForType(ResponseGeocoding);
                var data = _serializers.deserializeWith<ResponseGeocoding>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ResponseGeocoding>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// 
        ///
        /// 
        Future<Response<ResponseMapInfo>>mapInfo({ CancelToken cancelToken, Map<String, String> headers, ProgressCallback onSendProgress, ProgressCallback onReceiveProgress,}) async {

        String _path = "/v4/map-info";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
            ).then((response) {

                var serializer = _serializers.serializerForType(ResponseMapInfo);
                var data = _serializers.deserializeWith<ResponseMapInfo>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ResponseMapInfo>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// 
        ///
        /// 
        Future<Response<ResponseRoutes>>routes(RequestRoutes requestRoutes,{ CancelToken cancelToken, Map<String, String> headers, ProgressCallback onSendProgress, ProgressCallback onReceiveProgress,}) async {

        String _path = "/v4/routes";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(requestRoutes);
            var jsonrequestRoutes = json.encode(serializedBody);
            bodyData = jsonrequestRoutes;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
            ).then((response) {

                var serializer = _serializers.serializerForType(ResponseRoutes);
                var data = _serializers.deserializeWith<ResponseRoutes>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ResponseRoutes>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// 
        ///
        /// 
        Future<Response<ResponseSupportedLocations>>supportedLocations(RequestSupportedLocations requestSupportedLocations,{ CancelToken cancelToken, Map<String, String> headers, ProgressCallback onSendProgress, ProgressCallback onReceiveProgress,}) async {

        String _path = "/v4/supported-locations";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(requestSupportedLocations);
            var jsonrequestSupportedLocations = json.encode(serializedBody);
            bodyData = jsonrequestSupportedLocations;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
            ).then((response) {

                var serializer = _serializers.serializerForType(ResponseSupportedLocations);
                var data = _serializers.deserializeWith<ResponseSupportedLocations>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ResponseSupportedLocations>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// 
        ///
        /// 
        Future<Response<ResponseTimeFilter>>timeFilter(RequestTimeFilter requestTimeFilter,{ CancelToken cancelToken, Map<String, String> headers, ProgressCallback onSendProgress, ProgressCallback onReceiveProgress,}) async {

        String _path = "/v4/time-filter";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(requestTimeFilter);
            var jsonrequestTimeFilter = json.encode(serializedBody);
            bodyData = jsonrequestTimeFilter;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
            ).then((response) {

                var serializer = _serializers.serializerForType(ResponseTimeFilter);
                var data = _serializers.deserializeWith<ResponseTimeFilter>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ResponseTimeFilter>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// 
        ///
        /// 
        Future<Response<ResponseTimeFilterFast>>timeFilterFast(RequestTimeFilterFast requestTimeFilterFast,{ CancelToken cancelToken, Map<String, String> headers, ProgressCallback onSendProgress, ProgressCallback onReceiveProgress,}) async {

        String _path = "/v4/time-filter/fast";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(requestTimeFilterFast);
            var jsonrequestTimeFilterFast = json.encode(serializedBody);
            bodyData = jsonrequestTimeFilterFast;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
            ).then((response) {

                var serializer = _serializers.serializerForType(ResponseTimeFilterFast);
                var data = _serializers.deserializeWith<ResponseTimeFilterFast>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ResponseTimeFilterFast>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// 
        ///
        /// 
        Future<Response<ResponseTimeFilterPostcodeDistricts>>timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts,{ CancelToken cancelToken, Map<String, String> headers, ProgressCallback onSendProgress, ProgressCallback onReceiveProgress,}) async {

        String _path = "/v4/time-filter/postcode-districts";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(requestTimeFilterPostcodeDistricts);
            var jsonrequestTimeFilterPostcodeDistricts = json.encode(serializedBody);
            bodyData = jsonrequestTimeFilterPostcodeDistricts;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
            ).then((response) {

                var serializer = _serializers.serializerForType(ResponseTimeFilterPostcodeDistricts);
                var data = _serializers.deserializeWith<ResponseTimeFilterPostcodeDistricts>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ResponseTimeFilterPostcodeDistricts>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// 
        ///
        /// 
        Future<Response<ResponseTimeFilterPostcodeSectors>>timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors,{ CancelToken cancelToken, Map<String, String> headers, ProgressCallback onSendProgress, ProgressCallback onReceiveProgress,}) async {

        String _path = "/v4/time-filter/postcode-sectors";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(requestTimeFilterPostcodeSectors);
            var jsonrequestTimeFilterPostcodeSectors = json.encode(serializedBody);
            bodyData = jsonrequestTimeFilterPostcodeSectors;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
            ).then((response) {

                var serializer = _serializers.serializerForType(ResponseTimeFilterPostcodeSectors);
                var data = _serializers.deserializeWith<ResponseTimeFilterPostcodeSectors>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ResponseTimeFilterPostcodeSectors>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// 
        ///
        /// 
        Future<Response<ResponseTimeFilterPostcodes>>timeFilterPostcodes(RequestTimeFilterPostcodes requestTimeFilterPostcodes,{ CancelToken cancelToken, Map<String, String> headers, ProgressCallback onSendProgress, ProgressCallback onReceiveProgress,}) async {

        String _path = "/v4/time-filter/postcodes";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(requestTimeFilterPostcodes);
            var jsonrequestTimeFilterPostcodes = json.encode(serializedBody);
            bodyData = jsonrequestTimeFilterPostcodes;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
            ).then((response) {

                var serializer = _serializers.serializerForType(ResponseTimeFilterPostcodes);
                var data = _serializers.deserializeWith<ResponseTimeFilterPostcodes>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ResponseTimeFilterPostcodes>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// 
        ///
        /// 
        Future<Response<ResponseTimeMap>>timeMap(RequestTimeMap requestTimeMap,{ CancelToken cancelToken, Map<String, String> headers, ProgressCallback onSendProgress, ProgressCallback onReceiveProgress,}) async {

        String _path = "/v4/time-map";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(requestTimeMap);
            var jsonrequestTimeMap = json.encode(serializedBody);
            bodyData = jsonrequestTimeMap;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
            ).then((response) {

                var serializer = _serializers.serializerForType(ResponseTimeMap);
                var data = _serializers.deserializeWith<ResponseTimeMap>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ResponseTimeMap>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        }
