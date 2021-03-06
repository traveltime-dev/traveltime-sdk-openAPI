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
 * RequestTransportation
 *
 * @package OpenAPIServer\Model
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 */
class RequestTransportation extends BaseModel
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
  "required" : [ "type" ],
  "type" : "object",
  "properties" : {
    "type" : {
      "type" : "string",
      "enum" : [ "cycling", "driving", "driving+train", "public_transport", "walking", "coach", "bus", "train", "ferry", "driving+ferry", "cycling+ferry" ]
    },
    "disable_border_crossing" : {
      "type" : "boolean"
    },
    "pt_change_delay" : {
      "type" : "integer"
    },
    "walking_time" : {
      "type" : "integer"
    },
    "driving_time_to_station" : {
      "type" : "integer"
    },
    "cycling_time_to_station" : {
      "type" : "integer"
    },
    "parking_time" : {
      "type" : "integer"
    },
    "boarding_time" : {
      "type" : "integer"
    }
  }
}
SCHEMA;
}
