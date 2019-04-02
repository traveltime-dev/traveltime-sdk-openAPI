# OpenapiClient::DefaultApi

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
> ResponseGeocoding geocoding_reverse_search(focus_lat, focus_lng, opts)



### Example
```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Api-Key'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['X-Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Application-Id'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
focus_lat = 3.4 # Float | 
focus_lng = 3.4 # Float | 
opts = {
  within_country: 'within_country_example' # String | 
}

begin
  result = api_instance.geocoding_reverse_search(focus_lat, focus_lng, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->geocoding_reverse_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **focus_lat** | **Float**|  | 
 **focus_lng** | **Float**|  | 
 **within_country** | **String**|  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **geocoding_search**
> ResponseGeocoding geocoding_search(query, opts)



### Example
```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Api-Key'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['X-Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Application-Id'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
query = 'query_example' # String | 
opts = {
  within_country: 'within_country_example', # String | 
  focus_lat: 3.4, # Float | 
  focus_lng: 3.4 # Float | 
}

begin
  result = api_instance.geocoding_search(query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->geocoding_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**|  | 
 **within_country** | **String**|  | [optional] 
 **focus_lat** | **Float**|  | [optional] 
 **focus_lng** | **Float**|  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **map_info**
> ResponseMapInfo map_info



### Example
```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Api-Key'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['X-Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Application-Id'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new

begin
  result = api_instance.map_info
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->map_info: #{e}"
end
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



# **routes**
> ResponseRoutes routes(request_routes)



### Example
```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Api-Key'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['X-Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Application-Id'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
request_routes = OpenapiClient::RequestRoutes.new # RequestRoutes | 

begin
  result = api_instance.routes(request_routes)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->routes: #{e}"
end
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



# **supported_locations**
> ResponseSupportedLocations supported_locations(request_supported_locations)



### Example
```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Api-Key'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['X-Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Application-Id'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
request_supported_locations = OpenapiClient::RequestSupportedLocations.new # RequestSupportedLocations | 

begin
  result = api_instance.supported_locations(request_supported_locations)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->supported_locations: #{e}"
end
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



# **time_filter**
> ResponseTimeFilter time_filter(request_time_filter)



### Example
```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Api-Key'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['X-Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Application-Id'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
request_time_filter = OpenapiClient::RequestTimeFilter.new # RequestTimeFilter | 

begin
  result = api_instance.time_filter(request_time_filter)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->time_filter: #{e}"
end
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



# **time_filter_fast**
> ResponseTimeFilterFast time_filter_fast(request_time_filter_fast)



### Example
```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Api-Key'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['X-Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Application-Id'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
request_time_filter_fast = OpenapiClient::RequestTimeFilterFast.new # RequestTimeFilterFast | 

begin
  result = api_instance.time_filter_fast(request_time_filter_fast)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->time_filter_fast: #{e}"
end
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



# **time_filter_postcode_districts**
> ResponseTimeFilterPostcodeDistricts time_filter_postcode_districts(request_time_filter_postcode_districts)



### Example
```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Api-Key'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['X-Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Application-Id'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
request_time_filter_postcode_districts = OpenapiClient::RequestTimeFilterPostcodeDistricts.new # RequestTimeFilterPostcodeDistricts | 

begin
  result = api_instance.time_filter_postcode_districts(request_time_filter_postcode_districts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->time_filter_postcode_districts: #{e}"
end
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



# **time_filter_postcode_sectors**
> ResponseTimeFilterPostcodeSectors time_filter_postcode_sectors(request_time_filter_postcode_sectors)



### Example
```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Api-Key'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['X-Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Application-Id'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
request_time_filter_postcode_sectors = OpenapiClient::RequestTimeFilterPostcodeSectors.new # RequestTimeFilterPostcodeSectors | 

begin
  result = api_instance.time_filter_postcode_sectors(request_time_filter_postcode_sectors)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->time_filter_postcode_sectors: #{e}"
end
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



# **time_filter_postcodes**
> ResponseTimeFilterPostcodes time_filter_postcodes(request_time_filter_postcodes)



### Example
```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Api-Key'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['X-Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Application-Id'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
request_time_filter_postcodes = OpenapiClient::RequestTimeFilterPostcodes.new # RequestTimeFilterPostcodes | 

begin
  result = api_instance.time_filter_postcodes(request_time_filter_postcodes)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->time_filter_postcodes: #{e}"
end
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



# **time_map**
> ResponseTimeMap time_map(request_time_map)



### Example
```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Api-Key'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['X-Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Application-Id'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
request_time_map = OpenapiClient::RequestTimeMap.new # RequestTimeMap | 

begin
  result = api_instance.time_map(request_time_map)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->time_map: #{e}"
end
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



