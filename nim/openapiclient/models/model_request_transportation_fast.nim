#
# TravelTime API
# 
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# The version of the OpenAPI document: 1.2.1
# Contact: support@igeolise.com
# Generated by: https://openapi-generator.tech
#

import json
import tables


type `Type`* {.pure.} = enum
  PublicTransport
  Driving
  Driving+publicTransport

type RequestTransportationFast* = object
  ## 
  `type`*: `Type`

func `%`*(v: `Type`): JsonNode =
  let str = case v:
    of `Type`.PublicTransport: "public_transport"
    of `Type`.Driving: "driving"
    of `Type`.Driving+publicTransport: "driving+public_transport"

  JsonNode(kind: JString, str: str)

func `$`*(v: `Type`): string =
  result = case v:
    of `Type`.PublicTransport: "public_transport"
    of `Type`.Driving: "driving"
    of `Type`.Driving+publicTransport: "driving+public_transport"