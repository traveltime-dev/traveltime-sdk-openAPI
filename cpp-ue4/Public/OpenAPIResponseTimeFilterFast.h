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
#include "OpenAPIResponseTimeFilterFastResult.h"

namespace OpenAPI 
{

/*
 * OpenAPIResponseTimeFilterFast
 *
 * 
 */
class OPENAPI_API OpenAPIResponseTimeFilterFast : public Model
{
public:
    virtual ~OpenAPIResponseTimeFilterFast() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	TArray<OpenAPIResponseTimeFilterFastResult> Results;
};

}
