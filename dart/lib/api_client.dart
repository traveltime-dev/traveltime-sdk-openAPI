//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://api.traveltimeapp.com'}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications[r'ApiKey'] = ApiKeyAuth('header', 'X-Api-Key');
    _authentications[r'ApplicationId'] = ApiKeyAuth('header', 'X-Application-Id');
  }

  final String basePath;

  var _client = Client();

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  ///
  /// If the [newClient] is null, an [ArgumentError] is thrown.
  set client(Client newClient) {
    if (newClient == null) {
      throw ArgumentError('New client instance cannot be null.');
    }
    _client = newClient;
  }

  final _defaultHeaderMap = <String, String>{};
  final _authentications = <String, Authentication>{};

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  Map<String,String> get defaultHeaderMap => _defaultHeaderMap;

  /// Returns an unmodifiable [Map] of the authentications, since none should be added
  /// or deleted.
  Map<String, Authentication> get authentications => Map.unmodifiable(_authentications);

  T getAuthentication<T extends Authentication>(String name) {
    final authentication = _authentications[name];
    return authentication is T ? authentication : null;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    Iterable<QueryParam> queryParams,
    Object body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String nullableContentType,
    List<String> authNames,
  ) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);

    final urlEncodedQueryParams = queryParams
      .where((param) => param.value != null)
      .map((param) => '$param');

    final queryString = urlEncodedQueryParams.isNotEmpty
      ? '?${urlEncodedQueryParams.join('&')}'
      : '';

    final Uri uri = Uri.parse('$basePath$path$queryString');

    if (nullableContentType != null) {
      headerParams['Content-Type'] = nullableContentType;
    }

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (nullableContentType == null ||
        !nullableContentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          onError: (error, trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = nullableContentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Socket operation failed: $method $path', e, trace,);
    } on TlsException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'TLS/SSL communication failed: $method $path', e, trace,);
    } on IOException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'I/O operation failed: $method $path', e, trace,);
    } on ClientException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'HTTP connection failed: $method $path', e, trace,);
    } on Exception catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Exception occurred: $method $path', e, trace,);
    }

    throw ApiException(HttpStatus.badRequest, 'Invalid HTTP operation: $method $path',);
  }

  Future<dynamic> deserializeAsync(String json, String targetType, {bool growable}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(json, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String json, String targetType, {bool growable}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? json
      : _deserialize(jsonDecode(json), targetType, growable: growable == true);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object value) => value == null ? '' : json.encode(value);

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(
    List<String> authNames,
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    authNames.forEach((authName) {
      final auth = _authentications[authName];
      if (auth == null) {
        throw ArgumentError('Authentication undefined: $authName');
      }
      auth.applyToParams(queryParams, headerParams);
    });
  }

  static dynamic _deserialize(dynamic value, String targetType, {bool growable}) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
          break;
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'Coords':
          return Coords.fromJson(value);
        case 'RequestArrivalTimePeriod':
          return RequestArrivalTimePeriodTypeTransformer().decode(value);
          
        case 'RequestLevelOfDetail':
          return RequestLevelOfDetail.fromJson(value);
        case 'RequestLocation':
          return RequestLocation.fromJson(value);
        case 'RequestRangeFull':
          return RequestRangeFull.fromJson(value);
        case 'RequestRangeNoMaxResults':
          return RequestRangeNoMaxResults.fromJson(value);
        case 'RequestRoutes':
          return RequestRoutes.fromJson(value);
        case 'RequestRoutesArrivalSearch':
          return RequestRoutesArrivalSearch.fromJson(value);
        case 'RequestRoutesDepartureSearch':
          return RequestRoutesDepartureSearch.fromJson(value);
        case 'RequestRoutesProperty':
          return RequestRoutesPropertyTypeTransformer().decode(value);
          
        case 'RequestSupportedLocations':
          return RequestSupportedLocations.fromJson(value);
        case 'RequestTimeFilter':
          return RequestTimeFilter.fromJson(value);
        case 'RequestTimeFilterArrivalSearch':
          return RequestTimeFilterArrivalSearch.fromJson(value);
        case 'RequestTimeFilterDepartureSearch':
          return RequestTimeFilterDepartureSearch.fromJson(value);
        case 'RequestTimeFilterFast':
          return RequestTimeFilterFast.fromJson(value);
        case 'RequestTimeFilterFastArrivalManyToOneSearch':
          return RequestTimeFilterFastArrivalManyToOneSearch.fromJson(value);
        case 'RequestTimeFilterFastArrivalOneToManySearch':
          return RequestTimeFilterFastArrivalOneToManySearch.fromJson(value);
        case 'RequestTimeFilterFastArrivalSearches':
          return RequestTimeFilterFastArrivalSearches.fromJson(value);
        case 'RequestTimeFilterFastProperty':
          return RequestTimeFilterFastPropertyTypeTransformer().decode(value);
          
        case 'RequestTimeFilterPostcodeDistricts':
          return RequestTimeFilterPostcodeDistricts.fromJson(value);
        case 'RequestTimeFilterPostcodeDistrictsArrivalSearch':
          return RequestTimeFilterPostcodeDistrictsArrivalSearch.fromJson(value);
        case 'RequestTimeFilterPostcodeDistrictsDepartureSearch':
          return RequestTimeFilterPostcodeDistrictsDepartureSearch.fromJson(value);
        case 'RequestTimeFilterPostcodeDistrictsProperty':
          return RequestTimeFilterPostcodeDistrictsPropertyTypeTransformer().decode(value);
          
        case 'RequestTimeFilterPostcodeSectors':
          return RequestTimeFilterPostcodeSectors.fromJson(value);
        case 'RequestTimeFilterPostcodeSectorsArrivalSearch':
          return RequestTimeFilterPostcodeSectorsArrivalSearch.fromJson(value);
        case 'RequestTimeFilterPostcodeSectorsDepartureSearch':
          return RequestTimeFilterPostcodeSectorsDepartureSearch.fromJson(value);
        case 'RequestTimeFilterPostcodeSectorsProperty':
          return RequestTimeFilterPostcodeSectorsPropertyTypeTransformer().decode(value);
          
        case 'RequestTimeFilterPostcodes':
          return RequestTimeFilterPostcodes.fromJson(value);
        case 'RequestTimeFilterPostcodesArrivalSearch':
          return RequestTimeFilterPostcodesArrivalSearch.fromJson(value);
        case 'RequestTimeFilterPostcodesDepartureSearch':
          return RequestTimeFilterPostcodesDepartureSearch.fromJson(value);
        case 'RequestTimeFilterPostcodesProperty':
          return RequestTimeFilterPostcodesPropertyTypeTransformer().decode(value);
          
        case 'RequestTimeFilterProperty':
          return RequestTimeFilterPropertyTypeTransformer().decode(value);
          
        case 'RequestTimeMap':
          return RequestTimeMap.fromJson(value);
        case 'RequestTimeMapArrivalSearch':
          return RequestTimeMapArrivalSearch.fromJson(value);
        case 'RequestTimeMapDepartureSearch':
          return RequestTimeMapDepartureSearch.fromJson(value);
        case 'RequestTimeMapProperty':
          return RequestTimeMapPropertyTypeTransformer().decode(value);
          
        case 'RequestTransportation':
          return RequestTransportation.fromJson(value);
        case 'RequestTransportationFast':
          return RequestTransportationFast.fromJson(value);
        case 'RequestUnionOnIntersection':
          return RequestUnionOnIntersection.fromJson(value);
        case 'ResponseBoundingBox':
          return ResponseBoundingBox.fromJson(value);
        case 'ResponseBox':
          return ResponseBox.fromJson(value);
        case 'ResponseDistanceBreakdownItem':
          return ResponseDistanceBreakdownItem.fromJson(value);
        case 'ResponseError':
          return ResponseError.fromJson(value);
        case 'ResponseFareTicket':
          return ResponseFareTicket.fromJson(value);
        case 'ResponseFares':
          return ResponseFares.fromJson(value);
        case 'ResponseFaresBreakdownItem':
          return ResponseFaresBreakdownItem.fromJson(value);
        case 'ResponseFaresFast':
          return ResponseFaresFast.fromJson(value);
        case 'ResponseGeocoding':
          return ResponseGeocoding.fromJson(value);
        case 'ResponseGeocodingGeoJsonFeature':
          return ResponseGeocodingGeoJsonFeature.fromJson(value);
        case 'ResponseGeocodingGeometry':
          return ResponseGeocodingGeometry.fromJson(value);
        case 'ResponseGeocodingProperties':
          return ResponseGeocodingProperties.fromJson(value);
        case 'ResponseMapInfo':
          return ResponseMapInfo.fromJson(value);
        case 'ResponseMapInfoFeatures':
          return ResponseMapInfoFeatures.fromJson(value);
        case 'ResponseMapInfoFeaturesPublicTransport':
          return ResponseMapInfoFeaturesPublicTransport.fromJson(value);
        case 'ResponseMapInfoMap':
          return ResponseMapInfoMap.fromJson(value);
        case 'ResponseRoute':
          return ResponseRoute.fromJson(value);
        case 'ResponseRoutePart':
          return ResponseRoutePart.fromJson(value);
        case 'ResponseRoutes':
          return ResponseRoutes.fromJson(value);
        case 'ResponseRoutesLocation':
          return ResponseRoutesLocation.fromJson(value);
        case 'ResponseRoutesProperties':
          return ResponseRoutesProperties.fromJson(value);
        case 'ResponseRoutesResult':
          return ResponseRoutesResult.fromJson(value);
        case 'ResponseShape':
          return ResponseShape.fromJson(value);
        case 'ResponseSupportedLocation':
          return ResponseSupportedLocation.fromJson(value);
        case 'ResponseSupportedLocations':
          return ResponseSupportedLocations.fromJson(value);
        case 'ResponseTimeFilter':
          return ResponseTimeFilter.fromJson(value);
        case 'ResponseTimeFilterFast':
          return ResponseTimeFilterFast.fromJson(value);
        case 'ResponseTimeFilterFastLocation':
          return ResponseTimeFilterFastLocation.fromJson(value);
        case 'ResponseTimeFilterFastProperties':
          return ResponseTimeFilterFastProperties.fromJson(value);
        case 'ResponseTimeFilterFastResult':
          return ResponseTimeFilterFastResult.fromJson(value);
        case 'ResponseTimeFilterLocation':
          return ResponseTimeFilterLocation.fromJson(value);
        case 'ResponseTimeFilterPostcode':
          return ResponseTimeFilterPostcode.fromJson(value);
        case 'ResponseTimeFilterPostcodeDistrict':
          return ResponseTimeFilterPostcodeDistrict.fromJson(value);
        case 'ResponseTimeFilterPostcodeDistrictProperties':
          return ResponseTimeFilterPostcodeDistrictProperties.fromJson(value);
        case 'ResponseTimeFilterPostcodeDistricts':
          return ResponseTimeFilterPostcodeDistricts.fromJson(value);
        case 'ResponseTimeFilterPostcodeDistrictsResult':
          return ResponseTimeFilterPostcodeDistrictsResult.fromJson(value);
        case 'ResponseTimeFilterPostcodeSector':
          return ResponseTimeFilterPostcodeSector.fromJson(value);
        case 'ResponseTimeFilterPostcodeSectorProperties':
          return ResponseTimeFilterPostcodeSectorProperties.fromJson(value);
        case 'ResponseTimeFilterPostcodeSectors':
          return ResponseTimeFilterPostcodeSectors.fromJson(value);
        case 'ResponseTimeFilterPostcodeSectorsResult':
          return ResponseTimeFilterPostcodeSectorsResult.fromJson(value);
        case 'ResponseTimeFilterPostcodes':
          return ResponseTimeFilterPostcodes.fromJson(value);
        case 'ResponseTimeFilterPostcodesProperties':
          return ResponseTimeFilterPostcodesProperties.fromJson(value);
        case 'ResponseTimeFilterPostcodesResult':
          return ResponseTimeFilterPostcodesResult.fromJson(value);
        case 'ResponseTimeFilterProperties':
          return ResponseTimeFilterProperties.fromJson(value);
        case 'ResponseTimeFilterResult':
          return ResponseTimeFilterResult.fromJson(value);
        case 'ResponseTimeMap':
          return ResponseTimeMap.fromJson(value);
        case 'ResponseTimeMapBoundingBoxes':
          return ResponseTimeMapBoundingBoxes.fromJson(value);
        case 'ResponseTimeMapBoundingBoxesResult':
          return ResponseTimeMapBoundingBoxesResult.fromJson(value);
        case 'ResponseTimeMapProperties':
          return ResponseTimeMapProperties.fromJson(value);
        case 'ResponseTimeMapResult':
          return ResponseTimeMapResult.fromJson(value);
        case 'ResponseTimeMapWkt':
          return ResponseTimeMapWkt.fromJson(value);
        case 'ResponseTimeMapWktResult':
          return ResponseTimeMapWktResult.fromJson(value);
        case 'ResponseTransportationMode':
          return ResponseTransportationModeTypeTransformer().decode(value);
          
        case 'ResponseTravelTimeStatistics':
          return ResponseTravelTimeStatistics.fromJson(value);
        default:
          Match match;
          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return value
              .map((v) => _deserialize(v, targetType, growable: growable))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return value
              .map((v) => _deserialize(v, targetType, growable: growable))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return Map.fromIterables(
              value.keys,
              value.values.map((v) => _deserialize(v, targetType, growable: growable)),
            );
          }
          break;
      }
    } catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    @required this.json,
    @required this.targetType,
    this.growable,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient._deserialize(
        jsonDecode(message.json),
        targetType,
        growable: message.growable == true,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object value) async => value == null ? '' : json.encode(value);
