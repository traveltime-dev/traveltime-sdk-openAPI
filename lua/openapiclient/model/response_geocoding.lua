--[[
  TravelTime API
 
  No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 
  The version of the OpenAPI document: 1.2.3
  Contact: support@igeolise.com
  Generated by: https://openapi-generator.tech
]]

-- response_geocoding class
local response_geocoding = {}
local response_geocoding_mt = {
	__name = "response_geocoding";
	__index = response_geocoding;
}

local function cast_response_geocoding(t)
	return setmetatable(t, response_geocoding_mt)
end

local function new_response_geocoding(type, features)
	return cast_response_geocoding({
		["type"] = type;
		["features"] = features;
	})
end

return {
	cast = cast_response_geocoding;
	new = new_response_geocoding;
}
