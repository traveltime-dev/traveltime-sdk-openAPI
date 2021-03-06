<?php

/**
 * TravelTime API
 * PHP version 7.2
 *
 * @package OpenAPIServer
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 */

/**
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

/**
 * NOTE: This class is auto generated by the openapi generator program.
 * https://github.com/openapitools/openapi-generator
 */
namespace OpenAPIServer\Model;

use OpenAPIServer\BaseModel;

/**
 * RequestTimeFilterFastArrivalOneToManySearch
 *
 * @package OpenAPIServer\Model
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 */
class RequestTimeFilterFastArrivalOneToManySearch extends BaseModel
{
    /**
     * @var string Models namespace.
     * Can be required for data deserialization when model contains referenced schemas.
     */
    protected const MODELS_NAMESPACE = '\OpenAPIServer\Model';

    /**
     * @var string Constant with OAS schema of current class.
     * Should be overwritten by inherited class.
     */
    protected const MODEL_SCHEMA = <<<'SCHEMA'
{
  "required" : [ "arrival_location_ids", "arrival_time_period", "departure_location_id", "id", "properties", "transportation", "travel_time" ],
  "type" : "object",
  "properties" : {
    "id" : {
      "$ref" : "#/components/schemas/RequestSearchId"
    },
    "departure_location_id" : {
      "type" : "string"
    },
    "arrival_location_ids" : {
      "maxItems" : 100000,
      "minItems" : 1,
      "type" : "array",
      "items" : {
        "type" : "string"
      }
    },
    "transportation" : {
      "$ref" : "#/components/schemas/RequestTransportationFast"
    },
    "travel_time" : {
      "$ref" : "#/components/schemas/RequestTravelTime"
    },
    "arrival_time_period" : {
      "$ref" : "#/components/schemas/RequestArrivalTimePeriod"
    },
    "properties" : {
      "type" : "array",
      "items" : {
        "$ref" : "#/components/schemas/RequestTimeFilterFastProperty"
      }
    }
  }
}
SCHEMA;
}
