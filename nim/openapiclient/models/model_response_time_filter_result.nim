#
# TravelTime API
# 
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# The version of the OpenAPI document: 1.2.3
# Contact: support@igeolise.com
# Generated by: https://openapi-generator.tech
#

import json
import tables

import model_response_time_filter_location

type ResponseTimeFilterResult* = object
  ## 
  searchId*: string
  locations*: seq[ResponseTimeFilterLocation]
  unreachable*: seq[string]
