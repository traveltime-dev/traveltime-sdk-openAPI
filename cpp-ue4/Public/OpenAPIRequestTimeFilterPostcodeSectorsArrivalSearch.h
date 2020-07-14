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
#include "OpenAPIRequestRangeFull.h"
#include "OpenAPIRequestTimeFilterPostcodeSectorsProperty.h"
#include "OpenAPIRequestTransportation.h"

namespace OpenAPI 
{

/*
 * OpenAPIRequestTimeFilterPostcodeSectorsArrivalSearch
 *
 * 
 */
class OPENAPI_API OpenAPIRequestTimeFilterPostcodeSectorsArrivalSearch : public Model
{
public:
    virtual ~OpenAPIRequestTimeFilterPostcodeSectorsArrivalSearch() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	FString Id;
	OpenAPIRequestTransportation Transportation;
	int32 TravelTime = 0;
	FDateTime ArrivalTime;
	double ReachablePostcodesThreshold = 0.0;
	TArray<OpenAPIRequestTimeFilterPostcodeSectorsProperty> Properties;
	TOptional<OpenAPIRequestRangeFull> Range;
};

}