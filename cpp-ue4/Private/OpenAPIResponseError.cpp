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

#include "OpenAPIResponseError.h"

#include "OpenAPIModule.h"
#include "OpenAPIHelpers.h"

#include "Templates/SharedPointer.h"

namespace OpenAPI 
{

void OpenAPIResponseError::WriteJson(JsonWriter& Writer) const
{
	Writer->WriteObjectStart();
	if (HttpStatus.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("http_status")); WriteJsonValue(Writer, HttpStatus.GetValue());	
	}
	if (ErrorCode.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("error_code")); WriteJsonValue(Writer, ErrorCode.GetValue());	
	}
	if (Description.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("description")); WriteJsonValue(Writer, Description.GetValue());	
	}
	if (DocumentationLink.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("documentation_link")); WriteJsonValue(Writer, DocumentationLink.GetValue());	
	}
	if (AdditionalInfo.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("additional_info")); WriteJsonValue(Writer, AdditionalInfo.GetValue());	
	}
	Writer->WriteObjectEnd();
}

bool OpenAPIResponseError::FromJson(const TSharedPtr<FJsonValue>& JsonValue)
{
	const TSharedPtr<FJsonObject>* Object;
	if (!JsonValue->TryGetObject(Object))
		return false;

	bool ParseSuccess = true;

	ParseSuccess &= TryGetJsonValue(*Object, TEXT("http_status"), HttpStatus);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("error_code"), ErrorCode);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("description"), Description);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("documentation_link"), DocumentationLink);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("additional_info"), AdditionalInfo);

	return ParseSuccess;
}

}
