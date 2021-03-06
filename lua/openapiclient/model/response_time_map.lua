--[[
  TravelTime API
 
  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 
  The version of the OpenAPI document: 1.2.3
  Contact: support@igeolise.com
  Generated by: https://openapi-generator.tech
]]

-- response_time_map class
local response_time_map = {}
local response_time_map_mt = {
	__name = "response_time_map";
	__index = response_time_map;
}

local function cast_response_time_map(t)
	return setmetatable(t, response_time_map_mt)
end

local function new_response_time_map(results)
	return cast_response_time_map({
		["results"] = results;
	})
end

return {
	cast = cast_response_time_map;
	new = new_response_time_map;
}
