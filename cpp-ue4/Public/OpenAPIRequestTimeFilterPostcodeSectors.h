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
#include "OpenAPIRequestTimeFilterPostcodeSectorsArrivalSearch.h"
#include "OpenAPIRequestTimeFilterPostcodeSectorsDepartureSearch.h"

namespace OpenAPI 
{

/*
 * OpenAPIRequestTimeFilterPostcodeSectors
 *
 * 
 */
class OPENAPI_API OpenAPIRequestTimeFilterPostcodeSectors : public Model
{
public:
    virtual ~OpenAPIRequestTimeFilterPostcodeSectors() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	TOptional<TArray<OpenAPIRequestTimeFilterPostcodeSectorsDepartureSearch>> DepartureSearches;
	TOptional<TArray<OpenAPIRequestTimeFilterPostcodeSectorsArrivalSearch>> ArrivalSearches;
};

}