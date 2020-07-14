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

#pragma once

#include "OpenAPIBaseModel.h"
#include "OpenAPIResponseTimeMapWktResult.h"

namespace OpenAPI 
{

/*
 * OpenAPIResponseTimeMapWkt
 *
 * 
 */
class OPENAPI_API OpenAPIResponseTimeMapWkt : public Model
{
public:
    virtual ~OpenAPIResponseTimeMapWkt() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	TArray<OpenAPIResponseTimeMapWktResult> Results;
};

}