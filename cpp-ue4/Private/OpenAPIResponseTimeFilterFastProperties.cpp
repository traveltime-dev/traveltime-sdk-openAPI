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

#include "OpenAPIResponseTimeFilterFastProperties.h"

#include "OpenAPIModule.h"
#include "OpenAPIHelpers.h"

#include "Templates/SharedPointer.h"

namespace OpenAPI 
{

void OpenAPIResponseTimeFilterFastProperties::WriteJson(JsonWriter& Writer) const
{
	Writer->WriteObjectStart();
	if (TravelTime.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("travel_time")); WriteJsonValue(Writer, TravelTime.GetValue());	
	}
	if (Fares.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("fares")); WriteJsonValue(Writer, Fares.GetValue());	
	}
	Writer->WriteObjectEnd();
}

bool OpenAPIResponseTimeFilterFastProperties::FromJson(const TSharedPtr<FJsonValue>& JsonValue)
{
	const TSharedPtr<FJsonObject>* Object;
	if (!JsonValue->TryGetObject(Object))
		return false;

	bool ParseSuccess = true;

	ParseSuccess &= TryGetJsonValue(*Object, TEXT("travel_time"), TravelTime);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("fares"), Fares);

	return ParseSuccess;
}

}
