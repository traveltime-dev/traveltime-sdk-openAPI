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
#include "OpenAPIRequestLocation.h"
#include "OpenAPIRequestRoutesArrivalSearch.h"
#include "OpenAPIRequestRoutesDepartureSearch.h"

namespace OpenAPI 
{

/*
 * OpenAPIRequestRoutes
 *
 * 
 */
class OPENAPI_API OpenAPIRequestRoutes : public Model
{
public:
    virtual ~OpenAPIRequestRoutes() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	TArray<OpenAPIRequestLocation> Locations;
	TOptional<TArray<OpenAPIRequestRoutesDepartureSearch>> DepartureSearches;
	TOptional<TArray<OpenAPIRequestRoutesArrivalSearch>> ArrivalSearches;
};

}