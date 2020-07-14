part of openapi.api;



class DefaultApi {
  final ApiClient apiClient;

  DefaultApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> geocodingReverseSearchWithHttpInfo(double lat, double lng, { String withinCountry }) async {
    Object postBody;

    // verify required params are set
    if(lat == null) {
     throw ApiException(400, "Missing required param: lat");
    }
    if(lng == null) {
     throw ApiException(400, "Missing required param: lng");
    }

    // create path and map variables
    String path = "/v4/geocoding/reverse".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "lat", lat));
      queryParams.addAll(_convertParametersForCollectionFormat("", "lng", lng));
    if(withinCountry != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "within.country", withinCountry));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///double lat  (required):
  ///    
  ///double lng  (required):
  ///    
  ///String withinCountry :
  ///    
  /// 
  Future<ResponseGeocoding> geocodingReverseSearch(double lat, double lng, { String withinCountry }) async {
    Response response = await geocodingReverseSearchWithHttpInfo(lat, lng,  withinCountry: withinCountry );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResponseGeocoding') as ResponseGeocoding;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> geocodingSearchWithHttpInfo(String query, { double focusLat, double focusLng, String withinCountry }) async {
    Object postBody;

    // verify required params are set
    if(query == null) {
     throw ApiException(400, "Missing required param: query");
    }

    // create path and map variables
    String path = "/v4/geocoding/search".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
    if(focusLat != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "focus.lat", focusLat));
    }
    if(focusLng != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "focus.lng", focusLng));
    }
    if(withinCountry != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "within.country", withinCountry));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///String query  (required):
  ///    
  ///double focusLat :
  ///    
  ///double focusLng :
  ///    
  ///String withinCountry :
  ///    
  /// 
  Future<ResponseGeocoding> geocodingSearch(String query, { double focusLat, double focusLng, String withinCountry }) async {
    Response response = await geocodingSearchWithHttpInfo(query,  focusLat: focusLat, focusLng: focusLng, withinCountry: withinCountry );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResponseGeocoding') as ResponseGeocoding;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> mapInfoWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/v4/map-info".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  /// 
  Future<ResponseMapInfo> mapInfo() async {
    Response response = await mapInfoWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResponseMapInfo') as ResponseMapInfo;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> routesWithHttpInfo(RequestRoutes requestRoutes) async {
    Object postBody = requestRoutes;

    // verify required params are set
    if(requestRoutes == null) {
     throw ApiException(400, "Missing required param: requestRoutes");
    }

    // create path and map variables
    String path = "/v4/routes".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///RequestRoutes requestRoutes  (required):
  ///    
  /// 
  Future<ResponseRoutes> routes(RequestRoutes requestRoutes) async {
    Response response = await routesWithHttpInfo(requestRoutes);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResponseRoutes') as ResponseRoutes;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> supportedLocationsWithHttpInfo(RequestSupportedLocations requestSupportedLocations) async {
    Object postBody = requestSupportedLocations;

    // verify required params are set
    if(requestSupportedLocations == null) {
     throw ApiException(400, "Missing required param: requestSupportedLocations");
    }

    // create path and map variables
    String path = "/v4/supported-locations".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///RequestSupportedLocations requestSupportedLocations  (required):
  ///    
  /// 
  Future<ResponseSupportedLocations> supportedLocations(RequestSupportedLocations requestSupportedLocations) async {
    Response response = await supportedLocationsWithHttpInfo(requestSupportedLocations);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResponseSupportedLocations') as ResponseSupportedLocations;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> timeFilterWithHttpInfo(RequestTimeFilter requestTimeFilter) async {
    Object postBody = requestTimeFilter;

    // verify required params are set
    if(requestTimeFilter == null) {
     throw ApiException(400, "Missing required param: requestTimeFilter");
    }

    // create path and map variables
    String path = "/v4/time-filter".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///RequestTimeFilter requestTimeFilter  (required):
  ///    
  /// 
  Future<ResponseTimeFilter> timeFilter(RequestTimeFilter requestTimeFilter) async {
    Response response = await timeFilterWithHttpInfo(requestTimeFilter);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResponseTimeFilter') as ResponseTimeFilter;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> timeFilterFastWithHttpInfo(RequestTimeFilterFast requestTimeFilterFast) async {
    Object postBody = requestTimeFilterFast;

    // verify required params are set
    if(requestTimeFilterFast == null) {
     throw ApiException(400, "Missing required param: requestTimeFilterFast");
    }

    // create path and map variables
    String path = "/v4/time-filter/fast".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///RequestTimeFilterFast requestTimeFilterFast  (required):
  ///    
  /// 
  Future<ResponseTimeFilterFast> timeFilterFast(RequestTimeFilterFast requestTimeFilterFast) async {
    Response response = await timeFilterFastWithHttpInfo(requestTimeFilterFast);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResponseTimeFilterFast') as ResponseTimeFilterFast;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> timeFilterPostcodeDistrictsWithHttpInfo(RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts) async {
    Object postBody = requestTimeFilterPostcodeDistricts;

    // verify required params are set
    if(requestTimeFilterPostcodeDistricts == null) {
     throw ApiException(400, "Missing required param: requestTimeFilterPostcodeDistricts");
    }

    // create path and map variables
    String path = "/v4/time-filter/postcode-districts".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts  (required):
  ///    
  /// 
  Future<ResponseTimeFilterPostcodeDistricts> timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts) async {
    Response response = await timeFilterPostcodeDistrictsWithHttpInfo(requestTimeFilterPostcodeDistricts);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResponseTimeFilterPostcodeDistricts') as ResponseTimeFilterPostcodeDistricts;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> timeFilterPostcodeSectorsWithHttpInfo(RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors) async {
    Object postBody = requestTimeFilterPostcodeSectors;

    // verify required params are set
    if(requestTimeFilterPostcodeSectors == null) {
     throw ApiException(400, "Missing required param: requestTimeFilterPostcodeSectors");
    }

    // create path and map variables
    String path = "/v4/time-filter/postcode-sectors".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors  (required):
  ///    
  /// 
  Future<ResponseTimeFilterPostcodeSectors> timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors) async {
    Response response = await timeFilterPostcodeSectorsWithHttpInfo(requestTimeFilterPostcodeSectors);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResponseTimeFilterPostcodeSectors') as ResponseTimeFilterPostcodeSectors;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> timeFilterPostcodesWithHttpInfo(RequestTimeFilterPostcodes requestTimeFilterPostcodes) async {
    Object postBody = requestTimeFilterPostcodes;

    // verify required params are set
    if(requestTimeFilterPostcodes == null) {
     throw ApiException(400, "Missing required param: requestTimeFilterPostcodes");
    }

    // create path and map variables
    String path = "/v4/time-filter/postcodes".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///RequestTimeFilterPostcodes requestTimeFilterPostcodes  (required):
  ///    
  /// 
  Future<ResponseTimeFilterPostcodes> timeFilterPostcodes(RequestTimeFilterPostcodes requestTimeFilterPostcodes) async {
    Response response = await timeFilterPostcodesWithHttpInfo(requestTimeFilterPostcodes);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResponseTimeFilterPostcodes') as ResponseTimeFilterPostcodes;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> timeMapWithHttpInfo(RequestTimeMap requestTimeMap) async {
    Object postBody = requestTimeMap;

    // verify required params are set
    if(requestTimeMap == null) {
     throw ApiException(400, "Missing required param: requestTimeMap");
    }

    // create path and map variables
    String path = "/v4/time-map".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///RequestTimeMap requestTimeMap  (required):
  ///    
  /// 
  Future<ResponseTimeMap> timeMap(RequestTimeMap requestTimeMap) async {
    Response response = await timeMapWithHttpInfo(requestTimeMap);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResponseTimeMap') as ResponseTimeMap;
    } else {
      return null;
    }
  }

}
