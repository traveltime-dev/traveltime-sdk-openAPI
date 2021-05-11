#
# TravelTime API
# 
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# The version of the OpenAPI document: 1.2.2
# Contact: support@igeolise.com
# Generated by: https://openapi-generator.tech
#

import json
import tables

import model_request_range_full
import model_request_routes_property
import model_request_transportation

type RequestRoutesDepartureSearch* = object
  ## 
  id*: string
  departureLocationId*: string
  arrivalLocationIds*: seq[string]
  transportation*: RequestTransportation
  departureTime*: string
  properties*: seq[RequestRoutesProperty]
  range*: RequestRangeFull
