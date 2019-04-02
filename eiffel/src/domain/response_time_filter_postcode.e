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
class RESPONSE_TIME_FILTER_POSTCODE 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    code: detachable STRING 
      
    properties: detachable LIST [RESPONSE_TIME_FILTER_POSTCODES_PROPERTIES] 
      

feature -- Change Element  
 
    set_code (a_name: like code)
        -- Set 'code' with 'a_name'.
      do
        code := a_name
      ensure
        code_set: code = a_name		
      end

    set_properties (a_name: like properties)
        -- Set 'properties' with 'a_name'.
      do
        properties := a_name
      ensure
        properties_set: properties = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass RESPONSE_TIME_FILTER_POSTCODE%N")
        if attached code as l_code then
          Result.append ("%Ncode:")
          Result.append (l_code.out)
          Result.append ("%N")    
        end  
        if attached properties as l_properties then
          across l_properties as ic loop
            Result.append ("%N properties:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end 
      end
end

