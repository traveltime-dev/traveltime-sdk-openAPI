note
 description:"[
		TravelTime API
 		No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
  		The version of the OpenAPI document: 1.2.2
 	    Contact: support@igeolise.com

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class RESPONSE_TRANSPORTATION_MODE

feature -- Access

  value: detachable STRING_32
      -- enumerated value.
    note
            option: stable
    attribute
    end

feature -- Enum

 val_car: RESPONSE_TRANSPORTATION_MODE
    once
      create Result
      Result.set_value ("car")
    end

 val_parking: RESPONSE_TRANSPORTATION_MODE
    once
      create Result
      Result.set_value ("parking")
    end

 val_boarding: RESPONSE_TRANSPORTATION_MODE
    once
      create Result
      Result.set_value ("boarding")
    end

 val_walk: RESPONSE_TRANSPORTATION_MODE
    once
      create Result
      Result.set_value ("walk")
    end

 val_bike: RESPONSE_TRANSPORTATION_MODE
    once
      create Result
      Result.set_value ("bike")
    end

 val_train: RESPONSE_TRANSPORTATION_MODE
    once
      create Result
      Result.set_value ("train")
    end

 val_rail_national: RESPONSE_TRANSPORTATION_MODE
    once
      create Result
      Result.set_value ("rail_national")
    end

 val_rail_overground: RESPONSE_TRANSPORTATION_MODE
    once
      create Result
      Result.set_value ("rail_overground")
    end

 val_rail_underground: RESPONSE_TRANSPORTATION_MODE
    once
      create Result
      Result.set_value ("rail_underground")
    end

 val_rail_dlr: RESPONSE_TRANSPORTATION_MODE
    once
      create Result
      Result.set_value ("rail_dlr")
    end

 val_bus: RESPONSE_TRANSPORTATION_MODE
    once
      create Result
      Result.set_value ("bus")
    end

 val_cable_car: RESPONSE_TRANSPORTATION_MODE
    once
      create Result
      Result.set_value ("cable_car")
    end

 val_plane: RESPONSE_TRANSPORTATION_MODE
    once
      create Result
      Result.set_value ("plane")
    end

 val_ferry: RESPONSE_TRANSPORTATION_MODE
    once
      create Result
      Result.set_value ("ferry")
    end

 val_coach: RESPONSE_TRANSPORTATION_MODE
    once
      create Result
      Result.set_value ("coach")
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


