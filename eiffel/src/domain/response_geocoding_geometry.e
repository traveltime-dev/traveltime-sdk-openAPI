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
class RESPONSE_GEOCODING_GEOMETRY 




feature --Access

    type: detachable STRING_32 
      
 	coordinates: detachable LIST [REAL_64] 
    	 

feature -- Change Element  
 
    set_type (a_name: like type)
        -- Set 'type' with 'a_name'.
      do
        type := a_name
      ensure
        type_set: type = a_name		
      end

    set_coordinates (a_name: like coordinates)
        -- Set 'coordinates' with 'a_name'.
      do
        coordinates := a_name
      ensure
        coordinates_set: coordinates = a_name		
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass RESPONSE_GEOCODING_GEOMETRY%N")
        if attached type as l_type then
          Result.append ("%Ntype:")
          Result.append (l_type.out)
          Result.append ("%N")    
        end  
        if attached coordinates as l_coordinates then
          across l_coordinates as ic loop
            Result.append ("%N coordinates:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end 
      end
end


