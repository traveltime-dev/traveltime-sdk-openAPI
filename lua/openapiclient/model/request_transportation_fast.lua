--[[
  TravelTime API
 
  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 
  The version of the OpenAPI document: 1.2.1
  Contact: support@igeolise.com
  Generated by: https://openapi-generator.tech
]]

-- request_transportation_fast class
local request_transportation_fast = {}
local request_transportation_fast_mt = {
	__name = "request_transportation_fast";
	__index = request_transportation_fast;
}

local function cast_request_transportation_fast(t)
	return setmetatable(t, request_transportation_fast_mt)
end

local function new_request_transportation_fast(type)
	return cast_request_transportation_fast({
		["type"] = type;
	})
end

return {
	cast = cast_request_transportation_fast;
	new = new_request_transportation_fast;
}