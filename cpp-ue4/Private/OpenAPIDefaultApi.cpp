/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

#include "OpenAPIDefaultApi.h"

#include "OpenAPIDefaultApiOperations.h"
#include "OpenAPIModule.h"

#include "HttpModule.h"
#include "Serialization/JsonSerializer.h"

namespace OpenAPI 
{

OpenAPIDefaultApi::OpenAPIDefaultApi() 
: Url(TEXT("https://api.traveltimeapp.com"))
{
}

OpenAPIDefaultApi::~OpenAPIDefaultApi() {}

void OpenAPIDefaultApi::SetURL(const FString& InUrl)
{
	Url = InUrl;
}

void OpenAPIDefaultApi::AddHeaderParam(const FString& Key, const FString& Value)
{
	AdditionalHeaderParams.Add(Key, Value);
}

void OpenAPIDefaultApi::ClearHeaderParams()
{
	AdditionalHeaderParams.Reset();
}

bool OpenAPIDefaultApi::IsValid() const
{
	if (Url.IsEmpty())
	{
		UE_LOG(LogOpenAPI, Error, TEXT("OpenAPIDefaultApi: Endpoint Url is not set, request cannot be performed"));
		return false;
	}

	return true;
}

void OpenAPIDefaultApi::SetHttpRetryManager(FHttpRetrySystem::FManager& InRetryManager)
{
	if(RetryManager != &GetHttpRetryManager())
	{
		DefaultRetryManager.Reset();
		RetryManager = &InRetryManager;
	}
}

FHttpRetrySystem::FManager& OpenAPIDefaultApi::GetHttpRetryManager()
{
	return *RetryManager;
}

FHttpRequestRef OpenAPIDefaultApi::CreateHttpRequest(const Request& Request) const
{
	if (!Request.GetRetryParams().IsSet())
	{
		return FHttpModule::Get().CreateRequest();
	}
	else
	{
		if (!RetryManager)
		{
			// Create default retry manager if none was specified
			DefaultRetryManager = MakeUnique<HttpRetryManager>(6, 60);
			RetryManager = DefaultRetryManager.Get();
		}

		const HttpRetryParams& Params = Request.GetRetryParams().GetValue();
		return RetryManager->CreateRequest(Params.RetryLimitCountOverride, Params.RetryTimeoutRelativeSecondsOverride, Params.RetryResponseCodes, Params.RetryVerbs, Params.RetryDomains);
	}
}

void OpenAPIDefaultApi::HandleResponse(FHttpResponsePtr HttpResponse, bool bSucceeded, Response& InOutResponse) const
{
	InOutResponse.SetHttpResponse(HttpResponse);
	InOutResponse.SetSuccessful(bSucceeded);

	if (bSucceeded && HttpResponse.IsValid())
	{
		InOutResponse.SetHttpResponseCode((EHttpResponseCodes::Type)HttpResponse->GetResponseCode());
		FString ContentType = HttpResponse->GetContentType();
		FString Content;

		if (ContentType.IsEmpty())
		{
			return; // Nothing to parse
		}
		else if (ContentType.StartsWith(TEXT("application/json")) || ContentType.StartsWith("text/json"))
		{
			Content = HttpResponse->GetContentAsString();

			TSharedPtr<FJsonValue> JsonValue;
			auto Reader = TJsonReaderFactory<>::Create(Content);

			if (FJsonSerializer::Deserialize(Reader, JsonValue) && JsonValue.IsValid())
			{
				if (InOutResponse.FromJson(JsonValue))
					return; // Successfully parsed
			}
		}
		else if(ContentType.StartsWith(TEXT("text/plain")))
		{
			Content = HttpResponse->GetContentAsString();
			InOutResponse.SetResponseString(Content);
			return; // Successfully parsed
		}

		// Report the parse error but do not mark the request as unsuccessful. Data could be partial or malformed, but the request succeeded.
		UE_LOG(LogOpenAPI, Error, TEXT("Failed to deserialize Http response content (type:%s):\n%s"), *ContentType , *Content);
		return;
	}

	// By default, assume we failed to establish connection
	InOutResponse.SetHttpResponseCode(EHttpResponseCodes::RequestTimeout);
}

bool OpenAPIDefaultApi::GeocodingReverseSearch(const GeocodingReverseSearchRequest& Request, const FGeocodingReverseSearchDelegate& Delegate /*= FGeocodingReverseSearchDelegate()*/) const
{
	if (!IsValid())
		return false;

	FHttpRequestRef HttpRequest = CreateHttpRequest(Request);
	HttpRequest->SetURL(*(Url + Request.ComputePath()));

	for(const auto& It : AdditionalHeaderParams)
	{
		HttpRequest->SetHeader(It.Key, It.Value);
	}

	Request.SetupHttpRequest(HttpRequest);
	
	HttpRequest->OnProcessRequestComplete().BindRaw(this, &OpenAPIDefaultApi::OnGeocodingReverseSearchResponse, Delegate);
	return HttpRequest->ProcessRequest();
}

void OpenAPIDefaultApi::OnGeocodingReverseSearchResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGeocodingReverseSearchDelegate Delegate) const
{
	GeocodingReverseSearchResponse Response;
	HandleResponse(HttpResponse, bSucceeded, Response);
	Delegate.ExecuteIfBound(Response);
}

bool OpenAPIDefaultApi::GeocodingSearch(const GeocodingSearchRequest& Request, const FGeocodingSearchDelegate& Delegate /*= FGeocodingSearchDelegate()*/) const
{
	if (!IsValid())
		return false;

	FHttpRequestRef HttpRequest = CreateHttpRequest(Request);
	HttpRequest->SetURL(*(Url + Request.ComputePath()));

	for(const auto& It : AdditionalHeaderParams)
	{
		HttpRequest->SetHeader(It.Key, It.Value);
	}

	Request.SetupHttpRequest(HttpRequest);
	
	HttpRequest->OnProcessRequestComplete().BindRaw(this, &OpenAPIDefaultApi::OnGeocodingSearchResponse, Delegate);
	return HttpRequest->ProcessRequest();
}

void OpenAPIDefaultApi::OnGeocodingSearchResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGeocodingSearchDelegate Delegate) const
{
	GeocodingSearchResponse Response;
	HandleResponse(HttpResponse, bSucceeded, Response);
	Delegate.ExecuteIfBound(Response);
}

bool OpenAPIDefaultApi::MapInfo(const MapInfoRequest& Request, const FMapInfoDelegate& Delegate /*= FMapInfoDelegate()*/) const
{
	if (!IsValid())
		return false;

	FHttpRequestRef HttpRequest = CreateHttpRequest(Request);
	HttpRequest->SetURL(*(Url + Request.ComputePath()));

	for(const auto& It : AdditionalHeaderParams)
	{
		HttpRequest->SetHeader(It.Key, It.Value);
	}

	Request.SetupHttpRequest(HttpRequest);
	
	HttpRequest->OnProcessRequestComplete().BindRaw(this, &OpenAPIDefaultApi::OnMapInfoResponse, Delegate);
	return HttpRequest->ProcessRequest();
}

void OpenAPIDefaultApi::OnMapInfoResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FMapInfoDelegate Delegate) const
{
	MapInfoResponse Response;
	HandleResponse(HttpResponse, bSucceeded, Response);
	Delegate.ExecuteIfBound(Response);
}

bool OpenAPIDefaultApi::Routes(const RoutesRequest& Request, const FRoutesDelegate& Delegate /*= FRoutesDelegate()*/) const
{
	if (!IsValid())
		return false;

	FHttpRequestRef HttpRequest = CreateHttpRequest(Request);
	HttpRequest->SetURL(*(Url + Request.ComputePath()));

	for(const auto& It : AdditionalHeaderParams)
	{
		HttpRequest->SetHeader(It.Key, It.Value);
	}

	Request.SetupHttpRequest(HttpRequest);
	
	HttpRequest->OnProcessRequestComplete().BindRaw(this, &OpenAPIDefaultApi::OnRoutesResponse, Delegate);
	return HttpRequest->ProcessRequest();
}

void OpenAPIDefaultApi::OnRoutesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FRoutesDelegate Delegate) const
{
	RoutesResponse Response;
	HandleResponse(HttpResponse, bSucceeded, Response);
	Delegate.ExecuteIfBound(Response);
}

bool OpenAPIDefaultApi::SupportedLocations(const SupportedLocationsRequest& Request, const FSupportedLocationsDelegate& Delegate /*= FSupportedLocationsDelegate()*/) const
{
	if (!IsValid())
		return false;

	FHttpRequestRef HttpRequest = CreateHttpRequest(Request);
	HttpRequest->SetURL(*(Url + Request.ComputePath()));

	for(const auto& It : AdditionalHeaderParams)
	{
		HttpRequest->SetHeader(It.Key, It.Value);
	}

	Request.SetupHttpRequest(HttpRequest);
	
	HttpRequest->OnProcessRequestComplete().BindRaw(this, &OpenAPIDefaultApi::OnSupportedLocationsResponse, Delegate);
	return HttpRequest->ProcessRequest();
}

void OpenAPIDefaultApi::OnSupportedLocationsResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FSupportedLocationsDelegate Delegate) const
{
	SupportedLocationsResponse Response;
	HandleResponse(HttpResponse, bSucceeded, Response);
	Delegate.ExecuteIfBound(Response);
}

bool OpenAPIDefaultApi::TimeFilter(const TimeFilterRequest& Request, const FTimeFilterDelegate& Delegate /*= FTimeFilterDelegate()*/) const
{
	if (!IsValid())
		return false;

	FHttpRequestRef HttpRequest = CreateHttpRequest(Request);
	HttpRequest->SetURL(*(Url + Request.ComputePath()));

	for(const auto& It : AdditionalHeaderParams)
	{
		HttpRequest->SetHeader(It.Key, It.Value);
	}

	Request.SetupHttpRequest(HttpRequest);
	
	HttpRequest->OnProcessRequestComplete().BindRaw(this, &OpenAPIDefaultApi::OnTimeFilterResponse, Delegate);
	return HttpRequest->ProcessRequest();
}

void OpenAPIDefaultApi::OnTimeFilterResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FTimeFilterDelegate Delegate) const
{
	TimeFilterResponse Response;
	HandleResponse(HttpResponse, bSucceeded, Response);
	Delegate.ExecuteIfBound(Response);
}

bool OpenAPIDefaultApi::TimeFilterFast(const TimeFilterFastRequest& Request, const FTimeFilterFastDelegate& Delegate /*= FTimeFilterFastDelegate()*/) const
{
	if (!IsValid())
		return false;

	FHttpRequestRef HttpRequest = CreateHttpRequest(Request);
	HttpRequest->SetURL(*(Url + Request.ComputePath()));

	for(const auto& It : AdditionalHeaderParams)
	{
		HttpRequest->SetHeader(It.Key, It.Value);
	}

	Request.SetupHttpRequest(HttpRequest);
	
	HttpRequest->OnProcessRequestComplete().BindRaw(this, &OpenAPIDefaultApi::OnTimeFilterFastResponse, Delegate);
	return HttpRequest->ProcessRequest();
}

void OpenAPIDefaultApi::OnTimeFilterFastResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FTimeFilterFastDelegate Delegate) const
{
	TimeFilterFastResponse Response;
	HandleResponse(HttpResponse, bSucceeded, Response);
	Delegate.ExecuteIfBound(Response);
}

bool OpenAPIDefaultApi::TimeFilterPostcodeDistricts(const TimeFilterPostcodeDistrictsRequest& Request, const FTimeFilterPostcodeDistrictsDelegate& Delegate /*= FTimeFilterPostcodeDistrictsDelegate()*/) const
{
	if (!IsValid())
		return false;

	FHttpRequestRef HttpRequest = CreateHttpRequest(Request);
	HttpRequest->SetURL(*(Url + Request.ComputePath()));

	for(const auto& It : AdditionalHeaderParams)
	{
		HttpRequest->SetHeader(It.Key, It.Value);
	}

	Request.SetupHttpRequest(HttpRequest);
	
	HttpRequest->OnProcessRequestComplete().BindRaw(this, &OpenAPIDefaultApi::OnTimeFilterPostcodeDistrictsResponse, Delegate);
	return HttpRequest->ProcessRequest();
}

void OpenAPIDefaultApi::OnTimeFilterPostcodeDistrictsResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FTimeFilterPostcodeDistrictsDelegate Delegate) const
{
	TimeFilterPostcodeDistrictsResponse Response;
	HandleResponse(HttpResponse, bSucceeded, Response);
	Delegate.ExecuteIfBound(Response);
}

bool OpenAPIDefaultApi::TimeFilterPostcodeSectors(const TimeFilterPostcodeSectorsRequest& Request, const FTimeFilterPostcodeSectorsDelegate& Delegate /*= FTimeFilterPostcodeSectorsDelegate()*/) const
{
	if (!IsValid())
		return false;

	FHttpRequestRef HttpRequest = CreateHttpRequest(Request);
	HttpRequest->SetURL(*(Url + Request.ComputePath()));

	for(const auto& It : AdditionalHeaderParams)
	{
		HttpRequest->SetHeader(It.Key, It.Value);
	}

	Request.SetupHttpRequest(HttpRequest);
	
	HttpRequest->OnProcessRequestComplete().BindRaw(this, &OpenAPIDefaultApi::OnTimeFilterPostcodeSectorsResponse, Delegate);
	return HttpRequest->ProcessRequest();
}

void OpenAPIDefaultApi::OnTimeFilterPostcodeSectorsResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FTimeFilterPostcodeSectorsDelegate Delegate) const
{
	TimeFilterPostcodeSectorsResponse Response;
	HandleResponse(HttpResponse, bSucceeded, Response);
	Delegate.ExecuteIfBound(Response);
}

bool OpenAPIDefaultApi::TimeFilterPostcodes(const TimeFilterPostcodesRequest& Request, const FTimeFilterPostcodesDelegate& Delegate /*= FTimeFilterPostcodesDelegate()*/) const
{
	if (!IsValid())
		return false;

	FHttpRequestRef HttpRequest = CreateHttpRequest(Request);
	HttpRequest->SetURL(*(Url + Request.ComputePath()));

	for(const auto& It : AdditionalHeaderParams)
	{
		HttpRequest->SetHeader(It.Key, It.Value);
	}

	Request.SetupHttpRequest(HttpRequest);
	
	HttpRequest->OnProcessRequestComplete().BindRaw(this, &OpenAPIDefaultApi::OnTimeFilterPostcodesResponse, Delegate);
	return HttpRequest->ProcessRequest();
}

void OpenAPIDefaultApi::OnTimeFilterPostcodesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FTimeFilterPostcodesDelegate Delegate) const
{
	TimeFilterPostcodesResponse Response;
	HandleResponse(HttpResponse, bSucceeded, Response);
	Delegate.ExecuteIfBound(Response);
}

bool OpenAPIDefaultApi::TimeMap(const TimeMapRequest& Request, const FTimeMapDelegate& Delegate /*= FTimeMapDelegate()*/) const
{
	if (!IsValid())
		return false;

	FHttpRequestRef HttpRequest = CreateHttpRequest(Request);
	HttpRequest->SetURL(*(Url + Request.ComputePath()));

	for(const auto& It : AdditionalHeaderParams)
	{
		HttpRequest->SetHeader(It.Key, It.Value);
	}

	Request.SetupHttpRequest(HttpRequest);
	
	HttpRequest->OnProcessRequestComplete().BindRaw(this, &OpenAPIDefaultApi::OnTimeMapResponse, Delegate);
	return HttpRequest->ProcessRequest();
}

void OpenAPIDefaultApi::OnTimeMapResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FTimeMapDelegate Delegate) const
{
	TimeMapResponse Response;
	HandleResponse(HttpResponse, bSucceeded, Response);
	Delegate.ExecuteIfBound(Response);
}

}
