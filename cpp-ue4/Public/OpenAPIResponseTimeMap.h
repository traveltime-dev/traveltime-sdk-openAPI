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

#pragma once

#include "OpenAPIBaseModel.h"
#include "OpenAPIResponseTimeMapResult.h"

namespace OpenAPI 
{

/*
 * OpenAPIResponseTimeMap
 *
 * 
 */
class OPENAPI_API OpenAPIResponseTimeMap : public Model
{
public:
    virtual ~OpenAPIResponseTimeMap() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	TArray<OpenAPIResponseTimeMapResult> Results;
};

}
