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


type ResponseBox* = object
  ## 
  minLat*: float64
  maxLat*: float64
  minLng*: float64
  maxLng*: float64
