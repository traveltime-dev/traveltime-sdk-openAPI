//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/request_routes.dart';
import 'package:openapi/model/request_supported_locations.dart';
import 'package:openapi/model/request_time_filter.dart';
import 'package:openapi/model/request_time_filter_fast.dart';
import 'package:openapi/model/request_time_filter_postcode_districts.dart';
import 'package:openapi/model/request_time_filter_postcode_sectors.dart';
import 'package:openapi/model/request_time_filter_postcodes.dart';
import 'package:openapi/model/request_time_map.dart';
import 'package:openapi/model/response_error.dart';
import 'package:openapi/model/response_geocoding.dart';
import 'package:openapi/model/response_map_info.dart';
import 'package:openapi/model/response_routes.dart';
import 'package:openapi/model/response_supported_locations.dart';
import 'package:openapi/model/response_time_filter.dart';
import 'package:openapi/model/response_time_filter_fast.dart';
import 'package:openapi/model/response_time_filter_postcode_districts.dart';
import 'package:openapi/model/response_time_filter_postcode_sectors.dart';
import 'package:openapi/model/response_time_filter_postcodes.dart';
import 'package:openapi/model/response_time_map.dart';

class DefaultApi {

  final Dio _dio;

  final Serializers _serializers;

  const DefaultApi(this._dio, this._serializers);

  /// 
  ///
  /// 
  Future<Response<ResponseGeocoding>> geocodingReverseSearch(
    double lat,
    double lng, { 
    String withinPeriodCountry,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/v4/geocoding/reverse',
      method: 'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      queryParameters: <String, dynamic>{
        r'lat': lat,
        r'lng': lng,
        if (withinPeriodCountry != null) r'within.country': withinPeriodCountry,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKey',
            'keyName': 'X-Api-Key',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'ApplicationId',
            'keyName': 'X-Application-Id',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    final _response = await _dio.request<dynamic>(
      _request.path,
      data: _bodyData,
      options: _request,
    );

    const _responseType = FullType(ResponseGeocoding);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as ResponseGeocoding;

    return Response<ResponseGeocoding>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      request: _response.request,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// 
  ///
  /// 
  Future<Response<ResponseGeocoding>> geocodingSearch(
    String query, { 
    double focusPeriodLat,
    double focusPeriodLng,
    String withinPeriodCountry,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/v4/geocoding/search',
      method: 'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      queryParameters: <String, dynamic>{
        r'query': query,
        if (focusPeriodLat != null) r'focus.lat': focusPeriodLat,
        if (focusPeriodLng != null) r'focus.lng': focusPeriodLng,
        if (withinPeriodCountry != null) r'within.country': withinPeriodCountry,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKey',
            'keyName': 'X-Api-Key',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'ApplicationId',
            'keyName': 'X-Application-Id',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    final _response = await _dio.request<dynamic>(
      _request.path,
      data: _bodyData,
      options: _request,
    );

    const _responseType = FullType(ResponseGeocoding);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as ResponseGeocoding;

    return Response<ResponseGeocoding>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      request: _response.request,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// 
  ///
  /// 
  Future<Response<ResponseMapInfo>> mapInfo({ 
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/v4/map-info',
      method: 'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKey',
            'keyName': 'X-Api-Key',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'ApplicationId',
            'keyName': 'X-Application-Id',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    final _response = await _dio.request<dynamic>(
      _request.path,
      data: _bodyData,
      options: _request,
    );

    const _responseType = FullType(ResponseMapInfo);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as ResponseMapInfo;

    return Response<ResponseMapInfo>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      request: _response.request,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// 
  ///
  /// 
  Future<Response<ResponseRoutes>> routes(
    RequestRoutes requestRoutes, { 
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/v4/routes',
      method: 'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKey',
            'keyName': 'X-Api-Key',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'ApplicationId',
            'keyName': 'X-Application-Id',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    const _type = FullType(RequestRoutes);
    _bodyData = _serializers.serialize(requestRoutes, specifiedType: _type);

    final _response = await _dio.request<dynamic>(
      _request.path,
      data: _bodyData,
      options: _request,
    );

    const _responseType = FullType(ResponseRoutes);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as ResponseRoutes;

    return Response<ResponseRoutes>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      request: _response.request,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// 
  ///
  /// 
  Future<Response<ResponseSupportedLocations>> supportedLocations(
    RequestSupportedLocations requestSupportedLocations, { 
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/v4/supported-locations',
      method: 'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKey',
            'keyName': 'X-Api-Key',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'ApplicationId',
            'keyName': 'X-Application-Id',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    const _type = FullType(RequestSupportedLocations);
    _bodyData = _serializers.serialize(requestSupportedLocations, specifiedType: _type);

    final _response = await _dio.request<dynamic>(
      _request.path,
      data: _bodyData,
      options: _request,
    );

    const _responseType = FullType(ResponseSupportedLocations);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as ResponseSupportedLocations;

    return Response<ResponseSupportedLocations>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      request: _response.request,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// 
  ///
  /// 
  Future<Response<ResponseTimeFilter>> timeFilter(
    RequestTimeFilter requestTimeFilter, { 
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/v4/time-filter',
      method: 'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKey',
            'keyName': 'X-Api-Key',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'ApplicationId',
            'keyName': 'X-Application-Id',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    const _type = FullType(RequestTimeFilter);
    _bodyData = _serializers.serialize(requestTimeFilter, specifiedType: _type);

    final _response = await _dio.request<dynamic>(
      _request.path,
      data: _bodyData,
      options: _request,
    );

    const _responseType = FullType(ResponseTimeFilter);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as ResponseTimeFilter;

    return Response<ResponseTimeFilter>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      request: _response.request,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// 
  ///
  /// 
  Future<Response<ResponseTimeFilterFast>> timeFilterFast(
    RequestTimeFilterFast requestTimeFilterFast, { 
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/v4/time-filter/fast',
      method: 'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKey',
            'keyName': 'X-Api-Key',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'ApplicationId',
            'keyName': 'X-Application-Id',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    const _type = FullType(RequestTimeFilterFast);
    _bodyData = _serializers.serialize(requestTimeFilterFast, specifiedType: _type);

    final _response = await _dio.request<dynamic>(
      _request.path,
      data: _bodyData,
      options: _request,
    );

    const _responseType = FullType(ResponseTimeFilterFast);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as ResponseTimeFilterFast;

    return Response<ResponseTimeFilterFast>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      request: _response.request,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// 
  ///
  /// 
  Future<Response<ResponseTimeFilterPostcodeDistricts>> timeFilterPostcodeDistricts(
    RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts, { 
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/v4/time-filter/postcode-districts',
      method: 'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKey',
            'keyName': 'X-Api-Key',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'ApplicationId',
            'keyName': 'X-Application-Id',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    const _type = FullType(RequestTimeFilterPostcodeDistricts);
    _bodyData = _serializers.serialize(requestTimeFilterPostcodeDistricts, specifiedType: _type);

    final _response = await _dio.request<dynamic>(
      _request.path,
      data: _bodyData,
      options: _request,
    );

    const _responseType = FullType(ResponseTimeFilterPostcodeDistricts);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as ResponseTimeFilterPostcodeDistricts;

    return Response<ResponseTimeFilterPostcodeDistricts>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      request: _response.request,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// 
  ///
  /// 
  Future<Response<ResponseTimeFilterPostcodeSectors>> timeFilterPostcodeSectors(
    RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors, { 
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/v4/time-filter/postcode-sectors',
      method: 'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKey',
            'keyName': 'X-Api-Key',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'ApplicationId',
            'keyName': 'X-Application-Id',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    const _type = FullType(RequestTimeFilterPostcodeSectors);
    _bodyData = _serializers.serialize(requestTimeFilterPostcodeSectors, specifiedType: _type);

    final _response = await _dio.request<dynamic>(
      _request.path,
      data: _bodyData,
      options: _request,
    );

    const _responseType = FullType(ResponseTimeFilterPostcodeSectors);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as ResponseTimeFilterPostcodeSectors;

    return Response<ResponseTimeFilterPostcodeSectors>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      request: _response.request,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// 
  ///
  /// 
  Future<Response<ResponseTimeFilterPostcodes>> timeFilterPostcodes(
    RequestTimeFilterPostcodes requestTimeFilterPostcodes, { 
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/v4/time-filter/postcodes',
      method: 'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKey',
            'keyName': 'X-Api-Key',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'ApplicationId',
            'keyName': 'X-Application-Id',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    const _type = FullType(RequestTimeFilterPostcodes);
    _bodyData = _serializers.serialize(requestTimeFilterPostcodes, specifiedType: _type);

    final _response = await _dio.request<dynamic>(
      _request.path,
      data: _bodyData,
      options: _request,
    );

    const _responseType = FullType(ResponseTimeFilterPostcodes);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as ResponseTimeFilterPostcodes;

    return Response<ResponseTimeFilterPostcodes>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      request: _response.request,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// 
  ///
  /// 
  Future<Response<ResponseTimeMap>> timeMap(
    RequestTimeMap requestTimeMap, { 
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/v4/time-map',
      method: 'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKey',
            'keyName': 'X-Api-Key',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'ApplicationId',
            'keyName': 'X-Application-Id',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    const _type = FullType(RequestTimeMap);
    _bodyData = _serializers.serialize(requestTimeMap, specifiedType: _type);

    final _response = await _dio.request<dynamic>(
      _request.path,
      data: _bodyData,
      options: _request,
    );

    const _responseType = FullType(ResponseTimeMap);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as ResponseTimeMap;

    return Response<ResponseTimeMap>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      request: _response.request,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
