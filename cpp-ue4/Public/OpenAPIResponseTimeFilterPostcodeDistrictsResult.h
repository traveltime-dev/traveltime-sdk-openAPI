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
#include "OpenAPIResponseTimeFilterPostcodeDistrict.h"

namespace OpenAPI 
{

/*
 * OpenAPIResponseTimeFilterPostcodeDistrictsResult
 *
 * 
 */
class OPENAPI_API OpenAPIResponseTimeFilterPostcodeDistrictsResult : public Model
{
public:
    virtual ~OpenAPIResponseTimeFilterPostcodeDistrictsResult() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	FString SearchId;
	TArray<OpenAPIResponseTimeFilterPostcodeDistrict> Districts;
};

}
