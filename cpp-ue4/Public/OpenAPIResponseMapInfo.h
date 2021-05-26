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
#include "OpenAPIResponseMapInfoMap.h"

namespace OpenAPI 
{

/*
 * OpenAPIResponseMapInfo
 *
 * 
 */
class OPENAPI_API OpenAPIResponseMapInfo : public Model
{
public:
    virtual ~OpenAPIResponseMapInfo() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	TArray<OpenAPIResponseMapInfoMap> Maps;
};

}
