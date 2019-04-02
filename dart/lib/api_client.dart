part of openapi.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _regList = RegExp(r'^List<(.*)>$');
  final _regMap = RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://api.traveltimeapp.com"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['ApiKey'] = ApiKeyAuth("header", "X-Api-Key");
    _authentications['ApplicationId'] = ApiKeyAuth("header", "X-Application-Id");
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'Coords':
          return Coords.fromJson(value);
        case 'RequestArrivalTimePeriod':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
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
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
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
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'RequestTimeFilterPostcodeDistricts':
          return RequestTimeFilterPostcodeDistricts.fromJson(value);
        case 'RequestTimeFilterPostcodeDistrictsArrivalSearch':
          return RequestTimeFilterPostcodeDistrictsArrivalSearch.fromJson(value);
        case 'RequestTimeFilterPostcodeDistrictsDepartureSearch':
          return RequestTimeFilterPostcodeDistrictsDepartureSearch.fromJson(value);
        case 'RequestTimeFilterPostcodeDistrictsProperty':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'RequestTimeFilterPostcodeSectors':
          return RequestTimeFilterPostcodeSectors.fromJson(value);
        case 'RequestTimeFilterPostcodeSectorsArrivalSearch':
          return RequestTimeFilterPostcodeSectorsArrivalSearch.fromJson(value);
        case 'RequestTimeFilterPostcodeSectorsDepartureSearch':
          return RequestTimeFilterPostcodeSectorsDepartureSearch.fromJson(value);
        case 'RequestTimeFilterPostcodeSectorsProperty':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'RequestTimeFilterPostcodes':
          return RequestTimeFilterPostcodes.fromJson(value);
        case 'RequestTimeFilterPostcodesArrivalSearch':
          return RequestTimeFilterPostcodesArrivalSearch.fromJson(value);
        case 'RequestTimeFilterPostcodesDepartureSearch':
          return RequestTimeFilterPostcodesDepartureSearch.fromJson(value);
        case 'RequestTimeFilterPostcodesProperty':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'RequestTimeFilterProperty':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'RequestTimeMap':
          return RequestTimeMap.fromJson(value);
        case 'RequestTimeMapArrivalSearch':
          return RequestTimeMapArrivalSearch.fromJson(value);
        case 'RequestTimeMapDepartureSearch':
          return RequestTimeMapDepartureSearch.fromJson(value);
        case 'RequestTimeMapProperty':
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
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
          // Enclose the value in a list so that Dartson can use a transformer
          // to decode it.
          final listValue = [value];
          final List<dynamic> listResult = dson.map(listValue, []);
          return listResult[0];
        case 'ResponseTravelTimeStatistics':
          return ResponseTravelTimeStatistics.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _regList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _regMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String json, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = jsonDecode(json);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
