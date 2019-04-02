require 'json'


MyApp.add_route('GET', '/v4/geocoding/reverse', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "geocoding_reverse_search", 
  "responseClass" => "ResponseGeocoding",
  "endpoint" => "/v4/geocoding/reverse", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "focus_lat",
      "description" => "",
      "dataType" => "Float",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "focus_lng",
      "description" => "",
      "dataType" => "Float",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "within_country",
      "description" => "",
      "dataType" => "String",
      "allowableValues" => "",
      "paramType" => "query",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/v4/geocoding/search', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "geocoding_search", 
  "responseClass" => "ResponseGeocoding",
  "endpoint" => "/v4/geocoding/search", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "query",
      "description" => "",
      "dataType" => "String",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "within_country",
      "description" => "",
      "dataType" => "String",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "focus_lat",
      "description" => "",
      "dataType" => "Float",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "focus_lng",
      "description" => "",
      "dataType" => "Float",
      "allowableValues" => "",
      "paramType" => "query",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/v4/map-info', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "map_info", 
  "responseClass" => "ResponseMapInfo",
  "endpoint" => "/v4/map-info", 
  "notes" => "",
  "parameters" => [
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '/v4/routes', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "routes", 
  "responseClass" => "ResponseRoutes",
  "endpoint" => "/v4/routes", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "body",
      "description" => "",
      "dataType" => "RequestRoutes",
      "paramType" => "body",
    }
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '/v4/supported-locations', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "supported_locations", 
  "responseClass" => "ResponseSupportedLocations",
  "endpoint" => "/v4/supported-locations", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "body",
      "description" => "",
      "dataType" => "RequestSupportedLocations",
      "paramType" => "body",
    }
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '/v4/time-filter', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "time_filter", 
  "responseClass" => "ResponseTimeFilter",
  "endpoint" => "/v4/time-filter", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "body",
      "description" => "",
      "dataType" => "RequestTimeFilter",
      "paramType" => "body",
    }
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '/v4/time-filter/fast', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "time_filter_fast", 
  "responseClass" => "ResponseTimeFilterFast",
  "endpoint" => "/v4/time-filter/fast", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "body",
      "description" => "",
      "dataType" => "RequestTimeFilterFast",
      "paramType" => "body",
    }
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '/v4/time-filter/postcode-districts', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "time_filter_postcode_districts", 
  "responseClass" => "ResponseTimeFilterPostcodeDistricts",
  "endpoint" => "/v4/time-filter/postcode-districts", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "body",
      "description" => "",
      "dataType" => "RequestTimeFilterPostcodeDistricts",
      "paramType" => "body",
    }
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '/v4/time-filter/postcode-sectors', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "time_filter_postcode_sectors", 
  "responseClass" => "ResponseTimeFilterPostcodeSectors",
  "endpoint" => "/v4/time-filter/postcode-sectors", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "body",
      "description" => "",
      "dataType" => "RequestTimeFilterPostcodeSectors",
      "paramType" => "body",
    }
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '/v4/time-filter/postcodes', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "time_filter_postcodes", 
  "responseClass" => "ResponseTimeFilterPostcodes",
  "endpoint" => "/v4/time-filter/postcodes", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "body",
      "description" => "",
      "dataType" => "RequestTimeFilterPostcodes",
      "paramType" => "body",
    }
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '/v4/time-map', {
  "resourcePath" => "/Default",
  "summary" => "",
  "nickname" => "time_map", 
  "responseClass" => "ResponseTimeMap",
  "endpoint" => "/v4/time-map", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "body",
      "description" => "",
      "dataType" => "RequestTimeMap",
      "paramType" => "body",
    }
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end

