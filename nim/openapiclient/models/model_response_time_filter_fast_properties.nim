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

import model_response_fares_fast

type ResponseTimeFilterFastProperties* = object
  ## 
  travelTime*: int
  fares*: ResponseFaresFast
