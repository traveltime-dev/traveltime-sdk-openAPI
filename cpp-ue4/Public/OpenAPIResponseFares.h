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
#include "OpenAPIResponseFareTicket.h"
#include "OpenAPIResponseFaresBreakdownItem.h"

namespace OpenAPI 
{

/*
 * OpenAPIResponseFares
 *
 * 
 */
class OPENAPI_API OpenAPIResponseFares : public Model
{
public:
    virtual ~OpenAPIResponseFares() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	TArray<OpenAPIResponseFaresBreakdownItem> Breakdown;
	TArray<OpenAPIResponseFareTicket> TicketsTotal;
};

}
