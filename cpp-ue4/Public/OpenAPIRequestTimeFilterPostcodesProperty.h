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

namespace OpenAPI 
{

/*
 * OpenAPIRequestTimeFilterPostcodesProperty
 *
 * 
 */
class OPENAPI_API OpenAPIRequestTimeFilterPostcodesProperty : public Model
{
public:
    virtual ~OpenAPIRequestTimeFilterPostcodesProperty() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	enum class Values
	{
		TravelTime,
		Distance,
  	};

	Values Value;
};

}
