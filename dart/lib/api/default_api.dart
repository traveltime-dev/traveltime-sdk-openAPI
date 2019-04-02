part of openapi.api;



class DefaultApi {
  final ApiClient apiClient;

  DefaultApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// 
  Future<ResponseGeocoding> geocodingReverseSearch(double focusLat, double focusLng, { String withinCountry }) async {
    Object postBody;

    // verify required params are set
    if(focusLat == null) {
     throw new ApiException(400, "Missing required param: focusLat");
    }
    if(focusLng == null) {
     throw new ApiException(400, "Missing required param: focusLng");
    }

    // create path and map variables
    String path = "/v4/geocoding/reverse".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "focus.lat", focusLat));
      queryParams.addAll(_convertParametersForCollectionFormat("", "focus.lng", focusLng));
    if(withinCountry != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "within.country", withinCountry));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
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
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'ResponseGeocoding') as ResponseGeocoding;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// 
  Future<ResponseGeocoding> geocodingSearch(String query, { String withinCountry, double focusLat, double focusLng }) async {
    Object postBody;

    // verify required params are set
    if(query == null) {
     throw new ApiException(400, "Missing required param: query");
    }

    // create path and map variables
    String path = "/v4/geocoding/search".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
    if(withinCountry != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "within.country", withinCountry));
    }
    if(focusLat != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "focus.lat", focusLat));
    }
    if(focusLng != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "focus.lng", focusLng));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
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
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'ResponseGeocoding') as ResponseGeocoding;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// 
  Future<ResponseMapInfo> mapInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/v4/map-info".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
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
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'ResponseMapInfo') as ResponseMapInfo;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// 
  Future<ResponseRoutes> routes(RequestRoutes requestRoutes) async {
    Object postBody = requestRoutes;

    // verify required params are set
    if(requestRoutes == null) {
     throw new ApiException(400, "Missing required param: requestRoutes");
    }

    // create path and map variables
    String path = "/v4/routes".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
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
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'ResponseRoutes') as ResponseRoutes;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// 
  Future<ResponseSupportedLocations> supportedLocations(RequestSupportedLocations requestSupportedLocations) async {
    Object postBody = requestSupportedLocations;

    // verify required params are set
    if(requestSupportedLocations == null) {
     throw new ApiException(400, "Missing required param: requestSupportedLocations");
    }

    // create path and map variables
    String path = "/v4/supported-locations".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
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
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'ResponseSupportedLocations') as ResponseSupportedLocations;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// 
  Future<ResponseTimeFilter> timeFilter(RequestTimeFilter requestTimeFilter) async {
    Object postBody = requestTimeFilter;

    // verify required params are set
    if(requestTimeFilter == null) {
     throw new ApiException(400, "Missing required param: requestTimeFilter");
    }

    // create path and map variables
    String path = "/v4/time-filter".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
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
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'ResponseTimeFilter') as ResponseTimeFilter;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// 
  Future<ResponseTimeFilterFast> timeFilterFast(RequestTimeFilterFast requestTimeFilterFast) async {
    Object postBody = requestTimeFilterFast;

    // verify required params are set
    if(requestTimeFilterFast == null) {
     throw new ApiException(400, "Missing required param: requestTimeFilterFast");
    }

    // create path and map variables
    String path = "/v4/time-filter/fast".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
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
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'ResponseTimeFilterFast') as ResponseTimeFilterFast;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// 
  Future<ResponseTimeFilterPostcodeDistricts> timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts) async {
    Object postBody = requestTimeFilterPostcodeDistricts;

    // verify required params are set
    if(requestTimeFilterPostcodeDistricts == null) {
     throw new ApiException(400, "Missing required param: requestTimeFilterPostcodeDistricts");
    }

    // create path and map variables
    String path = "/v4/time-filter/postcode-districts".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
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
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'ResponseTimeFilterPostcodeDistricts') as ResponseTimeFilterPostcodeDistricts;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// 
  Future<ResponseTimeFilterPostcodeSectors> timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors) async {
    Object postBody = requestTimeFilterPostcodeSectors;

    // verify required params are set
    if(requestTimeFilterPostcodeSectors == null) {
     throw new ApiException(400, "Missing required param: requestTimeFilterPostcodeSectors");
    }

    // create path and map variables
    String path = "/v4/time-filter/postcode-sectors".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
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
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'ResponseTimeFilterPostcodeSectors') as ResponseTimeFilterPostcodeSectors;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// 
  Future<ResponseTimeFilterPostcodes> timeFilterPostcodes(RequestTimeFilterPostcodes requestTimeFilterPostcodes) async {
    Object postBody = requestTimeFilterPostcodes;

    // verify required params are set
    if(requestTimeFilterPostcodes == null) {
     throw new ApiException(400, "Missing required param: requestTimeFilterPostcodes");
    }

    // create path and map variables
    String path = "/v4/time-filter/postcodes".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
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
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'ResponseTimeFilterPostcodes') as ResponseTimeFilterPostcodes;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// 
  Future<ResponseTimeMap> timeMap(RequestTimeMap requestTimeMap) async {
    Object postBody = requestTimeMap;

    // verify required params are set
    if(requestTimeMap == null) {
     throw new ApiException(400, "Missing required param: requestTimeMap");
    }

    // create path and map variables
    String path = "/v4/time-map".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiKey", "ApplicationId"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
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
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'ResponseTimeMap') as ResponseTimeMap;
    } else {
      return null;
    }
  }
}
