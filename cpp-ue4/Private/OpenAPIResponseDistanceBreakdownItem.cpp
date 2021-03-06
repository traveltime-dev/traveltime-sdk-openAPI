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

#include "OpenAPIResponseDistanceBreakdownItem.h"

#include "OpenAPIModule.h"
#include "OpenAPIHelpers.h"

#include "Templates/SharedPointer.h"

namespace OpenAPI 
{

void OpenAPIResponseDistanceBreakdownItem::WriteJson(JsonWriter& Writer) const
{
	Writer->WriteObjectStart();
	Writer->WriteIdentifierPrefix(TEXT("mode")); WriteJsonValue(Writer, Mode);
	Writer->WriteIdentifierPrefix(TEXT("distance")); WriteJsonValue(Writer, Distance);
	Writer->WriteObjectEnd();
}

bool OpenAPIResponseDistanceBreakdownItem::FromJson(const TSharedPtr<FJsonValue>& JsonValue)
{
	const TSharedPtr<FJsonObject>* Object;
	if (!JsonValue->TryGetObject(Object))
		return false;

	bool ParseSuccess = true;

	ParseSuccess &= TryGetJsonValue(*Object, TEXT("mode"), Mode);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("distance"), Distance);

	return ParseSuccess;
}

}
