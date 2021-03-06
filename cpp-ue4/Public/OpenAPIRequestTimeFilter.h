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
#include "OpenAPIRequestLocation.h"
#include "OpenAPIRequestTimeFilterArrivalSearch.h"
#include "OpenAPIRequestTimeFilterDepartureSearch.h"

namespace OpenAPI 
{

/*
 * OpenAPIRequestTimeFilter
 *
 * 
 */
class OPENAPI_API OpenAPIRequestTimeFilter : public Model
{
public:
    virtual ~OpenAPIRequestTimeFilter() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	TArray<OpenAPIRequestLocation> Locations;
	TOptional<TArray<OpenAPIRequestTimeFilterDepartureSearch>> DepartureSearches;
	TOptional<TArray<OpenAPIRequestTimeFilterArrivalSearch>> ArrivalSearches;
};

}
