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

import model_response_map_info_features

type ResponseGeocodingProperties* = object
  ## 
  name*: string
  label*: string
  score*: float64
  houseNumber*: string
  street*: string
  region*: string
  regionCode*: string
  neighbourhood*: string
  county*: string
  macroregion*: string
  city*: string
  country*: string
  countryCode*: string
  continent*: string
  postcode*: string
  features*: ResponseMapInfoFeatures
