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
class RESPONSE_BOX 




feature --Access

 	min_lat: REAL_64 
    	 
 	max_lat: REAL_64 
    	 
 	min_lng: REAL_64 
    	 
 	max_lng: REAL_64 
    	 

feature -- Change Element  
 
    set_min_lat (a_name: like min_lat)
        -- Set 'min_lat' with 'a_name'.
      do
        min_lat := a_name
      ensure
        min_lat_set: min_lat = a_name		
      end

    set_max_lat (a_name: like max_lat)
        -- Set 'max_lat' with 'a_name'.
      do
        max_lat := a_name
      ensure
        max_lat_set: max_lat = a_name		
      end

    set_min_lng (a_name: like min_lng)
        -- Set 'min_lng' with 'a_name'.
      do
        min_lng := a_name
      ensure
        min_lng_set: min_lng = a_name		
      end

    set_max_lng (a_name: like max_lng)
        -- Set 'max_lng' with 'a_name'.
      do
        max_lng := a_name
      ensure
        max_lng_set: max_lng = a_name		
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass RESPONSE_BOX%N")
        if attached min_lat as l_min_lat then
          Result.append ("%Nmin_lat:")
          Result.append (l_min_lat.out)
          Result.append ("%N")    
        end  
        if attached max_lat as l_max_lat then
          Result.append ("%Nmax_lat:")
          Result.append (l_max_lat.out)
          Result.append ("%N")    
        end  
        if attached min_lng as l_min_lng then
          Result.append ("%Nmin_lng:")
          Result.append (l_min_lng.out)
          Result.append ("%N")    
        end  
        if attached max_lng as l_max_lng then
          Result.append ("%Nmax_lng:")
          Result.append (l_max_lng.out)
          Result.append ("%N")    
        end  
      end
end


