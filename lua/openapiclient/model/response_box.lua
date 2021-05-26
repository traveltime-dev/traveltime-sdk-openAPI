--[[
  TravelTime API
 
  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 
  The version of the OpenAPI document: 1.2.3
  Contact: support@igeolise.com
  Generated by: https://openapi-generator.tech
]]

-- response_box class
local response_box = {}
local response_box_mt = {
	__name = "response_box";
	__index = response_box;
}

local function cast_response_box(t)
	return setmetatable(t, response_box_mt)
end

local function new_response_box(min_lat, max_lat, min_lng, max_lng)
	return cast_response_box({
		["min_lat"] = min_lat;
		["max_lat"] = max_lat;
		["min_lng"] = min_lng;
		["max_lng"] = max_lng;
	})
end

return {
	cast = cast_response_box;
	new = new_response_box;
}
