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

import model_request_time_filter_postcodes_arrival_search
import model_request_time_filter_postcodes_departure_search

type RequestTimeFilterPostcodes* = object
  ## 
  departureSearches*: seq[RequestTimeFilterPostcodesDepartureSearch]
  arrivalSearches*: seq[RequestTimeFilterPostcodesArrivalSearch]
