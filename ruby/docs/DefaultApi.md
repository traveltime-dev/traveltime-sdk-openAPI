# OpenapiClient::DefaultApi

All URIs are relative to *https://api.traveltimeapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**geocoding_reverse_search**](DefaultApi.md#geocoding_reverse_search) | **GET** /v4/geocoding/reverse |  |
| [**geocoding_search**](DefaultApi.md#geocoding_search) | **GET** /v4/geocoding/search |  |
| [**map_info**](DefaultApi.md#map_info) | **GET** /v4/map-info |  |
| [**routes**](DefaultApi.md#routes) | **POST** /v4/routes |  |
| [**supported_locations**](DefaultApi.md#supported_locations) | **POST** /v4/supported-locations |  |
| [**time_filter**](DefaultApi.md#time_filter) | **POST** /v4/time-filter |  |
| [**time_filter_fast**](DefaultApi.md#time_filter_fast) | **POST** /v4/time-filter/fast |  |
| [**time_filter_postcode_districts**](DefaultApi.md#time_filter_postcode_districts) | **POST** /v4/time-filter/postcode-districts |  |
| [**time_filter_postcode_sectors**](DefaultApi.md#time_filter_postcode_sectors) | **POST** /v4/time-filter/postcode-sectors |  |
| [**time_filter_postcodes**](DefaultApi.md#time_filter_postcodes) | **POST** /v4/time-filter/postcodes |  |
| [**time_map**](DefaultApi.md#time_map) | **POST** /v4/time-map |  |


## geocoding_reverse_search

> <ResponseGeocoding> geocoding_reverse_search(lat, lng, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['ApplicationId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApplicationId'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
lat = 1.2 # Float | 
lng = 1.2 # Float | 
opts = {
  within_country: 'within_country_example' # String | 
}

begin
  
  result = api_instance.geocoding_reverse_search(lat, lng, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->geocoding_reverse_search: #{e}"
end
```

#### Using the geocoding_reverse_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseGeocoding>, Integer, Hash)> geocoding_reverse_search_with_http_info(lat, lng, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.geocoding_reverse_search_with_http_info(lat, lng, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseGeocoding>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->geocoding_reverse_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lat** | **Float** |  |  |
| **lng** | **Float** |  |  |
| **within_country** | **String** |  | [optional] |

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## geocoding_search

> <ResponseGeocoding> geocoding_search(query, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['ApplicationId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApplicationId'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
query = 'query_example' # String | 
opts = {
  focus_lat: 1.2, # Float | 
  focus_lng: 1.2, # Float | 
  within_country: 'within_country_example' # String | 
}

begin
  
  result = api_instance.geocoding_search(query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->geocoding_search: #{e}"
end
```

#### Using the geocoding_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseGeocoding>, Integer, Hash)> geocoding_search_with_http_info(query, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.geocoding_search_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseGeocoding>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->geocoding_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** |  |  |
| **focus_lat** | **Float** |  | [optional] |
| **focus_lng** | **Float** |  | [optional] |
| **within_country** | **String** |  | [optional] |

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## map_info

> <ResponseMapInfo> map_info



### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['ApplicationId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApplicationId'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new

begin
  
  result = api_instance.map_info
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->map_info: #{e}"
end
```

#### Using the map_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseMapInfo>, Integer, Hash)> map_info_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.map_info_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseMapInfo>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->map_info_with_http_info: #{e}"
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


## routes

> <ResponseRoutes> routes(request_routes)



### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['ApplicationId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApplicationId'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
request_routes = OpenapiClient::RequestRoutes.new({locations: [OpenapiClient::RequestLocation.new({id: 'id_example', coords: OpenapiClient::Coords.new({lat: 3.56, lng: 3.56})})]}) # RequestRoutes | 

begin
  
  result = api_instance.routes(request_routes)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->routes: #{e}"
end
```

#### Using the routes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseRoutes>, Integer, Hash)> routes_with_http_info(request_routes)

```ruby
begin
  
  data, status_code, headers = api_instance.routes_with_http_info(request_routes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseRoutes>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->routes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_routes** | [**RequestRoutes**](RequestRoutes.md) |  |  |

### Return type

[**ResponseRoutes**](ResponseRoutes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## supported_locations

> <ResponseSupportedLocations> supported_locations(request_supported_locations)



### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['ApplicationId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApplicationId'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
request_supported_locations = OpenapiClient::RequestSupportedLocations.new({locations: [OpenapiClient::RequestLocation.new({id: 'id_example', coords: OpenapiClient::Coords.new({lat: 3.56, lng: 3.56})})]}) # RequestSupportedLocations | 

begin
  
  result = api_instance.supported_locations(request_supported_locations)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->supported_locations: #{e}"
end
```

#### Using the supported_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseSupportedLocations>, Integer, Hash)> supported_locations_with_http_info(request_supported_locations)

```ruby
begin
  
  data, status_code, headers = api_instance.supported_locations_with_http_info(request_supported_locations)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseSupportedLocations>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->supported_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_supported_locations** | [**RequestSupportedLocations**](RequestSupportedLocations.md) |  |  |

### Return type

[**ResponseSupportedLocations**](ResponseSupportedLocations.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## time_filter

> <ResponseTimeFilter> time_filter(request_time_filter)



### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['ApplicationId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApplicationId'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
request_time_filter = OpenapiClient::RequestTimeFilter.new({locations: [OpenapiClient::RequestLocation.new({id: 'id_example', coords: OpenapiClient::Coords.new({lat: 3.56, lng: 3.56})})]}) # RequestTimeFilter | 

begin
  
  result = api_instance.time_filter(request_time_filter)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->time_filter: #{e}"
end
```

#### Using the time_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseTimeFilter>, Integer, Hash)> time_filter_with_http_info(request_time_filter)

```ruby
begin
  
  data, status_code, headers = api_instance.time_filter_with_http_info(request_time_filter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseTimeFilter>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->time_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_time_filter** | [**RequestTimeFilter**](RequestTimeFilter.md) |  |  |

### Return type

[**ResponseTimeFilter**](ResponseTimeFilter.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## time_filter_fast

> <ResponseTimeFilterFast> time_filter_fast(request_time_filter_fast)



### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['ApplicationId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApplicationId'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
request_time_filter_fast = OpenapiClient::RequestTimeFilterFast.new({locations: [OpenapiClient::RequestLocation.new({id: 'id_example', coords: OpenapiClient::Coords.new({lat: 3.56, lng: 3.56})})], arrival_searches: OpenapiClient::RequestTimeFilterFastArrivalSearches.new}) # RequestTimeFilterFast | 

begin
  
  result = api_instance.time_filter_fast(request_time_filter_fast)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->time_filter_fast: #{e}"
end
```

#### Using the time_filter_fast_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseTimeFilterFast>, Integer, Hash)> time_filter_fast_with_http_info(request_time_filter_fast)

```ruby
begin
  
  data, status_code, headers = api_instance.time_filter_fast_with_http_info(request_time_filter_fast)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseTimeFilterFast>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->time_filter_fast_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_time_filter_fast** | [**RequestTimeFilterFast**](RequestTimeFilterFast.md) |  |  |

### Return type

[**ResponseTimeFilterFast**](ResponseTimeFilterFast.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## time_filter_postcode_districts

> <ResponseTimeFilterPostcodeDistricts> time_filter_postcode_districts(request_time_filter_postcode_districts)



### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['ApplicationId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApplicationId'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
request_time_filter_postcode_districts = OpenapiClient::RequestTimeFilterPostcodeDistricts.new # RequestTimeFilterPostcodeDistricts | 

begin
  
  result = api_instance.time_filter_postcode_districts(request_time_filter_postcode_districts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->time_filter_postcode_districts: #{e}"
end
```

#### Using the time_filter_postcode_districts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseTimeFilterPostcodeDistricts>, Integer, Hash)> time_filter_postcode_districts_with_http_info(request_time_filter_postcode_districts)

```ruby
begin
  
  data, status_code, headers = api_instance.time_filter_postcode_districts_with_http_info(request_time_filter_postcode_districts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseTimeFilterPostcodeDistricts>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->time_filter_postcode_districts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_time_filter_postcode_districts** | [**RequestTimeFilterPostcodeDistricts**](RequestTimeFilterPostcodeDistricts.md) |  |  |

### Return type

[**ResponseTimeFilterPostcodeDistricts**](ResponseTimeFilterPostcodeDistricts.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## time_filter_postcode_sectors

> <ResponseTimeFilterPostcodeSectors> time_filter_postcode_sectors(request_time_filter_postcode_sectors)



### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['ApplicationId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApplicationId'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
request_time_filter_postcode_sectors = OpenapiClient::RequestTimeFilterPostcodeSectors.new # RequestTimeFilterPostcodeSectors | 

begin
  
  result = api_instance.time_filter_postcode_sectors(request_time_filter_postcode_sectors)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->time_filter_postcode_sectors: #{e}"
end
```

#### Using the time_filter_postcode_sectors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseTimeFilterPostcodeSectors>, Integer, Hash)> time_filter_postcode_sectors_with_http_info(request_time_filter_postcode_sectors)

```ruby
begin
  
  data, status_code, headers = api_instance.time_filter_postcode_sectors_with_http_info(request_time_filter_postcode_sectors)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseTimeFilterPostcodeSectors>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->time_filter_postcode_sectors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_time_filter_postcode_sectors** | [**RequestTimeFilterPostcodeSectors**](RequestTimeFilterPostcodeSectors.md) |  |  |

### Return type

[**ResponseTimeFilterPostcodeSectors**](ResponseTimeFilterPostcodeSectors.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## time_filter_postcodes

> <ResponseTimeFilterPostcodes> time_filter_postcodes(request_time_filter_postcodes)



### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['ApplicationId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApplicationId'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
request_time_filter_postcodes = OpenapiClient::RequestTimeFilterPostcodes.new # RequestTimeFilterPostcodes | 

begin
  
  result = api_instance.time_filter_postcodes(request_time_filter_postcodes)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->time_filter_postcodes: #{e}"
end
```

#### Using the time_filter_postcodes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseTimeFilterPostcodes>, Integer, Hash)> time_filter_postcodes_with_http_info(request_time_filter_postcodes)

```ruby
begin
  
  data, status_code, headers = api_instance.time_filter_postcodes_with_http_info(request_time_filter_postcodes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseTimeFilterPostcodes>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->time_filter_postcodes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_time_filter_postcodes** | [**RequestTimeFilterPostcodes**](RequestTimeFilterPostcodes.md) |  |  |

### Return type

[**ResponseTimeFilterPostcodes**](ResponseTimeFilterPostcodes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## time_map

> <ResponseTimeMap> time_map(request_time_map)



### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['ApplicationId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApplicationId'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
request_time_map = OpenapiClient::RequestTimeMap.new # RequestTimeMap | 

begin
  
  result = api_instance.time_map(request_time_map)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->time_map: #{e}"
end
```

#### Using the time_map_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseTimeMap>, Integer, Hash)> time_map_with_http_info(request_time_map)

```ruby
begin
  
  data, status_code, headers = api_instance.time_map_with_http_info(request_time_map)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseTimeMap>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->time_map_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_time_map** | [**RequestTimeMap**](RequestTimeMap.md) |  |  |

### Return type

[**ResponseTimeMap**](ResponseTimeMap.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/vnd.wkt+json, application/vnd.wkt-no-holes+json, application/vnd.bounding-boxes+json

