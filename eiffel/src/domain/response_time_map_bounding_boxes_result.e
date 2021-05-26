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
class RESPONSE_TIME_MAP_BOUNDING_BOXES_RESULT 




feature --Access

    search_id: detachable STRING_32 
      
    bounding_boxes: detachable LIST [RESPONSE_BOUNDING_BOX] 
      
    properties: detachable RESPONSE_TIME_MAP_PROPERTIES 
      

feature -- Change Element  
 
    set_search_id (a_name: like search_id)
        -- Set 'search_id' with 'a_name'.
      do
        search_id := a_name
      ensure
        search_id_set: search_id = a_name		
      end

    set_bounding_boxes (a_name: like bounding_boxes)
        -- Set 'bounding_boxes' with 'a_name'.
      do
        bounding_boxes := a_name
      ensure
        bounding_boxes_set: bounding_boxes = a_name		
      end

    set_properties (a_name: like properties)
        -- Set 'properties' with 'a_name'.
      do
        properties := a_name
      ensure
        properties_set: properties = a_name		
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass RESPONSE_TIME_MAP_BOUNDING_BOXES_RESULT%N")
        if attached search_id as l_search_id then
          Result.append ("%Nsearch_id:")
          Result.append (l_search_id.out)
          Result.append ("%N")    
        end  
        if attached bounding_boxes as l_bounding_boxes then
          across l_bounding_boxes as ic loop
            Result.append ("%N bounding_boxes:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end 
        if attached properties as l_properties then
          Result.append ("%Nproperties:")
          Result.append (l_properties.out)
          Result.append ("%N")    
        end  
      end
end


