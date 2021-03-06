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

#include "OpenAPIResponseFareTicket.h"

#include "OpenAPIModule.h"
#include "OpenAPIHelpers.h"

#include "Templates/SharedPointer.h"

namespace OpenAPI 
{

inline FString ToString(const OpenAPIResponseFareTicket::TypeEnum& Value)
{
	switch (Value)
	{
	case OpenAPIResponseFareTicket::TypeEnum::Single:
		return TEXT("single");
	case OpenAPIResponseFareTicket::TypeEnum::Week:
		return TEXT("week");
	case OpenAPIResponseFareTicket::TypeEnum::Month:
		return TEXT("month");
	case OpenAPIResponseFareTicket::TypeEnum::Year:
		return TEXT("year");
	}

	UE_LOG(LogOpenAPI, Error, TEXT("Invalid OpenAPIResponseFareTicket::TypeEnum Value (%d)"), (int)Value);	
	return TEXT("");
}

FString OpenAPIResponseFareTicket::EnumToString(const OpenAPIResponseFareTicket::TypeEnum& EnumValue)
{
	return ToString(EnumValue);
}

inline bool FromString(const FString& EnumAsString, OpenAPIResponseFareTicket::TypeEnum& Value)
{
	static TMap<FString, OpenAPIResponseFareTicket::TypeEnum> StringToEnum = { 
		{ TEXT("single"), OpenAPIResponseFareTicket::TypeEnum::Single },
		{ TEXT("week"), OpenAPIResponseFareTicket::TypeEnum::Week },
		{ TEXT("month"), OpenAPIResponseFareTicket::TypeEnum::Month },
		{ TEXT("year"), OpenAPIResponseFareTicket::TypeEnum::Year }, };

	const auto Found = StringToEnum.Find(EnumAsString);
	if(Found)
		Value = *Found;

	return Found != nullptr;
}

bool OpenAPIResponseFareTicket::EnumFromString(const FString& EnumAsString, OpenAPIResponseFareTicket::TypeEnum& EnumValue)
{
	return FromString(EnumAsString, EnumValue);
}

inline FStringFormatArg ToStringFormatArg(const OpenAPIResponseFareTicket::TypeEnum& Value)
{
	return FStringFormatArg(ToString(Value));
}

inline void WriteJsonValue(JsonWriter& Writer, const OpenAPIResponseFareTicket::TypeEnum& Value)
{
	WriteJsonValue(Writer, ToString(Value));
}

inline bool TryGetJsonValue(const TSharedPtr<FJsonValue>& JsonValue, OpenAPIResponseFareTicket::TypeEnum& Value)
{
	FString TmpValue;
	if (JsonValue->TryGetString(TmpValue))
	{
		if(FromString(TmpValue, Value))
			return true;
	}
	return false;
}

void OpenAPIResponseFareTicket::WriteJson(JsonWriter& Writer) const
{
	Writer->WriteObjectStart();
	Writer->WriteIdentifierPrefix(TEXT("type")); WriteJsonValue(Writer, Type);
	Writer->WriteIdentifierPrefix(TEXT("price")); WriteJsonValue(Writer, Price);
	Writer->WriteIdentifierPrefix(TEXT("currency")); WriteJsonValue(Writer, Currency);
	Writer->WriteObjectEnd();
}

bool OpenAPIResponseFareTicket::FromJson(const TSharedPtr<FJsonValue>& JsonValue)
{
	const TSharedPtr<FJsonObject>* Object;
	if (!JsonValue->TryGetObject(Object))
		return false;

	bool ParseSuccess = true;

	ParseSuccess &= TryGetJsonValue(*Object, TEXT("type"), Type);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("price"), Price);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("currency"), Currency);

	return ParseSuccess;
}

}
