# PSOpenAPITools.PSOpenAPITools/Api.DefaultApi

All URIs are relative to *https://api.traveltimeapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GeocodingReverseSearch**](DefaultApi.md#Invoke-GeocodingReverseSearch) | **GET** /v4/geocoding/reverse | 
[**Invoke-GeocodingSearch**](DefaultApi.md#Invoke-GeocodingSearch) | **GET** /v4/geocoding/search | 
[**Invoke-MapInfo**](DefaultApi.md#Invoke-MapInfo) | **GET** /v4/map-info | 
[**Invoke-Routes**](DefaultApi.md#Invoke-Routes) | **POST** /v4/routes | 
[**Invoke-SupportedLocations**](DefaultApi.md#Invoke-SupportedLocations) | **POST** /v4/supported-locations | 
[**Invoke-TimeFilter**](DefaultApi.md#Invoke-TimeFilter) | **POST** /v4/time-filter | 
[**Invoke-TimeFilterFast**](DefaultApi.md#Invoke-TimeFilterFast) | **POST** /v4/time-filter/fast | 
[**Invoke-TimeFilterPostcodeDistricts**](DefaultApi.md#Invoke-TimeFilterPostcodeDistricts) | **POST** /v4/time-filter/postcode-districts | 
[**Invoke-TimeFilterPostcodeSectors**](DefaultApi.md#Invoke-TimeFilterPostcodeSectors) | **POST** /v4/time-filter/postcode-sectors | 
[**Invoke-TimeFilterPostcodes**](DefaultApi.md#Invoke-TimeFilterPostcodes) | **POST** /v4/time-filter/postcodes | 
[**Invoke-TimeMap**](DefaultApi.md#Invoke-TimeMap) | **POST** /v4/time-map | 


<a name="Invoke-GeocodingReverseSearch"></a>
# **Invoke-GeocodingReverseSearch**
> ResponseGeocoding Invoke-GeocodingReverseSearch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Lat] <Double><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Lng] <Double><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WithinCountry] <String><br>



### Example
```powershell
Import-Module -Name PSOpenAPITools

$Configuration = Get-PSOpenAPIToolsConfiguration
# Configure API key authorization: ApiKey
$Configuration["ApiKey"]["X-Api-Key"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Api-Key"] = "Bearer"
# Configure API key authorization: ApplicationId
$Configuration["ApiKey"]["X-Application-Id"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Application-Id"] = "Bearer"

$Lat = 987 # Double | 
$Lng = 987 # Double | 
$WithinCountry = "WithinCountry_example" # String |  (optional)

try {
    ResponseGeocoding $Result = Invoke-GeocodingReverseSearch -Lat $Lat -Lng $Lng -WithinCountry $WithinCountry
} catch {
    Write-Host ("Exception occured when calling Invoke-GeocodingReverseSearch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Lat** | **Double**|  | 
 **Lng** | **Double**|  | 
 **WithinCountry** | **String**|  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GeocodingSearch"></a>
# **Invoke-GeocodingSearch**
> ResponseGeocoding Invoke-GeocodingSearch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FocusLat] <System.Nullable[Double]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FocusLng] <System.Nullable[Double]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WithinCountry] <String><br>



### Example
```powershell
Import-Module -Name PSOpenAPITools

$Configuration = Get-PSOpenAPIToolsConfiguration
# Configure API key authorization: ApiKey
$Configuration["ApiKey"]["X-Api-Key"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Api-Key"] = "Bearer"
# Configure API key authorization: ApplicationId
$Configuration["ApiKey"]["X-Application-Id"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Application-Id"] = "Bearer"

$Query = "Query_example" # String | 
$FocusLat = 987 # Double |  (optional)
$FocusLng = 987 # Double |  (optional)
$WithinCountry = "WithinCountry_example" # String |  (optional)

try {
    ResponseGeocoding $Result = Invoke-GeocodingSearch -Query $Query -FocusLat $FocusLat -FocusLng $FocusLng -WithinCountry $WithinCountry
} catch {
    Write-Host ("Exception occured when calling Invoke-GeocodingSearch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Query** | **String**|  | 
 **FocusLat** | **Double**|  | [optional] 
 **FocusLng** | **Double**|  | [optional] 
 **WithinCountry** | **String**|  | [optional] 

### Return type

[**ResponseGeocoding**](ResponseGeocoding.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-MapInfo"></a>
# **Invoke-MapInfo**
> ResponseMapInfo Invoke-MapInfo<br>



### Example
```powershell
Import-Module -Name PSOpenAPITools

$Configuration = Get-PSOpenAPIToolsConfiguration
# Configure API key authorization: ApiKey
$Configuration["ApiKey"]["X-Api-Key"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Api-Key"] = "Bearer"
# Configure API key authorization: ApplicationId
$Configuration["ApiKey"]["X-Application-Id"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Application-Id"] = "Bearer"


try {
    ResponseMapInfo $Result = Invoke-MapInfo
} catch {
    Write-Host ("Exception occured when calling Invoke-MapInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
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

<a name="Invoke-Routes"></a>
# **Invoke-Routes**
> ResponseRoutes Invoke-Routes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestRoutes] <PSCustomObject><br>



### Example
```powershell
Import-Module -Name PSOpenAPITools

$Configuration = Get-PSOpenAPIToolsConfiguration
# Configure API key authorization: ApiKey
$Configuration["ApiKey"]["X-Api-Key"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Api-Key"] = "Bearer"
# Configure API key authorization: ApplicationId
$Configuration["ApiKey"]["X-Application-Id"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Application-Id"] = "Bearer"

$RequestRoutes = (Initialize-RequestRoutes-Locations @((Initialize-RequestLocation-Id "Id_example" -Coords (Initialize-Coords-Lat 123 -Lng 123))) -DepartureSearches @((Initialize-RequestRoutesDepartureSearch-Id "Id_example" -DepartureLocationId "DepartureLocationId_example" -ArrivalLocationIds @("ArrivalLocationIds_example") -Transportation (Initialize-RequestTransportation-Type "Type_example" -PtChangeDelay 123 -WalkingTime 123 -DrivingTimeToStation 123 -ParkingTime 123 -BoardingTime 123) -DepartureTime Get-Date -Properties @((Initialize-RequestRoutesProperty)) -Range (Initialize-RequestRangeFull-Enabled $false -MaxResults 123 -Width 123))) -ArrivalSearches @((Initialize-RequestRoutesArrivalSearch-Id "Id_example" -DepartureLocationIds @("DepartureLocationIds_example") -ArrivalLocationId "ArrivalLocationId_example" -Transportation (Initialize-RequestTransportation-Type "Type_example" -PtChangeDelay 123 -WalkingTime 123 -DrivingTimeToStation 123 -ParkingTime 123 -BoardingTime 123) -ArrivalTime Get-Date -Properties @((Initialize-RequestRoutesProperty)) -Range (Initialize-RequestRangeFull-Enabled $false -MaxResults 123 -Width 123)))) # RequestRoutes | 

try {
    ResponseRoutes $Result = Invoke-Routes -RequestRoutes $RequestRoutes
} catch {
    Write-Host ("Exception occured when calling Invoke-Routes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestRoutes** | [**RequestRoutes**](RequestRoutes.md)|  | 

### Return type

[**ResponseRoutes**](ResponseRoutes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SupportedLocations"></a>
# **Invoke-SupportedLocations**
> ResponseSupportedLocations Invoke-SupportedLocations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestSupportedLocations] <PSCustomObject><br>



### Example
```powershell
Import-Module -Name PSOpenAPITools

$Configuration = Get-PSOpenAPIToolsConfiguration
# Configure API key authorization: ApiKey
$Configuration["ApiKey"]["X-Api-Key"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Api-Key"] = "Bearer"
# Configure API key authorization: ApplicationId
$Configuration["ApiKey"]["X-Application-Id"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Application-Id"] = "Bearer"

$RequestSupportedLocations = (Initialize-RequestSupportedLocations-Locations @((Initialize-RequestLocation-Id "Id_example" -Coords (Initialize-Coords-Lat 123 -Lng 123)))) # RequestSupportedLocations | 

try {
    ResponseSupportedLocations $Result = Invoke-SupportedLocations -RequestSupportedLocations $RequestSupportedLocations
} catch {
    Write-Host ("Exception occured when calling Invoke-SupportedLocations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestSupportedLocations** | [**RequestSupportedLocations**](RequestSupportedLocations.md)|  | 

### Return type

[**ResponseSupportedLocations**](ResponseSupportedLocations.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-TimeFilter"></a>
# **Invoke-TimeFilter**
> ResponseTimeFilter Invoke-TimeFilter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestTimeFilter] <PSCustomObject><br>



### Example
```powershell
Import-Module -Name PSOpenAPITools

$Configuration = Get-PSOpenAPIToolsConfiguration
# Configure API key authorization: ApiKey
$Configuration["ApiKey"]["X-Api-Key"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Api-Key"] = "Bearer"
# Configure API key authorization: ApplicationId
$Configuration["ApiKey"]["X-Application-Id"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Application-Id"] = "Bearer"

$RequestTimeFilter = (Initialize-RequestTimeFilter-Locations @() -DepartureSearches @((Initialize-RequestTimeFilterDepartureSearch-Id "Id_example" -DepartureLocationId "DepartureLocationId_example" -ArrivalLocationIds @("ArrivalLocationIds_example") -Transportation  -TravelTime 123 -DepartureTime Get-Date -Properties @((Initialize-RequestTimeFilterProperty)) -Range )) -ArrivalSearches @((Initialize-RequestTimeFilterArrivalSearch-Id "Id_example" -DepartureLocationIds @("DepartureLocationIds_example") -ArrivalLocationId "ArrivalLocationId_example" -Transportation  -TravelTime 123 -ArrivalTime Get-Date -Properties @((Initialize-RequestTimeFilterProperty)) -Range ))) # RequestTimeFilter | 

try {
    ResponseTimeFilter $Result = Invoke-TimeFilter -RequestTimeFilter $RequestTimeFilter
} catch {
    Write-Host ("Exception occured when calling Invoke-TimeFilter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestTimeFilter** | [**RequestTimeFilter**](RequestTimeFilter.md)|  | 

### Return type

[**ResponseTimeFilter**](ResponseTimeFilter.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-TimeFilterFast"></a>
# **Invoke-TimeFilterFast**
> ResponseTimeFilterFast Invoke-TimeFilterFast<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestTimeFilterFast] <PSCustomObject><br>



### Example
```powershell
Import-Module -Name PSOpenAPITools

$Configuration = Get-PSOpenAPIToolsConfiguration
# Configure API key authorization: ApiKey
$Configuration["ApiKey"]["X-Api-Key"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Api-Key"] = "Bearer"
# Configure API key authorization: ApplicationId
$Configuration["ApiKey"]["X-Application-Id"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Application-Id"] = "Bearer"

$RequestTimeFilterFast = (Initialize-RequestTimeFilterFast-Locations @() -ArrivalSearches (Initialize-RequestTimeFilterFastArrivalSearches-ManyToOne @((Initialize-RequestTimeFilterFastArrivalManyToOneSearch-Id "Id_example" -ArrivalLocationId "ArrivalLocationId_example" -DepartureLocationIds @("DepartureLocationIds_example") -Transportation (Initialize-RequestTransportationFast-Type "Type_example") -TravelTime 123 -ArrivalTimePeriod (Initialize-RequestArrivalTimePeriod) -Properties @((Initialize-RequestTimeFilterFastProperty)))) -OneToMany @((Initialize-RequestTimeFilterFastArrivalOneToManySearch-Id "Id_example" -DepartureLocationId "DepartureLocationId_example" -ArrivalLocationIds @("ArrivalLocationIds_example") -Transportation (Initialize-RequestTransportationFast-Type "Type_example") -TravelTime 123 -ArrivalTimePeriod (Initialize-RequestArrivalTimePeriod) -Properties @((Initialize-RequestTimeFilterFastProperty)))))) # RequestTimeFilterFast | 

try {
    ResponseTimeFilterFast $Result = Invoke-TimeFilterFast -RequestTimeFilterFast $RequestTimeFilterFast
} catch {
    Write-Host ("Exception occured when calling Invoke-TimeFilterFast: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestTimeFilterFast** | [**RequestTimeFilterFast**](RequestTimeFilterFast.md)|  | 

### Return type

[**ResponseTimeFilterFast**](ResponseTimeFilterFast.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-TimeFilterPostcodeDistricts"></a>
# **Invoke-TimeFilterPostcodeDistricts**
> ResponseTimeFilterPostcodeDistricts Invoke-TimeFilterPostcodeDistricts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestTimeFilterPostcodeDistricts] <PSCustomObject><br>



### Example
```powershell
Import-Module -Name PSOpenAPITools

$Configuration = Get-PSOpenAPIToolsConfiguration
# Configure API key authorization: ApiKey
$Configuration["ApiKey"]["X-Api-Key"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Api-Key"] = "Bearer"
# Configure API key authorization: ApplicationId
$Configuration["ApiKey"]["X-Application-Id"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Application-Id"] = "Bearer"

$RequestTimeFilterPostcodeDistricts = (Initialize-RequestTimeFilterPostcodeDistricts-DepartureSearches @((Initialize-RequestTimeFilterPostcodeDistrictsDepartureSearch-Id "Id_example" -Transportation  -TravelTime 123 -DepartureTime Get-Date -ReachablePostcodesThreshold 123 -Properties @((Initialize-RequestTimeFilterPostcodeDistrictsProperty)) -Range )) -ArrivalSearches @((Initialize-RequestTimeFilterPostcodeDistrictsArrivalSearch-Id "Id_example" -Transportation  -TravelTime 123 -ArrivalTime Get-Date -ReachablePostcodesThreshold 123 -Properties @((Initialize-RequestTimeFilterPostcodeDistrictsProperty)) -Range ))) # RequestTimeFilterPostcodeDistricts | 

try {
    ResponseTimeFilterPostcodeDistricts $Result = Invoke-TimeFilterPostcodeDistricts -RequestTimeFilterPostcodeDistricts $RequestTimeFilterPostcodeDistricts
} catch {
    Write-Host ("Exception occured when calling Invoke-TimeFilterPostcodeDistricts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestTimeFilterPostcodeDistricts** | [**RequestTimeFilterPostcodeDistricts**](RequestTimeFilterPostcodeDistricts.md)|  | 

### Return type

[**ResponseTimeFilterPostcodeDistricts**](ResponseTimeFilterPostcodeDistricts.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-TimeFilterPostcodeSectors"></a>
# **Invoke-TimeFilterPostcodeSectors**
> ResponseTimeFilterPostcodeSectors Invoke-TimeFilterPostcodeSectors<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestTimeFilterPostcodeSectors] <PSCustomObject><br>



### Example
```powershell
Import-Module -Name PSOpenAPITools

$Configuration = Get-PSOpenAPIToolsConfiguration
# Configure API key authorization: ApiKey
$Configuration["ApiKey"]["X-Api-Key"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Api-Key"] = "Bearer"
# Configure API key authorization: ApplicationId
$Configuration["ApiKey"]["X-Application-Id"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Application-Id"] = "Bearer"

$RequestTimeFilterPostcodeSectors = (Initialize-RequestTimeFilterPostcodeSectors-DepartureSearches @((Initialize-RequestTimeFilterPostcodeSectorsDepartureSearch-Id "Id_example" -Transportation  -TravelTime 123 -DepartureTime Get-Date -ReachablePostcodesThreshold 123 -Properties @((Initialize-RequestTimeFilterPostcodeSectorsProperty)) -Range )) -ArrivalSearches @((Initialize-RequestTimeFilterPostcodeSectorsArrivalSearch-Id "Id_example" -Transportation  -TravelTime 123 -ArrivalTime Get-Date -ReachablePostcodesThreshold 123 -Properties @((Initialize-RequestTimeFilterPostcodeSectorsProperty)) -Range ))) # RequestTimeFilterPostcodeSectors | 

try {
    ResponseTimeFilterPostcodeSectors $Result = Invoke-TimeFilterPostcodeSectors -RequestTimeFilterPostcodeSectors $RequestTimeFilterPostcodeSectors
} catch {
    Write-Host ("Exception occured when calling Invoke-TimeFilterPostcodeSectors: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestTimeFilterPostcodeSectors** | [**RequestTimeFilterPostcodeSectors**](RequestTimeFilterPostcodeSectors.md)|  | 

### Return type

[**ResponseTimeFilterPostcodeSectors**](ResponseTimeFilterPostcodeSectors.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-TimeFilterPostcodes"></a>
# **Invoke-TimeFilterPostcodes**
> ResponseTimeFilterPostcodes Invoke-TimeFilterPostcodes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestTimeFilterPostcodes] <PSCustomObject><br>



### Example
```powershell
Import-Module -Name PSOpenAPITools

$Configuration = Get-PSOpenAPIToolsConfiguration
# Configure API key authorization: ApiKey
$Configuration["ApiKey"]["X-Api-Key"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Api-Key"] = "Bearer"
# Configure API key authorization: ApplicationId
$Configuration["ApiKey"]["X-Application-Id"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Application-Id"] = "Bearer"

$RequestTimeFilterPostcodes = (Initialize-RequestTimeFilterPostcodes-DepartureSearches @((Initialize-RequestTimeFilterPostcodesDepartureSearch-Id "Id_example" -Transportation  -TravelTime 123 -DepartureTime Get-Date -Properties @((Initialize-RequestTimeFilterPostcodesProperty)) -Range )) -ArrivalSearches @((Initialize-RequestTimeFilterPostcodesArrivalSearch-Id "Id_example" -Transportation  -TravelTime 123 -ArrivalTime Get-Date -Properties @((Initialize-RequestTimeFilterPostcodesProperty)) -Range ))) # RequestTimeFilterPostcodes | 

try {
    ResponseTimeFilterPostcodes $Result = Invoke-TimeFilterPostcodes -RequestTimeFilterPostcodes $RequestTimeFilterPostcodes
} catch {
    Write-Host ("Exception occured when calling Invoke-TimeFilterPostcodes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestTimeFilterPostcodes** | [**RequestTimeFilterPostcodes**](RequestTimeFilterPostcodes.md)|  | 

### Return type

[**ResponseTimeFilterPostcodes**](ResponseTimeFilterPostcodes.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-TimeMap"></a>
# **Invoke-TimeMap**
> ResponseTimeMap Invoke-TimeMap<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestTimeMap] <PSCustomObject><br>



### Example
```powershell
Import-Module -Name PSOpenAPITools

$Configuration = Get-PSOpenAPIToolsConfiguration
# Configure API key authorization: ApiKey
$Configuration["ApiKey"]["X-Api-Key"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Api-Key"] = "Bearer"
# Configure API key authorization: ApplicationId
$Configuration["ApiKey"]["X-Application-Id"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Application-Id"] = "Bearer"

$RequestTimeMap = (Initialize-RequestTimeMap-DepartureSearches @((Initialize-RequestTimeMapDepartureSearch-Id "Id_example" -Coords  -Transportation  -TravelTime 123 -DepartureTime Get-Date -Properties @((Initialize-RequestTimeMapProperty)) -Range (Initialize-RequestRangeNoMaxResults-Enabled $false -Width 123))) -ArrivalSearches @((Initialize-RequestTimeMapArrivalSearch-Id "Id_example" -Coords  -Transportation  -TravelTime 123 -ArrivalTime Get-Date -Properties @((Initialize-RequestTimeMapProperty)) -Range (Initialize-RequestRangeNoMaxResults-Enabled $false -Width 123))) -Unions @((Initialize-RequestUnionOnIntersection-Id "Id_example" -SearchIds @("SearchIds_example"))) -Intersections @((Initialize-RequestUnionOnIntersection-Id "Id_example" -SearchIds @("SearchIds_example")))) # RequestTimeMap | 

try {
    ResponseTimeMap $Result = Invoke-TimeMap -RequestTimeMap $RequestTimeMap
} catch {
    Write-Host ("Exception occured when calling Invoke-TimeMap: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestTimeMap** | [**RequestTimeMap**](RequestTimeMap.md)|  | 

### Return type

[**ResponseTimeMap**](ResponseTimeMap.md)

### Authorization

[ApiKey](../README.md#ApiKey), [ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/vnd.wkt+json, application/vnd.wkt-no-holes+json, application/vnd.bounding-boxes+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

