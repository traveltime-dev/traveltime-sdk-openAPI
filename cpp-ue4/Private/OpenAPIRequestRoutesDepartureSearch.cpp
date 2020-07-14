/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.2.1
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

#include "OpenAPIRequestRoutesDepartureSearch.h"

#include "OpenAPIModule.h"
#include "OpenAPIHelpers.h"

#include "Templates/SharedPointer.h"

namespace OpenAPI 
{

void OpenAPIRequestRoutesDepartureSearch::WriteJson(JsonWriter& Writer) const
{
	Writer->WriteObjectStart();
	Writer->WriteIdentifierPrefix(TEXT("id")); WriteJsonValue(Writer, Id);
	Writer->WriteIdentifierPrefix(TEXT("departure_location_id")); WriteJsonValue(Writer, DepartureLocationId);
	Writer->WriteIdentifierPrefix(TEXT("arrival_location_ids")); WriteJsonValue(Writer, ArrivalLocationIds);
	Writer->WriteIdentifierPrefix(TEXT("transportation")); WriteJsonValue(Writer, Transportation);
	Writer->WriteIdentifierPrefix(TEXT("departure_time")); WriteJsonValue(Writer, DepartureTime);
	Writer->WriteIdentifierPrefix(TEXT("properties")); WriteJsonValue(Writer, Properties);
	if (Range.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("range")); WriteJsonValue(Writer, Range.GetValue());	
	}
	Writer->WriteObjectEnd();
}

bool OpenAPIRequestRoutesDepartureSearch::FromJson(const TSharedPtr<FJsonValue>& JsonValue)
{
	const TSharedPtr<FJsonObject>* Object;
	if (!JsonValue->TryGetObject(Object))
		return false;

	bool ParseSuccess = true;

	ParseSuccess &= TryGetJsonValue(*Object, TEXT("id"), Id);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("departure_location_id"), DepartureLocationId);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("arrival_location_ids"), ArrivalLocationIds);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("transportation"), Transportation);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("departure_time"), DepartureTime);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("properties"), Properties);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("range"), Range);

	return ParseSuccess;
}

}