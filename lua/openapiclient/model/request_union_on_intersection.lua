--[[
  TravelTime API
 
  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 
  The version of the OpenAPI document: 1.2.3
  Contact: support@igeolise.com
  Generated by: https://openapi-generator.tech
]]

-- request_union_on_intersection class
local request_union_on_intersection = {}
local request_union_on_intersection_mt = {
	__name = "request_union_on_intersection";
	__index = request_union_on_intersection;
}

local function cast_request_union_on_intersection(t)
	return setmetatable(t, request_union_on_intersection_mt)
end

local function new_request_union_on_intersection(id, search_ids)
	return cast_request_union_on_intersection({
		["id"] = id;
		["search_ids"] = search_ids;
	})
end

return {
	cast = cast_request_union_on_intersection;
	new = new_request_union_on_intersection;
}
