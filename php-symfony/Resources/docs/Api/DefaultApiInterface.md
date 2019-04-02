# OpenAPI\Server\Api\DefaultApiInterface

All URIs are relative to *https://api.traveltimeapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geocodingReverseSearch**](DefaultApiInterface.md#geocodingReverseSearch) | **GET** /v4/geocoding/reverse | 
[**geocodingSearch**](DefaultApiInterface.md#geocodingSearch) | **GET** /v4/geocoding/search | 
[**mapInfo**](DefaultApiInterface.md#mapInfo) | **GET** /v4/map-info | 
[**routes**](DefaultApiInterface.md#routes) | **POST** /v4/routes | 
[**supportedLocations**](DefaultApiInterface.md#supportedLocations) | **POST** /v4/supported-locations | 
[**timeFilter**](DefaultApiInterface.md#timeFilter) | **POST** /v4/time-filter | 
[**timeFilterFast**](DefaultApiInterface.md#timeFilterFast) | **POST** /v4/time-filter/fast | 
[**timeFilterPostcodeDistricts**](DefaultApiInterface.md#timeFilterPostcodeDistricts) | **POST** /v4/time-filter/postcode-districts | 
[**timeFilterPostcodeSectors**](DefaultApiInterface.md#timeFilterPostcodeSectors) | **POST** /v4/time-filter/postcode-sectors | 
[**timeFilterPostcodes**](DefaultApiInterface.md#timeFilterPostcodes) | **POST** /v4/time-filter/postcodes | 
[**timeMap**](DefaultApiInterface.md#timeMap) | **POST** /v4/time-map | 


## Service Declaration
```yaml
# src/Acme/MyBundle/Resources/services.yml
services:
    # ...
    acme.my_bundle.api.default:
        class: Acme\MyBundle\Api\DefaultApi
        tags:
            - { name: "open_apiserver.api", api: "default" }
    # ...
```

## **geocodingReverseSearch**
> OpenAPI\Server\Model\ResponseGeocoding geocodingReverseSearch($focusLat, $focusLng, $withinCountry)



### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/DefaultApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\DefaultApiInterface;

class DefaultApi implements DefaultApiInterface
{

    /**
     * Configure API key authorization: ApiKey
     */
    public function setApiKey($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    /**
     * Configure API key authorization: ApplicationId
     */
    public function setApplicationId($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    // ...

    /**
     * Implementation of DefaultApiInterface#geocodingReverseSearch
     */
    public function geocodingReverseSearch($focusLat, $focusLng, $withinCountry = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **focusLat** | **double**|  |
 **focusLng** | **double**|  |
 **withinCountry** | **string**|  | [optional]

### Return type

[**OpenAPI\Server\Model\ResponseGeocoding**](../Model/ResponseGeocoding.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **geocodingSearch**
> OpenAPI\Server\Model\ResponseGeocoding geocodingSearch($query, $withinCountry, $focusLat, $focusLng)



### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/DefaultApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\DefaultApiInterface;

class DefaultApi implements DefaultApiInterface
{

    /**
     * Configure API key authorization: ApiKey
     */
    public function setApiKey($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    /**
     * Configure API key authorization: ApplicationId
     */
    public function setApplicationId($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    // ...

    /**
     * Implementation of DefaultApiInterface#geocodingSearch
     */
    public function geocodingSearch($query, $withinCountry = null, $focusLat = null, $focusLng = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**|  |
 **withinCountry** | **string**|  | [optional]
 **focusLat** | **double**|  | [optional]
 **focusLng** | **double**|  | [optional]

### Return type

[**OpenAPI\Server\Model\ResponseGeocoding**](../Model/ResponseGeocoding.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **mapInfo**
> OpenAPI\Server\Model\ResponseMapInfo mapInfo()



### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/DefaultApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\DefaultApiInterface;

class DefaultApi implements DefaultApiInterface
{

    /**
     * Configure API key authorization: ApiKey
     */
    public function setApiKey($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    /**
     * Configure API key authorization: ApplicationId
     */
    public function setApplicationId($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    // ...

    /**
     * Implementation of DefaultApiInterface#mapInfo
     */
    public function mapInfo()
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OpenAPI\Server\Model\ResponseMapInfo**](../Model/ResponseMapInfo.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **routes**
> OpenAPI\Server\Model\ResponseRoutes routes($requestRoutes)



### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/DefaultApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\DefaultApiInterface;

class DefaultApi implements DefaultApiInterface
{

    /**
     * Configure API key authorization: ApiKey
     */
    public function setApiKey($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    /**
     * Configure API key authorization: ApplicationId
     */
    public function setApplicationId($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    // ...

    /**
     * Implementation of DefaultApiInterface#routes
     */
    public function routes(RequestRoutes $requestRoutes)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestRoutes** | [**OpenAPI\Server\Model\RequestRoutes**](../Model/RequestRoutes.md)|  |

### Return type

[**OpenAPI\Server\Model\ResponseRoutes**](../Model/ResponseRoutes.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **supportedLocations**
> OpenAPI\Server\Model\ResponseSupportedLocations supportedLocations($requestSupportedLocations)



### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/DefaultApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\DefaultApiInterface;

class DefaultApi implements DefaultApiInterface
{

    /**
     * Configure API key authorization: ApiKey
     */
    public function setApiKey($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    /**
     * Configure API key authorization: ApplicationId
     */
    public function setApplicationId($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    // ...

    /**
     * Implementation of DefaultApiInterface#supportedLocations
     */
    public function supportedLocations(RequestSupportedLocations $requestSupportedLocations)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestSupportedLocations** | [**OpenAPI\Server\Model\RequestSupportedLocations**](../Model/RequestSupportedLocations.md)|  |

### Return type

[**OpenAPI\Server\Model\ResponseSupportedLocations**](../Model/ResponseSupportedLocations.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **timeFilter**
> OpenAPI\Server\Model\ResponseTimeFilter timeFilter($requestTimeFilter)



### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/DefaultApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\DefaultApiInterface;

class DefaultApi implements DefaultApiInterface
{

    /**
     * Configure API key authorization: ApiKey
     */
    public function setApiKey($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    /**
     * Configure API key authorization: ApplicationId
     */
    public function setApplicationId($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    // ...

    /**
     * Implementation of DefaultApiInterface#timeFilter
     */
    public function timeFilter(RequestTimeFilter $requestTimeFilter)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilter** | [**OpenAPI\Server\Model\RequestTimeFilter**](../Model/RequestTimeFilter.md)|  |

### Return type

[**OpenAPI\Server\Model\ResponseTimeFilter**](../Model/ResponseTimeFilter.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **timeFilterFast**
> OpenAPI\Server\Model\ResponseTimeFilterFast timeFilterFast($requestTimeFilterFast)



### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/DefaultApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\DefaultApiInterface;

class DefaultApi implements DefaultApiInterface
{

    /**
     * Configure API key authorization: ApiKey
     */
    public function setApiKey($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    /**
     * Configure API key authorization: ApplicationId
     */
    public function setApplicationId($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    // ...

    /**
     * Implementation of DefaultApiInterface#timeFilterFast
     */
    public function timeFilterFast(RequestTimeFilterFast $requestTimeFilterFast)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterFast** | [**OpenAPI\Server\Model\RequestTimeFilterFast**](../Model/RequestTimeFilterFast.md)|  |

### Return type

[**OpenAPI\Server\Model\ResponseTimeFilterFast**](../Model/ResponseTimeFilterFast.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **timeFilterPostcodeDistricts**
> OpenAPI\Server\Model\ResponseTimeFilterPostcodeDistricts timeFilterPostcodeDistricts($requestTimeFilterPostcodeDistricts)



### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/DefaultApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\DefaultApiInterface;

class DefaultApi implements DefaultApiInterface
{

    /**
     * Configure API key authorization: ApiKey
     */
    public function setApiKey($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    /**
     * Configure API key authorization: ApplicationId
     */
    public function setApplicationId($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    // ...

    /**
     * Implementation of DefaultApiInterface#timeFilterPostcodeDistricts
     */
    public function timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts $requestTimeFilterPostcodeDistricts)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodeDistricts** | [**OpenAPI\Server\Model\RequestTimeFilterPostcodeDistricts**](../Model/RequestTimeFilterPostcodeDistricts.md)|  |

### Return type

[**OpenAPI\Server\Model\ResponseTimeFilterPostcodeDistricts**](../Model/ResponseTimeFilterPostcodeDistricts.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **timeFilterPostcodeSectors**
> OpenAPI\Server\Model\ResponseTimeFilterPostcodeSectors timeFilterPostcodeSectors($requestTimeFilterPostcodeSectors)



### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/DefaultApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\DefaultApiInterface;

class DefaultApi implements DefaultApiInterface
{

    /**
     * Configure API key authorization: ApiKey
     */
    public function setApiKey($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    /**
     * Configure API key authorization: ApplicationId
     */
    public function setApplicationId($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    // ...

    /**
     * Implementation of DefaultApiInterface#timeFilterPostcodeSectors
     */
    public function timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors $requestTimeFilterPostcodeSectors)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodeSectors** | [**OpenAPI\Server\Model\RequestTimeFilterPostcodeSectors**](../Model/RequestTimeFilterPostcodeSectors.md)|  |

### Return type

[**OpenAPI\Server\Model\ResponseTimeFilterPostcodeSectors**](../Model/ResponseTimeFilterPostcodeSectors.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **timeFilterPostcodes**
> OpenAPI\Server\Model\ResponseTimeFilterPostcodes timeFilterPostcodes($requestTimeFilterPostcodes)



### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/DefaultApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\DefaultApiInterface;

class DefaultApi implements DefaultApiInterface
{

    /**
     * Configure API key authorization: ApiKey
     */
    public function setApiKey($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    /**
     * Configure API key authorization: ApplicationId
     */
    public function setApplicationId($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    // ...

    /**
     * Implementation of DefaultApiInterface#timeFilterPostcodes
     */
    public function timeFilterPostcodes(RequestTimeFilterPostcodes $requestTimeFilterPostcodes)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodes** | [**OpenAPI\Server\Model\RequestTimeFilterPostcodes**](../Model/RequestTimeFilterPostcodes.md)|  |

### Return type

[**OpenAPI\Server\Model\ResponseTimeFilterPostcodes**](../Model/ResponseTimeFilterPostcodes.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **timeMap**
> OpenAPI\Server\Model\ResponseTimeMap timeMap($requestTimeMap)



### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/DefaultApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\DefaultApiInterface;

class DefaultApi implements DefaultApiInterface
{

    /**
     * Configure API key authorization: ApiKey
     */
    public function setApiKey($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    /**
     * Configure API key authorization: ApplicationId
     */
    public function setApplicationId($apiKey)
    {
        // Retrieve logged in user from $apiKey ...
    }

    // ...

    /**
     * Implementation of DefaultApiInterface#timeMap
     */
    public function timeMap(RequestTimeMap $requestTimeMap)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeMap** | [**OpenAPI\Server\Model\RequestTimeMap**](../Model/RequestTimeMap.md)|  |

### Return type

[**OpenAPI\Server\Model\ResponseTimeMap**](../Model/ResponseTimeMap.md)

### Authorization

[ApiKey](../../README.md#ApiKey), [ApplicationId](../../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/vnd.wkt+json, application/vnd.wkt-no-holes+json, application/vnd.bounding-boxes+json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

