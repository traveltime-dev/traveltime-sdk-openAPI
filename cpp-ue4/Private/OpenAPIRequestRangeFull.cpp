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

#include "OpenAPIRequestRangeFull.h"

#include "OpenAPIModule.h"
#include "OpenAPIHelpers.h"

#include "Templates/SharedPointer.h"

namespace OpenAPI 
{

void OpenAPIRequestRangeFull::WriteJson(JsonWriter& Writer) const
{
	Writer->WriteObjectStart();
	Writer->WriteIdentifierPrefix(TEXT("enabled")); WriteJsonValue(Writer, Enabled);
	Writer->WriteIdentifierPrefix(TEXT("max_results")); WriteJsonValue(Writer, MaxResults);
	Writer->WriteIdentifierPrefix(TEXT("width")); WriteJsonValue(Writer, Width);
	Writer->WriteObjectEnd();
}

bool OpenAPIRequestRangeFull::FromJson(const TSharedPtr<FJsonValue>& JsonValue)
{
	const TSharedPtr<FJsonObject>* Object;
	if (!JsonValue->TryGetObject(Object))
		return false;

	bool ParseSuccess = true;

	ParseSuccess &= TryGetJsonValue(*Object, TEXT("enabled"), Enabled);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("max_results"), MaxResults);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("width"), Width);

	return ParseSuccess;
}

}
