--[[
  TravelTime Platform API
 
  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 
  OpenAPI spec version: 1.0.0
  Contact: support@igeolise.com
  Generated by: https://openapi-generator.tech
]]

-- request_time_filter_postcode_districts_property class
local request_time_filter_postcode_districts_property = {}
local request_time_filter_postcode_districts_property_mt = {
	__name = "request_time_filter_postcode_districts_property";
	__index = request_time_filter_postcode_districts_property;
}

local function cast_request_time_filter_postcode_districts_property(t)
	return setmetatable(t, request_time_filter_postcode_districts_property_mt)
end

local function new_request_time_filter_postcode_districts_property()
	return cast_request_time_filter_postcode_districts_property({
	})
end

return {
	cast = cast_request_time_filter_postcode_districts_property;
	new = new_request_time_filter_postcode_districts_property;
}