--[[
  TravelTime API
 
  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 
  The version of the OpenAPI document: 1.2.2
  Contact: support@igeolise.com
  Generated by: https://openapi-generator.tech
]]

-- request_time_filter_postcodes class
local request_time_filter_postcodes = {}
local request_time_filter_postcodes_mt = {
	__name = "request_time_filter_postcodes";
	__index = request_time_filter_postcodes;
}

local function cast_request_time_filter_postcodes(t)
	return setmetatable(t, request_time_filter_postcodes_mt)
end

local function new_request_time_filter_postcodes(departure_searches, arrival_searches)
	return cast_request_time_filter_postcodes({
		["departure_searches"] = departure_searches;
		["arrival_searches"] = arrival_searches;
	})
end

return {
	cast = cast_request_time_filter_postcodes;
	new = new_request_time_filter_postcodes;
}
