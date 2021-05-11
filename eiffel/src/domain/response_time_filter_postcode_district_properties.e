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
class RESPONSE_TIME_FILTER_POSTCODE_DISTRICT_PROPERTIES 




feature --Access

    travel_time_reachable: detachable RESPONSE_TRAVEL_TIME_STATISTICS 
      
    travel_time_all: detachable RESPONSE_TRAVEL_TIME_STATISTICS 
      
 	coverage: REAL_64 
    	 

feature -- Change Element  
 
    set_travel_time_reachable (a_name: like travel_time_reachable)
        -- Set 'travel_time_reachable' with 'a_name'.
      do
        travel_time_reachable := a_name
      ensure
        travel_time_reachable_set: travel_time_reachable = a_name		
      end

    set_travel_time_all (a_name: like travel_time_all)
        -- Set 'travel_time_all' with 'a_name'.
      do
        travel_time_all := a_name
      ensure
        travel_time_all_set: travel_time_all = a_name		
      end

    set_coverage (a_name: like coverage)
        -- Set 'coverage' with 'a_name'.
      do
        coverage := a_name
      ensure
        coverage_set: coverage = a_name		
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass RESPONSE_TIME_FILTER_POSTCODE_DISTRICT_PROPERTIES%N")
        if attached travel_time_reachable as l_travel_time_reachable then
          Result.append ("%Ntravel_time_reachable:")
          Result.append (l_travel_time_reachable.out)
          Result.append ("%N")    
        end  
        if attached travel_time_all as l_travel_time_all then
          Result.append ("%Ntravel_time_all:")
          Result.append (l_travel_time_all.out)
          Result.append ("%N")    
        end  
        if attached coverage as l_coverage then
          Result.append ("%Ncoverage:")
          Result.append (l_coverage.out)
          Result.append ("%N")    
        end  
      end
end


