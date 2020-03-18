# OAIDefaultApi

All URIs are relative to *https://api.traveltimeapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geocodingReverseSearch**](OAIDefaultApi.md#geocodingreversesearch) | **GET** /v4/geocoding/reverse | 
[**geocodingSearch**](OAIDefaultApi.md#geocodingsearch) | **GET** /v4/geocoding/search | 
[**mapInfo**](OAIDefaultApi.md#mapinfo) | **GET** /v4/map-info | 
[**routes**](OAIDefaultApi.md#routes) | **POST** /v4/routes | 
[**supportedLocations**](OAIDefaultApi.md#supportedlocations) | **POST** /v4/supported-locations | 
[**timeFilter**](OAIDefaultApi.md#timefilter) | **POST** /v4/time-filter | 
[**timeFilterFast**](OAIDefaultApi.md#timefilterfast) | **POST** /v4/time-filter/fast | 
[**timeFilterPostcodeDistricts**](OAIDefaultApi.md#timefilterpostcodedistricts) | **POST** /v4/time-filter/postcode-districts | 
[**timeFilterPostcodeSectors**](OAIDefaultApi.md#timefilterpostcodesectors) | **POST** /v4/time-filter/postcode-sectors | 
[**timeFilterPostcodes**](OAIDefaultApi.md#timefilterpostcodes) | **POST** /v4/time-filter/postcodes | 
[**timeMap**](OAIDefaultApi.md#timemap) | **POST** /v4/time-map | 


# **geocodingReverseSearch**
```objc
-(NSURLSessionTask*) geocodingReverseSearchWithLat: (NSNumber*) lat
    lng: (NSNumber*) lng
    withinCountry: (NSString*) withinCountry
        completionHandler: (void (^)(OAIResponseGeocoding* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];

// Configure API key authorization: (authentication scheme: ApplicationId)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Application-Id"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Application-Id"];


NSNumber* lat = @56; // 
NSNumber* lng = @56; // 
NSString* withinCountry = @"withinCountry_example"; //  (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance geocodingReverseSearchWithLat:lat
              lng:lng
              withinCountry:withinCountry
          completionHandler: ^(OAIResponseGeocoding* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->geocodingReverseSearch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **NSNumber***|  | 
 **lng** | **NSNumber***|  | 
 **withinCountry** | **NSString***|  | [optional] 

### Return type

[**OAIResponseGeocoding***](OAIResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geocodingSearch**
```objc
-(NSURLSessionTask*) geocodingSearchWithQuery: (NSString*) query
    focusLat: (NSNumber*) focusLat
    focusLng: (NSNumber*) focusLng
    withinCountry: (NSString*) withinCountry
        completionHandler: (void (^)(OAIResponseGeocoding* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];

// Configure API key authorization: (authentication scheme: ApplicationId)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Application-Id"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Application-Id"];


NSString* query = @"query_example"; // 
NSNumber* focusLat = @56; //  (optional)
NSNumber* focusLng = @56; //  (optional)
NSString* withinCountry = @"withinCountry_example"; //  (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance geocodingSearchWithQuery:query
              focusLat:focusLat
              focusLng:focusLng
              withinCountry:withinCountry
          completionHandler: ^(OAIResponseGeocoding* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->geocodingSearch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***|  | 
 **focusLat** | **NSNumber***|  | [optional] 
 **focusLng** | **NSNumber***|  | [optional] 
 **withinCountry** | **NSString***|  | [optional] 

### Return type

[**OAIResponseGeocoding***](OAIResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mapInfo**
```objc
-(NSURLSessionTask*) mapInfoWithCompletionHandler: 
        (void (^)(OAIResponseMapInfo* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];

// Configure API key authorization: (authentication scheme: ApplicationId)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Application-Id"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Application-Id"];



OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance mapInfoWithCompletionHandler: 
          ^(OAIResponseMapInfo* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->mapInfo: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIResponseMapInfo***](OAIResponseMapInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **routes**
```objc
-(NSURLSessionTask*) routesWithRequestRoutes: (OAIRequestRoutes*) requestRoutes
        completionHandler: (void (^)(OAIResponseRoutes* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];

// Configure API key authorization: (authentication scheme: ApplicationId)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Application-Id"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Application-Id"];


OAIRequestRoutes* requestRoutes = [[OAIRequestRoutes alloc] init]; // 

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance routesWithRequestRoutes:requestRoutes
          completionHandler: ^(OAIResponseRoutes* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->routes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestRoutes** | [**OAIRequestRoutes***](OAIRequestRoutes.md)|  | 

### Return type

[**OAIResponseRoutes***](OAIResponseRoutes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supportedLocations**
```objc
-(NSURLSessionTask*) supportedLocationsWithRequestSupportedLocations: (OAIRequestSupportedLocations*) requestSupportedLocations
        completionHandler: (void (^)(OAIResponseSupportedLocations* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];

// Configure API key authorization: (authentication scheme: ApplicationId)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Application-Id"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Application-Id"];


OAIRequestSupportedLocations* requestSupportedLocations = [[OAIRequestSupportedLocations alloc] init]; // 

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance supportedLocationsWithRequestSupportedLocations:requestSupportedLocations
          completionHandler: ^(OAIResponseSupportedLocations* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->supportedLocations: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestSupportedLocations** | [**OAIRequestSupportedLocations***](OAIRequestSupportedLocations.md)|  | 

### Return type

[**OAIResponseSupportedLocations***](OAIResponseSupportedLocations.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeFilter**
```objc
-(NSURLSessionTask*) timeFilterWithRequestTimeFilter: (OAIRequestTimeFilter*) requestTimeFilter
        completionHandler: (void (^)(OAIResponseTimeFilter* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];

// Configure API key authorization: (authentication scheme: ApplicationId)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Application-Id"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Application-Id"];


OAIRequestTimeFilter* requestTimeFilter = [[OAIRequestTimeFilter alloc] init]; // 

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance timeFilterWithRequestTimeFilter:requestTimeFilter
          completionHandler: ^(OAIResponseTimeFilter* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->timeFilter: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilter** | [**OAIRequestTimeFilter***](OAIRequestTimeFilter.md)|  | 

### Return type

[**OAIResponseTimeFilter***](OAIResponseTimeFilter.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeFilterFast**
```objc
-(NSURLSessionTask*) timeFilterFastWithRequestTimeFilterFast: (OAIRequestTimeFilterFast*) requestTimeFilterFast
        completionHandler: (void (^)(OAIResponseTimeFilterFast* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];

// Configure API key authorization: (authentication scheme: ApplicationId)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Application-Id"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Application-Id"];


OAIRequestTimeFilterFast* requestTimeFilterFast = [[OAIRequestTimeFilterFast alloc] init]; // 

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance timeFilterFastWithRequestTimeFilterFast:requestTimeFilterFast
          completionHandler: ^(OAIResponseTimeFilterFast* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->timeFilterFast: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterFast** | [**OAIRequestTimeFilterFast***](OAIRequestTimeFilterFast.md)|  | 

### Return type

[**OAIResponseTimeFilterFast***](OAIResponseTimeFilterFast.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeFilterPostcodeDistricts**
```objc
-(NSURLSessionTask*) timeFilterPostcodeDistrictsWithRequestTimeFilterPostcodeDistricts: (OAIRequestTimeFilterPostcodeDistricts*) requestTimeFilterPostcodeDistricts
        completionHandler: (void (^)(OAIResponseTimeFilterPostcodeDistricts* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];

// Configure API key authorization: (authentication scheme: ApplicationId)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Application-Id"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Application-Id"];


OAIRequestTimeFilterPostcodeDistricts* requestTimeFilterPostcodeDistricts = [[OAIRequestTimeFilterPostcodeDistricts alloc] init]; // 

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance timeFilterPostcodeDistrictsWithRequestTimeFilterPostcodeDistricts:requestTimeFilterPostcodeDistricts
          completionHandler: ^(OAIResponseTimeFilterPostcodeDistricts* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->timeFilterPostcodeDistricts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodeDistricts** | [**OAIRequestTimeFilterPostcodeDistricts***](OAIRequestTimeFilterPostcodeDistricts.md)|  | 

### Return type

[**OAIResponseTimeFilterPostcodeDistricts***](OAIResponseTimeFilterPostcodeDistricts.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeFilterPostcodeSectors**
```objc
-(NSURLSessionTask*) timeFilterPostcodeSectorsWithRequestTimeFilterPostcodeSectors: (OAIRequestTimeFilterPostcodeSectors*) requestTimeFilterPostcodeSectors
        completionHandler: (void (^)(OAIResponseTimeFilterPostcodeSectors* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];

// Configure API key authorization: (authentication scheme: ApplicationId)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Application-Id"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Application-Id"];


OAIRequestTimeFilterPostcodeSectors* requestTimeFilterPostcodeSectors = [[OAIRequestTimeFilterPostcodeSectors alloc] init]; // 

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance timeFilterPostcodeSectorsWithRequestTimeFilterPostcodeSectors:requestTimeFilterPostcodeSectors
          completionHandler: ^(OAIResponseTimeFilterPostcodeSectors* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->timeFilterPostcodeSectors: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodeSectors** | [**OAIRequestTimeFilterPostcodeSectors***](OAIRequestTimeFilterPostcodeSectors.md)|  | 

### Return type

[**OAIResponseTimeFilterPostcodeSectors***](OAIResponseTimeFilterPostcodeSectors.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeFilterPostcodes**
```objc
-(NSURLSessionTask*) timeFilterPostcodesWithRequestTimeFilterPostcodes: (OAIRequestTimeFilterPostcodes*) requestTimeFilterPostcodes
        completionHandler: (void (^)(OAIResponseTimeFilterPostcodes* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];

// Configure API key authorization: (authentication scheme: ApplicationId)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Application-Id"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Application-Id"];


OAIRequestTimeFilterPostcodes* requestTimeFilterPostcodes = [[OAIRequestTimeFilterPostcodes alloc] init]; // 

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance timeFilterPostcodesWithRequestTimeFilterPostcodes:requestTimeFilterPostcodes
          completionHandler: ^(OAIResponseTimeFilterPostcodes* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->timeFilterPostcodes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeFilterPostcodes** | [**OAIRequestTimeFilterPostcodes***](OAIRequestTimeFilterPostcodes.md)|  | 

### Return type

[**OAIResponseTimeFilterPostcodes***](OAIResponseTimeFilterPostcodes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeMap**
```objc
-(NSURLSessionTask*) timeMapWithRequestTimeMap: (OAIRequestTimeMap*) requestTimeMap
        completionHandler: (void (^)(OAIResponseTimeMap* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];

// Configure API key authorization: (authentication scheme: ApplicationId)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Application-Id"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Application-Id"];


OAIRequestTimeMap* requestTimeMap = [[OAIRequestTimeMap alloc] init]; // 

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

[apiInstance timeMapWithRequestTimeMap:requestTimeMap
          completionHandler: ^(OAIResponseTimeMap* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->timeMap: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTimeMap** | [**OAIRequestTimeMap***](OAIRequestTimeMap.md)|  | 

### Return type

[**OAIResponseTimeMap***](OAIResponseTimeMap.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/vnd.wkt+json, application/vnd.wkt-no-holes+json, application/vnd.bounding-boxes+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

