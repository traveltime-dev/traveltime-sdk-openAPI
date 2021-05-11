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

#include "OpenAPIRequestTransportationFast.h"

#include "OpenAPIModule.h"
#include "OpenAPIHelpers.h"

#include "Templates/SharedPointer.h"

namespace OpenAPI 
{

inline FString ToString(const OpenAPIRequestTransportationFast::TypeEnum& Value)
{
	switch (Value)
	{
	case OpenAPIRequestTransportationFast::TypeEnum::PublicTransport:
		return TEXT("public_transport");
	case OpenAPIRequestTransportationFast::TypeEnum::Driving:
		return TEXT("driving");
	case OpenAPIRequestTransportationFast::TypeEnum::DrivingpublicTransport:
		return TEXT("driving+public_transport");
	}

	UE_LOG(LogOpenAPI, Error, TEXT("Invalid OpenAPIRequestTransportationFast::TypeEnum Value (%d)"), (int)Value);	
	return TEXT("");
}

inline FStringFormatArg ToStringFormatArg(const OpenAPIRequestTransportationFast::TypeEnum& Value)
{
	return FStringFormatArg(ToString(Value));
}

inline void WriteJsonValue(JsonWriter& Writer, const OpenAPIRequestTransportationFast::TypeEnum& Value)
{
	WriteJsonValue(Writer, ToString(Value));
}

inline bool TryGetJsonValue(const TSharedPtr<FJsonValue>& JsonValue, OpenAPIRequestTransportationFast::TypeEnum& Value)
{
	FString TmpValue;
	if (JsonValue->TryGetString(TmpValue))
	{
		static TMap<FString, OpenAPIRequestTransportationFast::TypeEnum> StringToEnum = { 
			{ TEXT("public_transport"), OpenAPIRequestTransportationFast::TypeEnum::PublicTransport },
			{ TEXT("driving"), OpenAPIRequestTransportationFast::TypeEnum::Driving },
			{ TEXT("driving+public_transport"), OpenAPIRequestTransportationFast::TypeEnum::DrivingpublicTransport }, };

		const auto Found = StringToEnum.Find(TmpValue);
		if(Found)
		{
			Value = *Found;
			return true;
		}
	}
	return false;
}

void OpenAPIRequestTransportationFast::WriteJson(JsonWriter& Writer) const
{
	Writer->WriteObjectStart();
	Writer->WriteIdentifierPrefix(TEXT("type")); WriteJsonValue(Writer, Type);
	Writer->WriteObjectEnd();
}

bool OpenAPIRequestTransportationFast::FromJson(const TSharedPtr<FJsonValue>& JsonValue)
{
	const TSharedPtr<FJsonObject>* Object;
	if (!JsonValue->TryGetObject(Object))
		return false;

	bool ParseSuccess = true;

	ParseSuccess &= TryGetJsonValue(*Object, TEXT("type"), Type);

	return ParseSuccess;
}

}
