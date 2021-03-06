--[[
  TravelTime API
 
  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 
  The version of the OpenAPI document: 1.2.3
  Contact: support@igeolise.com
  Generated by: https://openapi-generator.tech
]]

-- request_time_map class
local request_time_map = {}
local request_time_map_mt = {
	__name = "request_time_map";
	__index = request_time_map;
}

local function cast_request_time_map(t)
	return setmetatable(t, request_time_map_mt)
end

local function new_request_time_map(departure_searches, arrival_searches, unions, intersections)
	return cast_request_time_map({
		["departure_searches"] = departure_searches;
		["arrival_searches"] = arrival_searches;
		["unions"] = unions;
		["intersections"] = intersections;
	})
end

return {
	cast = cast_request_time_map;
	new = new_request_time_map;
}
