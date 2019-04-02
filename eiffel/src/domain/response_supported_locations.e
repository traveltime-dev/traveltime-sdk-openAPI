note
 description:"[
		TravelTime Platform API
 		No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
  		OpenAPI spec version: 1.0.0
 	    Contact: support@igeolise.com

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class RESPONSE_SUPPORTED_LOCATIONS 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    locations: detachable LIST [RESPONSE_SUPPORTED_LOCATION] 
      
    unsupported_locations: detachable LIST [STRING_32] 
      

feature -- Change Element  
 
    set_locations (a_name: like locations)
        -- Set 'locations' with 'a_name'.
      do
        locations := a_name
      ensure
        locations_set: locations = a_name		
      end

    set_unsupported_locations (a_name: like unsupported_locations)
        -- Set 'unsupported_locations' with 'a_name'.
      do
        unsupported_locations := a_name
      ensure
        unsupported_locations_set: unsupported_locations = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass RESPONSE_SUPPORTED_LOCATIONS%N")
        if attached locations as l_locations then
          across l_locations as ic loop
            Result.append ("%N locations:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end 
        if attached unsupported_locations as l_unsupported_locations then
          across l_unsupported_locations as ic loop
            Result.append ("%N unsupported_locations:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end 
      end
end

