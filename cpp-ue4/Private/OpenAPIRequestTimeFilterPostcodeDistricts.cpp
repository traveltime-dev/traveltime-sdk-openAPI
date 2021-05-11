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

#include "OpenAPIRequestTimeFilterPostcodeDistricts.h"

#include "OpenAPIModule.h"
#include "OpenAPIHelpers.h"

#include "Templates/SharedPointer.h"

namespace OpenAPI 
{

void OpenAPIRequestTimeFilterPostcodeDistricts::WriteJson(JsonWriter& Writer) const
{
	Writer->WriteObjectStart();
	if (DepartureSearches.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("departure_searches")); WriteJsonValue(Writer, DepartureSearches.GetValue());	
	}
	if (ArrivalSearches.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("arrival_searches")); WriteJsonValue(Writer, ArrivalSearches.GetValue());	
	}
	Writer->WriteObjectEnd();
}

bool OpenAPIRequestTimeFilterPostcodeDistricts::FromJson(const TSharedPtr<FJsonValue>& JsonValue)
{
	const TSharedPtr<FJsonObject>* Object;
	if (!JsonValue->TryGetObject(Object))
		return false;

	bool ParseSuccess = true;

	ParseSuccess &= TryGetJsonValue(*Object, TEXT("departure_searches"), DepartureSearches);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("arrival_searches"), ArrivalSearches);

	return ParseSuccess;
}

}
