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

#include "OpenAPIResponseGeocodingProperties.h"

#include "OpenAPIModule.h"
#include "OpenAPIHelpers.h"

#include "Templates/SharedPointer.h"

namespace OpenAPI 
{

void OpenAPIResponseGeocodingProperties::WriteJson(JsonWriter& Writer) const
{
	Writer->WriteObjectStart();
	Writer->WriteIdentifierPrefix(TEXT("name")); WriteJsonValue(Writer, Name);
	Writer->WriteIdentifierPrefix(TEXT("label")); WriteJsonValue(Writer, Label);
	if (Score.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("score")); WriteJsonValue(Writer, Score.GetValue());	
	}
	if (HouseNumber.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("house_number")); WriteJsonValue(Writer, HouseNumber.GetValue());	
	}
	if (Street.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("street")); WriteJsonValue(Writer, Street.GetValue());	
	}
	if (Region.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("region")); WriteJsonValue(Writer, Region.GetValue());	
	}
	if (RegionCode.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("region_code")); WriteJsonValue(Writer, RegionCode.GetValue());	
	}
	if (Neighbourhood.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("neighbourhood")); WriteJsonValue(Writer, Neighbourhood.GetValue());	
	}
	if (County.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("county")); WriteJsonValue(Writer, County.GetValue());	
	}
	if (Macroregion.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("macroregion")); WriteJsonValue(Writer, Macroregion.GetValue());	
	}
	if (City.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("city")); WriteJsonValue(Writer, City.GetValue());	
	}
	if (Country.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("country")); WriteJsonValue(Writer, Country.GetValue());	
	}
	if (CountryCode.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("country_code")); WriteJsonValue(Writer, CountryCode.GetValue());	
	}
	if (Continent.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("continent")); WriteJsonValue(Writer, Continent.GetValue());	
	}
	if (Postcode.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("postcode")); WriteJsonValue(Writer, Postcode.GetValue());	
	}
	if (Features.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("features")); WriteJsonValue(Writer, Features.GetValue());	
	}
	Writer->WriteObjectEnd();
}

bool OpenAPIResponseGeocodingProperties::FromJson(const TSharedPtr<FJsonValue>& JsonValue)
{
	const TSharedPtr<FJsonObject>* Object;
	if (!JsonValue->TryGetObject(Object))
		return false;

	bool ParseSuccess = true;

	ParseSuccess &= TryGetJsonValue(*Object, TEXT("name"), Name);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("label"), Label);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("score"), Score);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("house_number"), HouseNumber);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("street"), Street);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("region"), Region);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("region_code"), RegionCode);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("neighbourhood"), Neighbourhood);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("county"), County);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("macroregion"), Macroregion);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("city"), City);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("country"), Country);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("country_code"), CountryCode);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("continent"), Continent);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("postcode"), Postcode);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("features"), Features);

	return ParseSuccess;
}

}
