note
 description:"[
		TravelTime API
 		No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
  		The version of the OpenAPI document: 1.2.3
 	    Contact: support@igeolise.com

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class REQUEST_TIME_FILTER_POSTCODE_DISTRICTS_PROPERTY

feature -- Access

  value: detachable STRING_32
      -- enumerated value.
    note
            option: stable
    attribute
    end

feature -- Enum

 val_travel_time_reachable: REQUEST_TIME_FILTER_POSTCODE_DISTRICTS_PROPERTY
    once
      create Result
      Result.set_value ("travel_time_reachable")
    end

 val_travel_time_all: REQUEST_TIME_FILTER_POSTCODE_DISTRICTS_PROPERTY
    once
      create Result
      Result.set_value ("travel_time_all")
    end

 val_coverage: REQUEST_TIME_FILTER_POSTCODE_DISTRICTS_PROPERTY
    once
      create Result
      Result.set_value ("coverage")
    end


feature -- Element Change

  set_value (a_val: like value)
      -- Set `value' with `a_value'.
    do
      value := a_val
    ensure
      value_set: value = a_val
    end


end


