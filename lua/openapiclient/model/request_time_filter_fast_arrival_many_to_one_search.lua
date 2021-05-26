--[[
  TravelTime API
 
  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 
  The version of the OpenAPI document: 1.2.3
  Contact: support@igeolise.com
  Generated by: https://openapi-generator.tech
]]

-- request_time_filter_fast_arrival_many_to_one_search class
local request_time_filter_fast_arrival_many_to_one_search = {}
local request_time_filter_fast_arrival_many_to_one_search_mt = {
	__name = "request_time_filter_fast_arrival_many_to_one_search";
	__index = request_time_filter_fast_arrival_many_to_one_search;
}

local function cast_request_time_filter_fast_arrival_many_to_one_search(t)
	return setmetatable(t, request_time_filter_fast_arrival_many_to_one_search_mt)
end

local function new_request_time_filter_fast_arrival_many_to_one_search(id, arrival_location_id, departure_location_ids, transportation, travel_time, arrival_time_period, properties)
	return cast_request_time_filter_fast_arrival_many_to_one_search({
		["id"] = id;
		["arrival_location_id"] = arrival_location_id;
		["departure_location_ids"] = departure_location_ids;
		["transportation"] = transportation;
		["travel_time"] = travel_time;
		["arrival_time_period"] = arrival_time_period;
		["properties"] = properties;
	})
end

return {
	cast = cast_request_time_filter_fast_arrival_many_to_one_search;
	new = new_request_time_filter_fast_arrival_many_to_one_search;
}
