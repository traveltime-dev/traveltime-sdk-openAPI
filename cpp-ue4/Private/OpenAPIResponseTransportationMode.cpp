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

#include "OpenAPIResponseTransportationMode.h"

#include "OpenAPIModule.h"
#include "OpenAPIHelpers.h"

#include "Templates/SharedPointer.h"

namespace OpenAPI 
{

inline FString ToString(const OpenAPIResponseTransportationMode::Values& Value)
{
	switch (Value)
	{
	case OpenAPIResponseTransportationMode::Values::Car:
		return TEXT("car");
	case OpenAPIResponseTransportationMode::Values::Parking:
		return TEXT("parking");
	case OpenAPIResponseTransportationMode::Values::Boarding:
		return TEXT("boarding");
	case OpenAPIResponseTransportationMode::Values::Walk:
		return TEXT("walk");
	case OpenAPIResponseTransportationMode::Values::Bike:
		return TEXT("bike");
	case OpenAPIResponseTransportationMode::Values::Train:
		return TEXT("train");
	case OpenAPIResponseTransportationMode::Values::RailNational:
		return TEXT("rail_national");
	case OpenAPIResponseTransportationMode::Values::RailOverground:
		return TEXT("rail_overground");
	case OpenAPIResponseTransportationMode::Values::RailUnderground:
		return TEXT("rail_underground");
	case OpenAPIResponseTransportationMode::Values::RailDlr:
		return TEXT("rail_dlr");
	case OpenAPIResponseTransportationMode::Values::Bus:
		return TEXT("bus");
	case OpenAPIResponseTransportationMode::Values::CableCar:
		return TEXT("cable_car");
	case OpenAPIResponseTransportationMode::Values::Plane:
		return TEXT("plane");
	case OpenAPIResponseTransportationMode::Values::Ferry:
		return TEXT("ferry");
	case OpenAPIResponseTransportationMode::Values::Coach:
		return TEXT("coach");
	}

	UE_LOG(LogOpenAPI, Error, TEXT("Invalid OpenAPIResponseTransportationMode::Values Value (%d)"), (int)Value);	
	return TEXT("");
}

inline FStringFormatArg ToStringFormatArg(const OpenAPIResponseTransportationMode::Values& Value)
{
	return FStringFormatArg(ToString(Value));
}

inline void WriteJsonValue(JsonWriter& Writer, const OpenAPIResponseTransportationMode::Values& Value)
{
	WriteJsonValue(Writer, ToString(Value));
}

inline bool TryGetJsonValue(const TSharedPtr<FJsonValue>& JsonValue, OpenAPIResponseTransportationMode::Values& Value)
{
	FString TmpValue;
	if (JsonValue->TryGetString(TmpValue))
	{
		static TMap<FString, OpenAPIResponseTransportationMode::Values> StringToEnum = { 
			{ TEXT("car"), OpenAPIResponseTransportationMode::Values::Car },
			{ TEXT("parking"), OpenAPIResponseTransportationMode::Values::Parking },
			{ TEXT("boarding"), OpenAPIResponseTransportationMode::Values::Boarding },
			{ TEXT("walk"), OpenAPIResponseTransportationMode::Values::Walk },
			{ TEXT("bike"), OpenAPIResponseTransportationMode::Values::Bike },
			{ TEXT("train"), OpenAPIResponseTransportationMode::Values::Train },
			{ TEXT("rail_national"), OpenAPIResponseTransportationMode::Values::RailNational },
			{ TEXT("rail_overground"), OpenAPIResponseTransportationMode::Values::RailOverground },
			{ TEXT("rail_underground"), OpenAPIResponseTransportationMode::Values::RailUnderground },
			{ TEXT("rail_dlr"), OpenAPIResponseTransportationMode::Values::RailDlr },
			{ TEXT("bus"), OpenAPIResponseTransportationMode::Values::Bus },
			{ TEXT("cable_car"), OpenAPIResponseTransportationMode::Values::CableCar },
			{ TEXT("plane"), OpenAPIResponseTransportationMode::Values::Plane },
			{ TEXT("ferry"), OpenAPIResponseTransportationMode::Values::Ferry },
			{ TEXT("coach"), OpenAPIResponseTransportationMode::Values::Coach }, };

		const auto Found = StringToEnum.Find(TmpValue);
		if(Found)
		{
			Value = *Found;
			return true;
		}
	}
	return false;
}

void OpenAPIResponseTransportationMode::WriteJson(JsonWriter& Writer) const
{
	WriteJsonValue(Writer, Value);
}

bool OpenAPIResponseTransportationMode::FromJson(const TSharedPtr<FJsonValue>& JsonValue)
{
	return TryGetJsonValue(JsonValue, Value);
}

}