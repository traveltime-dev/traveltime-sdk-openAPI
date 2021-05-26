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

#pragma once

#include "OpenAPIBaseModel.h"
#include "OpenAPICoords.h"

namespace OpenAPI 
{

/*
 * OpenAPIRequestLocation
 *
 * 
 */
class OPENAPI_API OpenAPIRequestLocation : public Model
{
public:
    virtual ~OpenAPIRequestLocation() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	FString Id;
	OpenAPICoords Coords;
};

}
