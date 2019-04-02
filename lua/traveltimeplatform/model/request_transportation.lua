--[[
  TravelTime Platform API
 
  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 
  OpenAPI spec version: 1.0.0
  Contact: support@igeolise.com
  Generated by: https://openapi-generator.tech
]]

-- request_transportation class
local request_transportation = {}
local request_transportation_mt = {
	__name = "request_transportation";
	__index = request_transportation;
}

local function cast_request_transportation(t)
	return setmetatable(t, request_transportation_mt)
end

local function new_request_transportation(type, pt_change_delay, walking_time, driving_time_to_station, parking_time, boarding_time)
	return cast_request_transportation({
		["type"] = type;
		["pt_change_delay"] = pt_change_delay;
		["walking_time"] = walking_time;
		["driving_time_to_station"] = driving_time_to_station;
		["parking_time"] = parking_time;
		["boarding_time"] = boarding_time;
	})
end

return {
	cast = cast_request_transportation;
	new = new_request_transportation;
}