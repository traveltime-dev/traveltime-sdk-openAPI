//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultApi {
  DefaultApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /v4/geocoding/reverse' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [double] lat (required):
  ///
  /// * [double] lng (required):
  ///
  /// * [String] withinPeriodCountry:
  Future<Response> geocodingReverseSearchWithHttpInfo(double lat, double lng, { String withinPeriodCountry }) async {
    // Verify required params are set.
    if (lat == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: lat');
    }
    if (lng == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: lng');
    }

    final path = r'/v4/geocoding/reverse';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'lat', lat));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'lng', lng));
    if (withinPeriodCountry != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'within.country', withinPeriodCountry));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['ApiKey', 'ApplicationId'];


    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [double] lat (required):
  ///
  /// * [double] lng (required):
  ///
  /// * [String] withinPeriodCountry:
  Future<ResponseGeocoding> geocodingReverseSearch(double lat, double lng, { String withinPeriodCountry }) async {
    final response = await geocodingReverseSearchWithHttpInfo(lat, lng,  withinPeriodCountry: withinPeriodCountry );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResponseGeocoding',) as ResponseGeocoding;
        }
    return Future<ResponseGeocoding>.value(null);
  }

  /// Performs an HTTP 'GET /v4/geocoding/search' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] query (required):
  ///
  /// * [double] focusPeriodLat:
  ///
  /// * [double] focusPeriodLng:
  ///
  /// * [String] withinPeriodCountry:
  Future<Response> geocodingSearchWithHttpInfo(String query, { double focusPeriodLat, double focusPeriodLng, String withinPeriodCountry }) async {
    // Verify required params are set.
    if (query == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: query');
    }

    final path = r'/v4/geocoding/search';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'query', query));
    if (focusPeriodLat != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'focus.lat', focusPeriodLat));
    }
    if (focusPeriodLng != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'focus.lng', focusPeriodLng));
    }
    if (withinPeriodCountry != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'within.country', withinPeriodCountry));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['ApiKey', 'ApplicationId'];


    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [String] query (required):
  ///
  /// * [double] focusPeriodLat:
  ///
  /// * [double] focusPeriodLng:
  ///
  /// * [String] withinPeriodCountry:
  Future<ResponseGeocoding> geocodingSearch(String query, { double focusPeriodLat, double focusPeriodLng, String withinPeriodCountry }) async {
    final response = await geocodingSearchWithHttpInfo(query,  focusPeriodLat: focusPeriodLat, focusPeriodLng: focusPeriodLng, withinPeriodCountry: withinPeriodCountry );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResponseGeocoding',) as ResponseGeocoding;
        }
    return Future<ResponseGeocoding>.value(null);
  }

  /// Performs an HTTP 'GET /v4/map-info' operation and returns the [Response].
  Future<Response> mapInfoWithHttpInfo() async {
    final path = r'/v4/map-info';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['ApiKey', 'ApplicationId'];


    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  Future<ResponseMapInfo> mapInfo() async {
    final response = await mapInfoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResponseMapInfo',) as ResponseMapInfo;
        }
    return Future<ResponseMapInfo>.value(null);
  }

  /// Performs an HTTP 'POST /v4/routes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RequestRoutes] requestRoutes (required):
  Future<Response> routesWithHttpInfo(RequestRoutes requestRoutes) async {
    // Verify required params are set.
    if (requestRoutes == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: requestRoutes');
    }

    final path = r'/v4/routes';

    Object postBody = requestRoutes;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['ApiKey', 'ApplicationId'];


    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [RequestRoutes] requestRoutes (required):
  Future<ResponseRoutes> routes(RequestRoutes requestRoutes) async {
    final response = await routesWithHttpInfo(requestRoutes);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResponseRoutes',) as ResponseRoutes;
        }
    return Future<ResponseRoutes>.value(null);
  }

  /// Performs an HTTP 'POST /v4/supported-locations' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RequestSupportedLocations] requestSupportedLocations (required):
  Future<Response> supportedLocationsWithHttpInfo(RequestSupportedLocations requestSupportedLocations) async {
    // Verify required params are set.
    if (requestSupportedLocations == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: requestSupportedLocations');
    }

    final path = r'/v4/supported-locations';

    Object postBody = requestSupportedLocations;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['ApiKey', 'ApplicationId'];


    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [RequestSupportedLocations] requestSupportedLocations (required):
  Future<ResponseSupportedLocations> supportedLocations(RequestSupportedLocations requestSupportedLocations) async {
    final response = await supportedLocationsWithHttpInfo(requestSupportedLocations);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResponseSupportedLocations',) as ResponseSupportedLocations;
        }
    return Future<ResponseSupportedLocations>.value(null);
  }

  /// Performs an HTTP 'POST /v4/time-filter' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RequestTimeFilter] requestTimeFilter (required):
  Future<Response> timeFilterWithHttpInfo(RequestTimeFilter requestTimeFilter) async {
    // Verify required params are set.
    if (requestTimeFilter == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: requestTimeFilter');
    }

    final path = r'/v4/time-filter';

    Object postBody = requestTimeFilter;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['ApiKey', 'ApplicationId'];


    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [RequestTimeFilter] requestTimeFilter (required):
  Future<ResponseTimeFilter> timeFilter(RequestTimeFilter requestTimeFilter) async {
    final response = await timeFilterWithHttpInfo(requestTimeFilter);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResponseTimeFilter',) as ResponseTimeFilter;
        }
    return Future<ResponseTimeFilter>.value(null);
  }

  /// Performs an HTTP 'POST /v4/time-filter/fast' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RequestTimeFilterFast] requestTimeFilterFast (required):
  Future<Response> timeFilterFastWithHttpInfo(RequestTimeFilterFast requestTimeFilterFast) async {
    // Verify required params are set.
    if (requestTimeFilterFast == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: requestTimeFilterFast');
    }

    final path = r'/v4/time-filter/fast';

    Object postBody = requestTimeFilterFast;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['ApiKey', 'ApplicationId'];


    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [RequestTimeFilterFast] requestTimeFilterFast (required):
  Future<ResponseTimeFilterFast> timeFilterFast(RequestTimeFilterFast requestTimeFilterFast) async {
    final response = await timeFilterFastWithHttpInfo(requestTimeFilterFast);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResponseTimeFilterFast',) as ResponseTimeFilterFast;
        }
    return Future<ResponseTimeFilterFast>.value(null);
  }

  /// Performs an HTTP 'POST /v4/time-filter/postcode-districts' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RequestTimeFilterPostcodeDistricts] requestTimeFilterPostcodeDistricts (required):
  Future<Response> timeFilterPostcodeDistrictsWithHttpInfo(RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts) async {
    // Verify required params are set.
    if (requestTimeFilterPostcodeDistricts == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: requestTimeFilterPostcodeDistricts');
    }

    final path = r'/v4/time-filter/postcode-districts';

    Object postBody = requestTimeFilterPostcodeDistricts;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['ApiKey', 'ApplicationId'];


    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [RequestTimeFilterPostcodeDistricts] requestTimeFilterPostcodeDistricts (required):
  Future<ResponseTimeFilterPostcodeDistricts> timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts) async {
    final response = await timeFilterPostcodeDistrictsWithHttpInfo(requestTimeFilterPostcodeDistricts);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResponseTimeFilterPostcodeDistricts',) as ResponseTimeFilterPostcodeDistricts;
        }
    return Future<ResponseTimeFilterPostcodeDistricts>.value(null);
  }

  /// Performs an HTTP 'POST /v4/time-filter/postcode-sectors' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RequestTimeFilterPostcodeSectors] requestTimeFilterPostcodeSectors (required):
  Future<Response> timeFilterPostcodeSectorsWithHttpInfo(RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors) async {
    // Verify required params are set.
    if (requestTimeFilterPostcodeSectors == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: requestTimeFilterPostcodeSectors');
    }

    final path = r'/v4/time-filter/postcode-sectors';

    Object postBody = requestTimeFilterPostcodeSectors;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['ApiKey', 'ApplicationId'];


    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [RequestTimeFilterPostcodeSectors] requestTimeFilterPostcodeSectors (required):
  Future<ResponseTimeFilterPostcodeSectors> timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors) async {
    final response = await timeFilterPostcodeSectorsWithHttpInfo(requestTimeFilterPostcodeSectors);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResponseTimeFilterPostcodeSectors',) as ResponseTimeFilterPostcodeSectors;
        }
    return Future<ResponseTimeFilterPostcodeSectors>.value(null);
  }

  /// Performs an HTTP 'POST /v4/time-filter/postcodes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RequestTimeFilterPostcodes] requestTimeFilterPostcodes (required):
  Future<Response> timeFilterPostcodesWithHttpInfo(RequestTimeFilterPostcodes requestTimeFilterPostcodes) async {
    // Verify required params are set.
    if (requestTimeFilterPostcodes == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: requestTimeFilterPostcodes');
    }

    final path = r'/v4/time-filter/postcodes';

    Object postBody = requestTimeFilterPostcodes;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['ApiKey', 'ApplicationId'];


    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [RequestTimeFilterPostcodes] requestTimeFilterPostcodes (required):
  Future<ResponseTimeFilterPostcodes> timeFilterPostcodes(RequestTimeFilterPostcodes requestTimeFilterPostcodes) async {
    final response = await timeFilterPostcodesWithHttpInfo(requestTimeFilterPostcodes);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResponseTimeFilterPostcodes',) as ResponseTimeFilterPostcodes;
        }
    return Future<ResponseTimeFilterPostcodes>.value(null);
  }

  /// Performs an HTTP 'POST /v4/time-map' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RequestTimeMap] requestTimeMap (required):
  Future<Response> timeMapWithHttpInfo(RequestTimeMap requestTimeMap) async {
    // Verify required params are set.
    if (requestTimeMap == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: requestTimeMap');
    }

    final path = r'/v4/time-map';

    Object postBody = requestTimeMap;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['ApiKey', 'ApplicationId'];


    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [RequestTimeMap] requestTimeMap (required):
  Future<ResponseTimeMap> timeMap(RequestTimeMap requestTimeMap) async {
    final response = await timeMapWithHttpInfo(requestTimeMap);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResponseTimeMap',) as ResponseTimeMap;
        }
    return Future<ResponseTimeMap>.value(null);
  }
}
