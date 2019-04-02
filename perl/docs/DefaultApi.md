# WWW::OpenAPIClient::DefaultApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::DefaultApi;
```

All URIs are relative to *https://api.traveltimeapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geocoding_reverse_search**](DefaultApi.md#geocoding_reverse_search) | **GET** /v4/geocoding/reverse | 
[**geocoding_search**](DefaultApi.md#geocoding_search) | **GET** /v4/geocoding/search | 
[**map_info**](DefaultApi.md#map_info) | **GET** /v4/map-info | 
[**routes**](DefaultApi.md#routes) | **POST** /v4/routes | 
[**supported_locations**](DefaultApi.md#supported_locations) | **POST** /v4/supported-locations | 
[**time_filter**](DefaultApi.md#time_filter) | **POST** /v4/time-filter | 
[**time_filter_fast**](DefaultApi.md#time_filter_fast) | **POST** /v4/time-filter/fast | 
[**time_filter_postcode_districts**](DefaultApi.md#time_filter_postcode_districts) | **POST** /v4/time-filter/postcode-districts | 
[**time_filter_postcode_sectors**](DefaultApi.md#time_filter_postcode_sectors) | **POST** /v4/time-filter/postcode-sectors | 
[**time_filter_postcodes**](DefaultApi.md#time_filter_postcodes) | **POST** /v4/time-filter/postcodes | 
[**time_map**](DefaultApi.md#time_map) | **POST** /v4/time-map | 


# **geocoding_reverse_search**
> ResponseGeocoding geocoding_reverse_search(focus/lat => $focus/lat, focus/lng => $focus/lng, within/country => $within/country)



### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-Api-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Api-Key' => 'Bearer'},
    # Configure API key authorization: ApplicationId
    api_key => {'X-Application-Id' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Application-Id' => 'Bearer'},
);

my $focus/lat = 3.4; # double | 
my $focus/lng = 3.4; # double | 
my $within/country = "within/country_example"; # string | 

eval { 
    my $result = $api_instance->geocoding_reverse_search(focus/lat => $focus/lat, focus/lng => $focus/lng, within/country => $within/country);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->geocoding_reverse_search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **focus/lat** | **double**|  | 
 **focus/lng** | **double**|  | 
 **within/country** | **string**|  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geocoding_search**
> ResponseGeocoding geocoding_search(query => $query, within/country => $within/country, focus/lat => $focus/lat, focus/lng => $focus/lng)



### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-Api-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Api-Key' => 'Bearer'},
    # Configure API key authorization: ApplicationId
    api_key => {'X-Application-Id' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Application-Id' => 'Bearer'},
);

my $query = "query_example"; # string | 
my $within/country = "within/country_example"; # string | 
my $focus/lat = 3.4; # double | 
my $focus/lng = 3.4; # double | 

eval { 
    my $result = $api_instance->geocoding_search(query => $query, within/country => $within/country, focus/lat => $focus/lat, focus/lng => $focus/lng);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->geocoding_search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**|  | 
 **within/country** | **string**|  | [optional] 
 **focus/lat** | **double**|  | [optional] 
 **focus/lng** | **double**|  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **map_info**
> ResponseMapInfo map_info()



### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-Api-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Api-Key' => 'Bearer'},
    # Configure API key authorization: ApplicationId
    api_key => {'X-Application-Id' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Application-Id' => 'Bearer'},
);


eval { 
    my $result = $api_instance->map_info();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->map_info: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResponseMapInfo**](ResponseMapInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **routes**
> ResponseRoutes routes(request_routes => $request_routes)



### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-Api-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Api-Key' => 'Bearer'},
    # Configure API key authorization: ApplicationId
    api_key => {'X-Application-Id' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Application-Id' => 'Bearer'},
);

my $request_routes = WWW::OpenAPIClient::Object::RequestRoutes->new(); # RequestRoutes | 

eval { 
    my $result = $api_instance->routes(request_routes => $request_routes);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->routes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_routes** | [**RequestRoutes**](RequestRoutes.md)|  | 

### Return type

[**ResponseRoutes**](ResponseRoutes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supported_locations**
> ResponseSupportedLocations supported_locations(request_supported_locations => $request_supported_locations)



### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-Api-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Api-Key' => 'Bearer'},
    # Configure API key authorization: ApplicationId
    api_key => {'X-Application-Id' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Application-Id' => 'Bearer'},
);

my $request_supported_locations = WWW::OpenAPIClient::Object::RequestSupportedLocations->new(); # RequestSupportedLocations | 

eval { 
    my $result = $api_instance->supported_locations(request_supported_locations => $request_supported_locations);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->supported_locations: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_supported_locations** | [**RequestSupportedLocations**](RequestSupportedLocations.md)|  | 

### Return type

[**ResponseSupportedLocations**](ResponseSupportedLocations.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **time_filter**
> ResponseTimeFilter time_filter(request_time_filter => $request_time_filter)



### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-Api-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Api-Key' => 'Bearer'},
    # Configure API key authorization: ApplicationId
    api_key => {'X-Application-Id' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Application-Id' => 'Bearer'},
);

my $request_time_filter = WWW::OpenAPIClient::Object::RequestTimeFilter->new(); # RequestTimeFilter | 

eval { 
    my $result = $api_instance->time_filter(request_time_filter => $request_time_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->time_filter: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter** | [**RequestTimeFilter**](RequestTimeFilter.md)|  | 

### Return type

[**ResponseTimeFilter**](ResponseTimeFilter.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **time_filter_fast**
> ResponseTimeFilterFast time_filter_fast(request_time_filter_fast => $request_time_filter_fast)



### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-Api-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Api-Key' => 'Bearer'},
    # Configure API key authorization: ApplicationId
    api_key => {'X-Application-Id' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Application-Id' => 'Bearer'},
);

my $request_time_filter_fast = WWW::OpenAPIClient::Object::RequestTimeFilterFast->new(); # RequestTimeFilterFast | 

eval { 
    my $result = $api_instance->time_filter_fast(request_time_filter_fast => $request_time_filter_fast);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->time_filter_fast: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter_fast** | [**RequestTimeFilterFast**](RequestTimeFilterFast.md)|  | 

### Return type

[**ResponseTimeFilterFast**](ResponseTimeFilterFast.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **time_filter_postcode_districts**
> ResponseTimeFilterPostcodeDistricts time_filter_postcode_districts(request_time_filter_postcode_districts => $request_time_filter_postcode_districts)



### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-Api-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Api-Key' => 'Bearer'},
    # Configure API key authorization: ApplicationId
    api_key => {'X-Application-Id' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Application-Id' => 'Bearer'},
);

my $request_time_filter_postcode_districts = WWW::OpenAPIClient::Object::RequestTimeFilterPostcodeDistricts->new(); # RequestTimeFilterPostcodeDistricts | 

eval { 
    my $result = $api_instance->time_filter_postcode_districts(request_time_filter_postcode_districts => $request_time_filter_postcode_districts);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->time_filter_postcode_districts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter_postcode_districts** | [**RequestTimeFilterPostcodeDistricts**](RequestTimeFilterPostcodeDistricts.md)|  | 

### Return type

[**ResponseTimeFilterPostcodeDistricts**](ResponseTimeFilterPostcodeDistricts.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **time_filter_postcode_sectors**
> ResponseTimeFilterPostcodeSectors time_filter_postcode_sectors(request_time_filter_postcode_sectors => $request_time_filter_postcode_sectors)



### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-Api-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Api-Key' => 'Bearer'},
    # Configure API key authorization: ApplicationId
    api_key => {'X-Application-Id' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Application-Id' => 'Bearer'},
);

my $request_time_filter_postcode_sectors = WWW::OpenAPIClient::Object::RequestTimeFilterPostcodeSectors->new(); # RequestTimeFilterPostcodeSectors | 

eval { 
    my $result = $api_instance->time_filter_postcode_sectors(request_time_filter_postcode_sectors => $request_time_filter_postcode_sectors);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->time_filter_postcode_sectors: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter_postcode_sectors** | [**RequestTimeFilterPostcodeSectors**](RequestTimeFilterPostcodeSectors.md)|  | 

### Return type

[**ResponseTimeFilterPostcodeSectors**](ResponseTimeFilterPostcodeSectors.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **time_filter_postcodes**
> ResponseTimeFilterPostcodes time_filter_postcodes(request_time_filter_postcodes => $request_time_filter_postcodes)



### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-Api-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Api-Key' => 'Bearer'},
    # Configure API key authorization: ApplicationId
    api_key => {'X-Application-Id' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Application-Id' => 'Bearer'},
);

my $request_time_filter_postcodes = WWW::OpenAPIClient::Object::RequestTimeFilterPostcodes->new(); # RequestTimeFilterPostcodes | 

eval { 
    my $result = $api_instance->time_filter_postcodes(request_time_filter_postcodes => $request_time_filter_postcodes);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->time_filter_postcodes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter_postcodes** | [**RequestTimeFilterPostcodes**](RequestTimeFilterPostcodes.md)|  | 

### Return type

[**ResponseTimeFilterPostcodes**](ResponseTimeFilterPostcodes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **time_map**
> ResponseTimeMap time_map(request_time_map => $request_time_map)



### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: ApiKey
    api_key => {'X-Api-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Api-Key' => 'Bearer'},
    # Configure API key authorization: ApplicationId
    api_key => {'X-Application-Id' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-Application-Id' => 'Bearer'},
);

my $request_time_map = WWW::OpenAPIClient::Object::RequestTimeMap->new(); # RequestTimeMap | 

eval { 
    my $result = $api_instance->time_map(request_time_map => $request_time_map);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->time_map: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_map** | [**RequestTimeMap**](RequestTimeMap.md)|  | 

### Return type

[**ResponseTimeMap**](ResponseTimeMap.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/vnd.wkt+json, application/vnd.wkt-no-holes+json, application/vnd.bounding-boxes+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

