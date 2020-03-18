# Org.OpenAPITools.Api.DefaultApi

All URIs are relative to *https://api.traveltimeapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GeocodingReverseSearch**](DefaultApi.md#geocodingreversesearch) | **GET** /v4/geocoding/reverse | 
[**GeocodingSearch**](DefaultApi.md#geocodingsearch) | **GET** /v4/geocoding/search | 
[**MapInfo**](DefaultApi.md#mapinfo) | **GET** /v4/map-info | 
[**Routes**](DefaultApi.md#routes) | **POST** /v4/routes | 
[**SupportedLocations**](DefaultApi.md#supportedlocations) | **POST** /v4/supported-locations | 
[**TimeFilter**](DefaultApi.md#timefilter) | **POST** /v4/time-filter | 
[**TimeFilterFast**](DefaultApi.md#timefilterfast) | **POST** /v4/time-filter/fast | 
[**TimeFilterPostcodeDistricts**](DefaultApi.md#timefilterpostcodedistricts) | **POST** /v4/time-filter/postcode-districts | 
[**TimeFilterPostcodeSectors**](DefaultApi.md#timefilterpostcodesectors) | **POST** /v4/time-filter/postcode-sectors | 
[**TimeFilterPostcodes**](DefaultApi.md#timefilterpostcodes) | **POST** /v4/time-filter/postcodes | 
[**TimeMap**](DefaultApi.md#timemap) | **POST** /v4/time-map | 


<a name="geocodingreversesearch"></a>
# **GeocodingReverseSearch**
> ResponseGeocoding GeocodingReverseSearch (double lat, double lng, string withinCountry = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GeocodingReverseSearchExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.traveltimeapp.com";
            // Configure API key authorization: ApiKey
            config.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            config.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi(config);
            var lat = 1.2D;  // double | 
            var lng = 1.2D;  // double | 
            var withinCountry = withinCountry_example;  // string |  (optional) 

            try
            {
                ResponseGeocoding result = apiInstance.GeocodingReverseSearch(lat, lng, withinCountry);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.GeocodingReverseSearch: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **double**|  | 
 **lng** | **double**|  | 
 **withinCountry** | **string**|  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Match a query string to geographic coordinates. [Docs link](http://docs.traveltimeplatform.com/reference/geocoding-search/) |  -  |
| **0** | The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="geocodingsearch"></a>
# **GeocodingSearch**
> ResponseGeocoding GeocodingSearch (string query, double? focusLat = null, double? focusLng = null, string withinCountry = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GeocodingSearchExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.traveltimeapp.com";
            // Configure API key authorization: ApiKey
            config.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            config.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi(config);
            var query = query_example;  // string | 
            var focusLat = 1.2D;  // double? |  (optional) 
            var focusLng = 1.2D;  // double? |  (optional) 
            var withinCountry = withinCountry_example;  // string |  (optional) 

            try
            {
                ResponseGeocoding result = apiInstance.GeocodingSearch(query, focusLat, focusLng, withinCountry);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.GeocodingSearch: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**|  | 
 **focusLat** | **double?**|  | [optional] 
 **focusLng** | **double?**|  | [optional] 
 **withinCountry** | **string**|  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Match a query string to geographic coordinates. [Docs link](http://docs.traveltimeplatform.com/reference/geocoding-search/) |  -  |
| **0** | The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="mapinfo"></a>
# **MapInfo**
> ResponseMapInfo MapInfo ()



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class MapInfoExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.traveltimeapp.com";
            // Configure API key authorization: ApiKey
            config.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            config.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi(config);

            try
            {
                ResponseMapInfo result = apiInstance.MapInfo();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.MapInfo: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns information about currently supported countries. [Docs link](http://docs.traveltimeplatform.com/reference/map-info/) |  -  |
| **0** | The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="routes"></a>
# **Routes**
> ResponseRoutes Routes (RequestRoutes requestRoutes)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class RoutesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.traveltimeapp.com";
            // Configure API key authorization: ApiKey
            config.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            config.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi(config);
            var requestRoutes = new RequestRoutes(); // RequestRoutes | 

            try
            {
                ResponseRoutes result = apiInstance.Routes(requestRoutes);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.Routes: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestRoutes** | [**RequestRoutes**](RequestRoutes.md)|  | 

### Return type

[**ResponseRoutes**](ResponseRoutes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns routing information between source and destinations. [Docs link](http://docs.traveltimeplatform.com/reference/routes/) |  -  |
| **0** | The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="supportedlocations"></a>
# **SupportedLocations**
> ResponseSupportedLocations SupportedLocations (RequestSupportedLocations requestSupportedLocations)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SupportedLocationsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.traveltimeapp.com";
            // Configure API key authorization: ApiKey
            config.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            config.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi(config);
            var requestSupportedLocations = new RequestSupportedLocations(); // RequestSupportedLocations | 

            try
            {
                ResponseSupportedLocations result = apiInstance.SupportedLocations(requestSupportedLocations);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.SupportedLocations: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestSupportedLocations** | [**RequestSupportedLocations**](RequestSupportedLocations.md)|  | 

### Return type

[**ResponseSupportedLocations**](ResponseSupportedLocations.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Find out what points are supported by our api. [Docs link](http://docs.traveltimeplatform.com/reference/supported-locations/) |  -  |
| **0** | The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="timefilter"></a>
# **TimeFilter**
> ResponseTimeFilter TimeFilter (RequestTimeFilter requestTimeFilter)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class TimeFilterExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.traveltimeapp.com";
            // Configure API key authorization: ApiKey
            config.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            config.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi(config);
            var requestTimeFilter = new RequestTimeFilter(); // RequestTimeFilter | 

            try
            {
                ResponseTimeFilter result = apiInstance.TimeFilter(requestTimeFilter);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.TimeFilter: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilter** | [**RequestTimeFilter**](RequestTimeFilter.md)|  | 

### Return type

[**ResponseTimeFilter**](ResponseTimeFilter.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Given origin and destination points filter out points that cannot be reached within specified time limit. [Docs link](http://docs.traveltimeplatform.com/reference/time-filter) |  -  |
| **0** | The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="timefilterfast"></a>
# **TimeFilterFast**
> ResponseTimeFilterFast TimeFilterFast (RequestTimeFilterFast requestTimeFilterFast)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class TimeFilterFastExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.traveltimeapp.com";
            // Configure API key authorization: ApiKey
            config.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            config.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi(config);
            var requestTimeFilterFast = new RequestTimeFilterFast(); // RequestTimeFilterFast | 

            try
            {
                ResponseTimeFilterFast result = apiInstance.TimeFilterFast(requestTimeFilterFast);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.TimeFilterFast: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterFast** | [**RequestTimeFilterFast**](RequestTimeFilterFast.md)|  | 

### Return type

[**ResponseTimeFilterFast**](ResponseTimeFilterFast.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A very fast version of Time Filter. [Docs link](http://docs.traveltimeplatform.com/reference/time-filter-fast/) |  -  |
| **0** | The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="timefilterpostcodedistricts"></a>
# **TimeFilterPostcodeDistricts**
> ResponseTimeFilterPostcodeDistricts TimeFilterPostcodeDistricts (RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class TimeFilterPostcodeDistrictsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.traveltimeapp.com";
            // Configure API key authorization: ApiKey
            config.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            config.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi(config);
            var requestTimeFilterPostcodeDistricts = new RequestTimeFilterPostcodeDistricts(); // RequestTimeFilterPostcodeDistricts | 

            try
            {
                ResponseTimeFilterPostcodeDistricts result = apiInstance.TimeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.TimeFilterPostcodeDistricts: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodeDistricts** | [**RequestTimeFilterPostcodeDistricts**](RequestTimeFilterPostcodeDistricts.md)|  | 

### Return type

[**ResponseTimeFilterPostcodeDistricts**](ResponseTimeFilterPostcodeDistricts.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Find districts that have a certain coverage from origin and get statistics about postcodes within such districts. [Docs link](http://docs.traveltimeplatform.com/reference/postcode-district-filter/) |  -  |
| **0** | The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="timefilterpostcodesectors"></a>
# **TimeFilterPostcodeSectors**
> ResponseTimeFilterPostcodeSectors TimeFilterPostcodeSectors (RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class TimeFilterPostcodeSectorsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.traveltimeapp.com";
            // Configure API key authorization: ApiKey
            config.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            config.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi(config);
            var requestTimeFilterPostcodeSectors = new RequestTimeFilterPostcodeSectors(); // RequestTimeFilterPostcodeSectors | 

            try
            {
                ResponseTimeFilterPostcodeSectors result = apiInstance.TimeFilterPostcodeSectors(requestTimeFilterPostcodeSectors);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.TimeFilterPostcodeSectors: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodeSectors** | [**RequestTimeFilterPostcodeSectors**](RequestTimeFilterPostcodeSectors.md)|  | 

### Return type

[**ResponseTimeFilterPostcodeSectors**](ResponseTimeFilterPostcodeSectors.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Find sectors that have a certain coverage from origin and get statistics about postcodes within such sectors. [Docs link](http://docs.traveltimeplatform.com/reference/postcode-sector-filter/) |  -  |
| **0** | The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="timefilterpostcodes"></a>
# **TimeFilterPostcodes**
> ResponseTimeFilterPostcodes TimeFilterPostcodes (RequestTimeFilterPostcodes requestTimeFilterPostcodes)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class TimeFilterPostcodesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.traveltimeapp.com";
            // Configure API key authorization: ApiKey
            config.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            config.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi(config);
            var requestTimeFilterPostcodes = new RequestTimeFilterPostcodes(); // RequestTimeFilterPostcodes | 

            try
            {
                ResponseTimeFilterPostcodes result = apiInstance.TimeFilterPostcodes(requestTimeFilterPostcodes);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.TimeFilterPostcodes: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodes** | [**RequestTimeFilterPostcodes**](RequestTimeFilterPostcodes.md)|  | 

### Return type

[**ResponseTimeFilterPostcodes**](ResponseTimeFilterPostcodes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Find reachable postcodes from origin and get statistics about such postcodes. [Docs link](http://docs.traveltimeplatform.com/reference/postcode-search/) |  -  |
| **0** | The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="timemap"></a>
# **TimeMap**
> ResponseTimeMap TimeMap (RequestTimeMap requestTimeMap)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class TimeMapExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.traveltimeapp.com";
            // Configure API key authorization: ApiKey
            config.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            config.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi(config);
            var requestTimeMap = new RequestTimeMap(); // RequestTimeMap | 

            try
            {
                ResponseTimeMap result = apiInstance.TimeMap(requestTimeMap);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.TimeMap: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeMap** | [**RequestTimeMap**](RequestTimeMap.md)|  | 

### Return type

[**ResponseTimeMap**](ResponseTimeMap.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/vnd.wkt+json, application/vnd.wkt-no-holes+json, application/vnd.bounding-boxes+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Given origin coordinates, find shapes of zones reachable within corresponding travel time. [Docs link](http://docs.traveltimeplatform.com/reference/time-map/) |  -  |
| **0** | The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

