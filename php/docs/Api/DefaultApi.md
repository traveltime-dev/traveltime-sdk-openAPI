# OpenAPI\Client\DefaultApi

All URIs are relative to https://api.traveltimeapp.com.

Method | HTTP request | Description
------------- | ------------- | -------------
[**geocodingReverseSearch()**](DefaultApi.md#geocodingReverseSearch) | **GET** /v4/geocoding/reverse | 
[**geocodingSearch()**](DefaultApi.md#geocodingSearch) | **GET** /v4/geocoding/search | 
[**mapInfo()**](DefaultApi.md#mapInfo) | **GET** /v4/map-info | 
[**routes()**](DefaultApi.md#routes) | **POST** /v4/routes | 
[**supportedLocations()**](DefaultApi.md#supportedLocations) | **POST** /v4/supported-locations | 
[**timeFilter()**](DefaultApi.md#timeFilter) | **POST** /v4/time-filter | 
[**timeFilterFast()**](DefaultApi.md#timeFilterFast) | **POST** /v4/time-filter/fast | 
[**timeFilterPostcodeDistricts()**](DefaultApi.md#timeFilterPostcodeDistricts) | **POST** /v4/time-filter/postcode-districts | 
[**timeFilterPostcodeSectors()**](DefaultApi.md#timeFilterPostcodeSectors) | **POST** /v4/time-filter/postcode-sectors | 
[**timeFilterPostcodes()**](DefaultApi.md#timeFilterPostcodes) | **POST** /v4/time-filter/postcodes | 
[**timeMap()**](DefaultApi.md#timeMap) | **POST** /v4/time-map | 


## `geocodingReverseSearch()`

```php
geocodingReverseSearch($lat, $lng, $within_country): \OpenAPI\Client\Model\ResponseGeocoding
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Api-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Api-Key', 'Bearer');

// Configure API key authorization: ApplicationId
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Application-Id', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Application-Id', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$lat = 3.4; // double
$lng = 3.4; // double
$within_country = 'within_country_example'; // string

try {
    $result = $apiInstance->geocodingReverseSearch($lat, $lng, $within_country);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->geocodingReverseSearch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **double**|  |
 **lng** | **double**|  |
 **within_country** | **string**|  | [optional]

### Return type

[**\OpenAPI\Client\Model\ResponseGeocoding**](../Model/ResponseGeocoding.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `geocodingSearch()`

```php
geocodingSearch($query, $focus_lat, $focus_lng, $within_country): \OpenAPI\Client\Model\ResponseGeocoding
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Api-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Api-Key', 'Bearer');

// Configure API key authorization: ApplicationId
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Application-Id', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Application-Id', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = 'query_example'; // string
$focus_lat = 3.4; // double
$focus_lng = 3.4; // double
$within_country = 'within_country_example'; // string

try {
    $result = $apiInstance->geocodingSearch($query, $focus_lat, $focus_lng, $within_country);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->geocodingSearch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**|  |
 **focus_lat** | **double**|  | [optional]
 **focus_lng** | **double**|  | [optional]
 **within_country** | **string**|  | [optional]

### Return type

[**\OpenAPI\Client\Model\ResponseGeocoding**](../Model/ResponseGeocoding.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `mapInfo()`

```php
mapInfo(): \OpenAPI\Client\Model\ResponseMapInfo
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Api-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Api-Key', 'Bearer');

// Configure API key authorization: ApplicationId
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Application-Id', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Application-Id', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->mapInfo();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->mapInfo: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\ResponseMapInfo**](../Model/ResponseMapInfo.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `routes()`

```php
routes($request_routes): \OpenAPI\Client\Model\ResponseRoutes
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Api-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Api-Key', 'Bearer');

// Configure API key authorization: ApplicationId
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Application-Id', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Application-Id', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$request_routes = new \OpenAPI\Client\Model\RequestRoutes(); // \OpenAPI\Client\Model\RequestRoutes

try {
    $result = $apiInstance->routes($request_routes);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->routes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_routes** | [**\OpenAPI\Client\Model\RequestRoutes**](../Model/RequestRoutes.md)|  |

### Return type

[**\OpenAPI\Client\Model\ResponseRoutes**](../Model/ResponseRoutes.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `supportedLocations()`

```php
supportedLocations($request_supported_locations): \OpenAPI\Client\Model\ResponseSupportedLocations
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Api-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Api-Key', 'Bearer');

// Configure API key authorization: ApplicationId
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Application-Id', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Application-Id', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$request_supported_locations = new \OpenAPI\Client\Model\RequestSupportedLocations(); // \OpenAPI\Client\Model\RequestSupportedLocations

try {
    $result = $apiInstance->supportedLocations($request_supported_locations);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->supportedLocations: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_supported_locations** | [**\OpenAPI\Client\Model\RequestSupportedLocations**](../Model/RequestSupportedLocations.md)|  |

### Return type

[**\OpenAPI\Client\Model\ResponseSupportedLocations**](../Model/ResponseSupportedLocations.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `timeFilter()`

```php
timeFilter($request_time_filter): \OpenAPI\Client\Model\ResponseTimeFilter
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Api-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Api-Key', 'Bearer');

// Configure API key authorization: ApplicationId
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Application-Id', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Application-Id', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$request_time_filter = new \OpenAPI\Client\Model\RequestTimeFilter(); // \OpenAPI\Client\Model\RequestTimeFilter

try {
    $result = $apiInstance->timeFilter($request_time_filter);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->timeFilter: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter** | [**\OpenAPI\Client\Model\RequestTimeFilter**](../Model/RequestTimeFilter.md)|  |

### Return type

[**\OpenAPI\Client\Model\ResponseTimeFilter**](../Model/ResponseTimeFilter.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `timeFilterFast()`

```php
timeFilterFast($request_time_filter_fast): \OpenAPI\Client\Model\ResponseTimeFilterFast
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Api-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Api-Key', 'Bearer');

// Configure API key authorization: ApplicationId
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Application-Id', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Application-Id', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$request_time_filter_fast = new \OpenAPI\Client\Model\RequestTimeFilterFast(); // \OpenAPI\Client\Model\RequestTimeFilterFast

try {
    $result = $apiInstance->timeFilterFast($request_time_filter_fast);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->timeFilterFast: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter_fast** | [**\OpenAPI\Client\Model\RequestTimeFilterFast**](../Model/RequestTimeFilterFast.md)|  |

### Return type

[**\OpenAPI\Client\Model\ResponseTimeFilterFast**](../Model/ResponseTimeFilterFast.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `timeFilterPostcodeDistricts()`

```php
timeFilterPostcodeDistricts($request_time_filter_postcode_districts): \OpenAPI\Client\Model\ResponseTimeFilterPostcodeDistricts
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Api-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Api-Key', 'Bearer');

// Configure API key authorization: ApplicationId
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Application-Id', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Application-Id', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$request_time_filter_postcode_districts = new \OpenAPI\Client\Model\RequestTimeFilterPostcodeDistricts(); // \OpenAPI\Client\Model\RequestTimeFilterPostcodeDistricts

try {
    $result = $apiInstance->timeFilterPostcodeDistricts($request_time_filter_postcode_districts);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->timeFilterPostcodeDistricts: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter_postcode_districts** | [**\OpenAPI\Client\Model\RequestTimeFilterPostcodeDistricts**](../Model/RequestTimeFilterPostcodeDistricts.md)|  |

### Return type

[**\OpenAPI\Client\Model\ResponseTimeFilterPostcodeDistricts**](../Model/ResponseTimeFilterPostcodeDistricts.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `timeFilterPostcodeSectors()`

```php
timeFilterPostcodeSectors($request_time_filter_postcode_sectors): \OpenAPI\Client\Model\ResponseTimeFilterPostcodeSectors
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Api-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Api-Key', 'Bearer');

// Configure API key authorization: ApplicationId
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Application-Id', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Application-Id', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$request_time_filter_postcode_sectors = new \OpenAPI\Client\Model\RequestTimeFilterPostcodeSectors(); // \OpenAPI\Client\Model\RequestTimeFilterPostcodeSectors

try {
    $result = $apiInstance->timeFilterPostcodeSectors($request_time_filter_postcode_sectors);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->timeFilterPostcodeSectors: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter_postcode_sectors** | [**\OpenAPI\Client\Model\RequestTimeFilterPostcodeSectors**](../Model/RequestTimeFilterPostcodeSectors.md)|  |

### Return type

[**\OpenAPI\Client\Model\ResponseTimeFilterPostcodeSectors**](../Model/ResponseTimeFilterPostcodeSectors.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `timeFilterPostcodes()`

```php
timeFilterPostcodes($request_time_filter_postcodes): \OpenAPI\Client\Model\ResponseTimeFilterPostcodes
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Api-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Api-Key', 'Bearer');

// Configure API key authorization: ApplicationId
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Application-Id', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Application-Id', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$request_time_filter_postcodes = new \OpenAPI\Client\Model\RequestTimeFilterPostcodes(); // \OpenAPI\Client\Model\RequestTimeFilterPostcodes

try {
    $result = $apiInstance->timeFilterPostcodes($request_time_filter_postcodes);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->timeFilterPostcodes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_filter_postcodes** | [**\OpenAPI\Client\Model\RequestTimeFilterPostcodes**](../Model/RequestTimeFilterPostcodes.md)|  |

### Return type

[**\OpenAPI\Client\Model\ResponseTimeFilterPostcodes**](../Model/ResponseTimeFilterPostcodes.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `timeMap()`

```php
timeMap($request_time_map): \OpenAPI\Client\Model\ResponseTimeMap
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Api-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Api-Key', 'Bearer');

// Configure API key authorization: ApplicationId
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Application-Id', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Application-Id', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$request_time_map = new \OpenAPI\Client\Model\RequestTimeMap(); // \OpenAPI\Client\Model\RequestTimeMap

try {
    $result = $apiInstance->timeMap($request_time_map);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->timeMap: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_time_map** | [**\OpenAPI\Client\Model\RequestTimeMap**](../Model/RequestTimeMap.md)|  |

### Return type

[**\OpenAPI\Client\Model\ResponseTimeMap**](../Model/ResponseTimeMap.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`, `application/vnd.wkt+json`, `application/vnd.wkt-no-holes+json`, `application/vnd.bounding-boxes+json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
