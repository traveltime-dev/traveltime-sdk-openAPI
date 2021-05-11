/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.2.2
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

#pragma once

#include "CoreMinimal.h"
#include "OpenAPIBaseModel.h"

namespace OpenAPI 
{

class OPENAPI_API OpenAPIDefaultApi
{
public:
	OpenAPIDefaultApi();
	~OpenAPIDefaultApi();

	/* Sets the URL Endpoint. 
	* Note: several fallback endpoints can be configured in request retry policies, see Request::SetShouldRetry */
	void SetURL(const FString& Url);

	/* Adds global header params to all requests */
	void AddHeaderParam(const FString& Key, const FString& Value);
	void ClearHeaderParams();
	
	/* Sets the retry manager to the user-defined retry manager. User must manage the lifetime of the retry manager.
	* If no retry manager is specified and a request needs retries, a default retry manager will be used. 
	* See also: Request::SetShouldRetry */
	void SetHttpRetryManager(FHttpRetrySystem::FManager& RetryManager);
	FHttpRetrySystem::FManager& GetHttpRetryManager();

	class GeocodingReverseSearchRequest;
	class GeocodingReverseSearchResponse;
	class GeocodingSearchRequest;
	class GeocodingSearchResponse;
	class MapInfoRequest;
	class MapInfoResponse;
	class RoutesRequest;
	class RoutesResponse;
	class SupportedLocationsRequest;
	class SupportedLocationsResponse;
	class TimeFilterRequest;
	class TimeFilterResponse;
	class TimeFilterFastRequest;
	class TimeFilterFastResponse;
	class TimeFilterPostcodeDistrictsRequest;
	class TimeFilterPostcodeDistrictsResponse;
	class TimeFilterPostcodeSectorsRequest;
	class TimeFilterPostcodeSectorsResponse;
	class TimeFilterPostcodesRequest;
	class TimeFilterPostcodesResponse;
	class TimeMapRequest;
	class TimeMapResponse;
	
    DECLARE_DELEGATE_OneParam(FGeocodingReverseSearchDelegate, const GeocodingReverseSearchResponse&);
    DECLARE_DELEGATE_OneParam(FGeocodingSearchDelegate, const GeocodingSearchResponse&);
    DECLARE_DELEGATE_OneParam(FMapInfoDelegate, const MapInfoResponse&);
    DECLARE_DELEGATE_OneParam(FRoutesDelegate, const RoutesResponse&);
    DECLARE_DELEGATE_OneParam(FSupportedLocationsDelegate, const SupportedLocationsResponse&);
    DECLARE_DELEGATE_OneParam(FTimeFilterDelegate, const TimeFilterResponse&);
    DECLARE_DELEGATE_OneParam(FTimeFilterFastDelegate, const TimeFilterFastResponse&);
    DECLARE_DELEGATE_OneParam(FTimeFilterPostcodeDistrictsDelegate, const TimeFilterPostcodeDistrictsResponse&);
    DECLARE_DELEGATE_OneParam(FTimeFilterPostcodeSectorsDelegate, const TimeFilterPostcodeSectorsResponse&);
    DECLARE_DELEGATE_OneParam(FTimeFilterPostcodesDelegate, const TimeFilterPostcodesResponse&);
    DECLARE_DELEGATE_OneParam(FTimeMapDelegate, const TimeMapResponse&);
    
    bool GeocodingReverseSearch(const GeocodingReverseSearchRequest& Request, const FGeocodingReverseSearchDelegate& Delegate = FGeocodingReverseSearchDelegate()) const;
    bool GeocodingSearch(const GeocodingSearchRequest& Request, const FGeocodingSearchDelegate& Delegate = FGeocodingSearchDelegate()) const;
    bool MapInfo(const MapInfoRequest& Request, const FMapInfoDelegate& Delegate = FMapInfoDelegate()) const;
    bool Routes(const RoutesRequest& Request, const FRoutesDelegate& Delegate = FRoutesDelegate()) const;
    bool SupportedLocations(const SupportedLocationsRequest& Request, const FSupportedLocationsDelegate& Delegate = FSupportedLocationsDelegate()) const;
    bool TimeFilter(const TimeFilterRequest& Request, const FTimeFilterDelegate& Delegate = FTimeFilterDelegate()) const;
    bool TimeFilterFast(const TimeFilterFastRequest& Request, const FTimeFilterFastDelegate& Delegate = FTimeFilterFastDelegate()) const;
    bool TimeFilterPostcodeDistricts(const TimeFilterPostcodeDistrictsRequest& Request, const FTimeFilterPostcodeDistrictsDelegate& Delegate = FTimeFilterPostcodeDistrictsDelegate()) const;
    bool TimeFilterPostcodeSectors(const TimeFilterPostcodeSectorsRequest& Request, const FTimeFilterPostcodeSectorsDelegate& Delegate = FTimeFilterPostcodeSectorsDelegate()) const;
    bool TimeFilterPostcodes(const TimeFilterPostcodesRequest& Request, const FTimeFilterPostcodesDelegate& Delegate = FTimeFilterPostcodesDelegate()) const;
    bool TimeMap(const TimeMapRequest& Request, const FTimeMapDelegate& Delegate = FTimeMapDelegate()) const;
    
private:
    void OnGeocodingReverseSearchResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGeocodingReverseSearchDelegate Delegate) const;
    void OnGeocodingSearchResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGeocodingSearchDelegate Delegate) const;
    void OnMapInfoResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FMapInfoDelegate Delegate) const;
    void OnRoutesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FRoutesDelegate Delegate) const;
    void OnSupportedLocationsResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FSupportedLocationsDelegate Delegate) const;
    void OnTimeFilterResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FTimeFilterDelegate Delegate) const;
    void OnTimeFilterFastResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FTimeFilterFastDelegate Delegate) const;
    void OnTimeFilterPostcodeDistrictsResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FTimeFilterPostcodeDistrictsDelegate Delegate) const;
    void OnTimeFilterPostcodeSectorsResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FTimeFilterPostcodeSectorsDelegate Delegate) const;
    void OnTimeFilterPostcodesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FTimeFilterPostcodesDelegate Delegate) const;
    void OnTimeMapResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FTimeMapDelegate Delegate) const;
    
	FHttpRequestRef CreateHttpRequest(const Request& Request) const;
	bool IsValid() const;
	void HandleResponse(FHttpResponsePtr HttpResponse, bool bSucceeded, Response& InOutResponse) const;

	FString Url;
	TMap<FString,FString> AdditionalHeaderParams;
	mutable FHttpRetrySystem::FManager* RetryManager = nullptr;
	mutable TUniquePtr<HttpRetryManager> DefaultRetryManager;
};
	
}
