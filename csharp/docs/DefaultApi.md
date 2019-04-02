# traveltimeplatform.Api.DefaultApi

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
> ResponseGeocoding GeocodingReverseSearch (double? focusLat, double? focusLng, string withinCountry = null)



### Example
```csharp
using System;
using System.Diagnostics;
using traveltimeplatform.Api;
using traveltimeplatform.Client;
using traveltimeplatform.Model;

namespace Example
{
    public class GeocodingReverseSearchExample
    {
        public void main()
        {
            // Configure API key authorization: ApiKey
            Configuration.Default.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            Configuration.Default.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi();
            var focusLat = 1.2D;  // double? | 
            var focusLng = 1.2D;  // double? | 
            var withinCountry = withinCountry_example;  // string |  (optional) 

            try
            {
                ResponseGeocoding result = apiInstance.GeocodingReverseSearch(focusLat, focusLng, withinCountry);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GeocodingReverseSearch: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **focusLat** | **double?**|  | 
 **focusLng** | **double?**|  | 
 **withinCountry** | **string**|  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="geocodingsearch"></a>
# **GeocodingSearch**
> ResponseGeocoding GeocodingSearch (string query, string withinCountry = null, double? focusLat = null, double? focusLng = null)



### Example
```csharp
using System;
using System.Diagnostics;
using traveltimeplatform.Api;
using traveltimeplatform.Client;
using traveltimeplatform.Model;

namespace Example
{
    public class GeocodingSearchExample
    {
        public void main()
        {
            // Configure API key authorization: ApiKey
            Configuration.Default.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            Configuration.Default.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi();
            var query = query_example;  // string | 
            var withinCountry = withinCountry_example;  // string |  (optional) 
            var focusLat = 1.2D;  // double? |  (optional) 
            var focusLng = 1.2D;  // double? |  (optional) 

            try
            {
                ResponseGeocoding result = apiInstance.GeocodingSearch(query, withinCountry, focusLat, focusLng);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GeocodingSearch: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**|  | 
 **withinCountry** | **string**|  | [optional] 
 **focusLat** | **double?**|  | [optional] 
 **focusLng** | **double?**|  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="mapinfo"></a>
# **MapInfo**
> ResponseMapInfo MapInfo ()



### Example
```csharp
using System;
using System.Diagnostics;
using traveltimeplatform.Api;
using traveltimeplatform.Client;
using traveltimeplatform.Model;

namespace Example
{
    public class MapInfoExample
    {
        public void main()
        {
            // Configure API key authorization: ApiKey
            Configuration.Default.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            Configuration.Default.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi();

            try
            {
                ResponseMapInfo result = apiInstance.MapInfo();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.MapInfo: " + e.Message );
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="routes"></a>
# **Routes**
> ResponseRoutes Routes (RequestRoutes requestRoutes)



### Example
```csharp
using System;
using System.Diagnostics;
using traveltimeplatform.Api;
using traveltimeplatform.Client;
using traveltimeplatform.Model;

namespace Example
{
    public class RoutesExample
    {
        public void main()
        {
            // Configure API key authorization: ApiKey
            Configuration.Default.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            Configuration.Default.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi();
            var requestRoutes = new RequestRoutes(); // RequestRoutes | 

            try
            {
                ResponseRoutes result = apiInstance.Routes(requestRoutes);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.Routes: " + e.Message );
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="supportedlocations"></a>
# **SupportedLocations**
> ResponseSupportedLocations SupportedLocations (RequestSupportedLocations requestSupportedLocations)



### Example
```csharp
using System;
using System.Diagnostics;
using traveltimeplatform.Api;
using traveltimeplatform.Client;
using traveltimeplatform.Model;

namespace Example
{
    public class SupportedLocationsExample
    {
        public void main()
        {
            // Configure API key authorization: ApiKey
            Configuration.Default.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            Configuration.Default.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi();
            var requestSupportedLocations = new RequestSupportedLocations(); // RequestSupportedLocations | 

            try
            {
                ResponseSupportedLocations result = apiInstance.SupportedLocations(requestSupportedLocations);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.SupportedLocations: " + e.Message );
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="timefilter"></a>
# **TimeFilter**
> ResponseTimeFilter TimeFilter (RequestTimeFilter requestTimeFilter)



### Example
```csharp
using System;
using System.Diagnostics;
using traveltimeplatform.Api;
using traveltimeplatform.Client;
using traveltimeplatform.Model;

namespace Example
{
    public class TimeFilterExample
    {
        public void main()
        {
            // Configure API key authorization: ApiKey
            Configuration.Default.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            Configuration.Default.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi();
            var requestTimeFilter = new RequestTimeFilter(); // RequestTimeFilter | 

            try
            {
                ResponseTimeFilter result = apiInstance.TimeFilter(requestTimeFilter);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.TimeFilter: " + e.Message );
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="timefilterfast"></a>
# **TimeFilterFast**
> ResponseTimeFilterFast TimeFilterFast (RequestTimeFilterFast requestTimeFilterFast)



### Example
```csharp
using System;
using System.Diagnostics;
using traveltimeplatform.Api;
using traveltimeplatform.Client;
using traveltimeplatform.Model;

namespace Example
{
    public class TimeFilterFastExample
    {
        public void main()
        {
            // Configure API key authorization: ApiKey
            Configuration.Default.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            Configuration.Default.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi();
            var requestTimeFilterFast = new RequestTimeFilterFast(); // RequestTimeFilterFast | 

            try
            {
                ResponseTimeFilterFast result = apiInstance.TimeFilterFast(requestTimeFilterFast);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.TimeFilterFast: " + e.Message );
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="timefilterpostcodedistricts"></a>
# **TimeFilterPostcodeDistricts**
> ResponseTimeFilterPostcodeDistricts TimeFilterPostcodeDistricts (RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts)



### Example
```csharp
using System;
using System.Diagnostics;
using traveltimeplatform.Api;
using traveltimeplatform.Client;
using traveltimeplatform.Model;

namespace Example
{
    public class TimeFilterPostcodeDistrictsExample
    {
        public void main()
        {
            // Configure API key authorization: ApiKey
            Configuration.Default.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            Configuration.Default.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi();
            var requestTimeFilterPostcodeDistricts = new RequestTimeFilterPostcodeDistricts(); // RequestTimeFilterPostcodeDistricts | 

            try
            {
                ResponseTimeFilterPostcodeDistricts result = apiInstance.TimeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.TimeFilterPostcodeDistricts: " + e.Message );
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="timefilterpostcodesectors"></a>
# **TimeFilterPostcodeSectors**
> ResponseTimeFilterPostcodeSectors TimeFilterPostcodeSectors (RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors)



### Example
```csharp
using System;
using System.Diagnostics;
using traveltimeplatform.Api;
using traveltimeplatform.Client;
using traveltimeplatform.Model;

namespace Example
{
    public class TimeFilterPostcodeSectorsExample
    {
        public void main()
        {
            // Configure API key authorization: ApiKey
            Configuration.Default.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            Configuration.Default.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi();
            var requestTimeFilterPostcodeSectors = new RequestTimeFilterPostcodeSectors(); // RequestTimeFilterPostcodeSectors | 

            try
            {
                ResponseTimeFilterPostcodeSectors result = apiInstance.TimeFilterPostcodeSectors(requestTimeFilterPostcodeSectors);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.TimeFilterPostcodeSectors: " + e.Message );
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="timefilterpostcodes"></a>
# **TimeFilterPostcodes**
> ResponseTimeFilterPostcodes TimeFilterPostcodes (RequestTimeFilterPostcodes requestTimeFilterPostcodes)



### Example
```csharp
using System;
using System.Diagnostics;
using traveltimeplatform.Api;
using traveltimeplatform.Client;
using traveltimeplatform.Model;

namespace Example
{
    public class TimeFilterPostcodesExample
    {
        public void main()
        {
            // Configure API key authorization: ApiKey
            Configuration.Default.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            Configuration.Default.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi();
            var requestTimeFilterPostcodes = new RequestTimeFilterPostcodes(); // RequestTimeFilterPostcodes | 

            try
            {
                ResponseTimeFilterPostcodes result = apiInstance.TimeFilterPostcodes(requestTimeFilterPostcodes);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.TimeFilterPostcodes: " + e.Message );
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="timemap"></a>
# **TimeMap**
> ResponseTimeMap TimeMap (RequestTimeMap requestTimeMap)



### Example
```csharp
using System;
using System.Diagnostics;
using traveltimeplatform.Api;
using traveltimeplatform.Client;
using traveltimeplatform.Model;

namespace Example
{
    public class TimeMapExample
    {
        public void main()
        {
            // Configure API key authorization: ApiKey
            Configuration.Default.AddApiKey("X-Api-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Api-Key", "Bearer");
            // Configure API key authorization: ApplicationId
            Configuration.Default.AddApiKey("X-Application-Id", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("X-Application-Id", "Bearer");

            var apiInstance = new DefaultApi();
            var requestTimeMap = new RequestTimeMap(); // RequestTimeMap | 

            try
            {
                ResponseTimeMap result = apiInstance.TimeMap(requestTimeMap);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.TimeMap: " + e.Message );
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

