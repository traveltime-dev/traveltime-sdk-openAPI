--[[
  TravelTime API
 
  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 
  The version of the OpenAPI document: 1.2.3
  Contact: support@igeolise.com
  Generated by: https://openapi-generator.tech
]]

-- request_time_filter_property class
local request_time_filter_property = {}
local request_time_filter_property_mt = {
	__name = "request_time_filter_property";
	__index = request_time_filter_property;
}

local function cast_request_time_filter_property(t)
	return setmetatable(t, request_time_filter_property_mt)
end

local function new_request_time_filter_property()
	return cast_request_time_filter_property({
	})
end

return {
	cast = cast_request_time_filter_property;
	new = new_request_time_filter_property;
}
