--[[
  TravelTime API
 
  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 
  The version of the OpenAPI document: 1.2.3
  Contact: support@igeolise.com
  Generated by: https://openapi-generator.tech
]]

-- response_time_map_bounding_boxes class
local response_time_map_bounding_boxes = {}
local response_time_map_bounding_boxes_mt = {
	__name = "response_time_map_bounding_boxes";
	__index = response_time_map_bounding_boxes;
}

local function cast_response_time_map_bounding_boxes(t)
	return setmetatable(t, response_time_map_bounding_boxes_mt)
end

local function new_response_time_map_bounding_boxes(results)
	return cast_response_time_map_bounding_boxes({
		["results"] = results;
	})
end

return {
	cast = cast_response_time_map_bounding_boxes;
	new = new_response_time_map_bounding_boxes;
}
