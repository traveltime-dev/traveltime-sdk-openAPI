note
    description: "API tests for DEFAULT_API"
    date: "$Date$"
    revision: "$Revision$"


class DEFAULT_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines

    
    test_geocoding_reverse_search
            -- 
            -- 
            --  
        local
            l_response: RESPONSE_GEOCODING
            l_focus_lat: REAL_64
            l_focus_lng: REAL_64
            l_within_country: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_focus_lat
            -- l_focus_lng
                      
            -- l_response := api.geocoding_reverse_search(l_focus_lat, l_focus_lng, l_within_country)
            assert ("not_implemented", False)
        end
    
    test_geocoding_search
            -- 
            -- 
            --  
        local
            l_response: RESPONSE_GEOCODING
            l_query: STRING_32
            l_within_country: STRING_32
            l_focus_lat: REAL_64
            l_focus_lng: REAL_64
        do
            -- TODO: Initialize required params.
            -- l_query
                      
            -- l_response := api.geocoding_search(l_query, l_within_country, l_focus_lat, l_focus_lng)
            assert ("not_implemented", False)
        end
    
    test_map_info
            -- 
            -- 
            --  
        local
            l_response: RESPONSE_MAP_INFO
        do
            -- TODO: Initialize required params.
                      
            -- l_response := api.map_info
            assert ("not_implemented", False)
        end
    
    test_routes
            -- 
            -- 
            --  
        local
            l_response: RESPONSE_ROUTES
            l_request_routes: REQUEST_ROUTES
        do
            -- TODO: Initialize required params.
            -- l_request_routes
                      
            -- l_response := api.routes(l_request_routes)
            assert ("not_implemented", False)
        end
    
    test_supported_locations
            -- 
            -- 
            --  
        local
            l_response: RESPONSE_SUPPORTED_LOCATIONS
            l_request_supported_locations: REQUEST_SUPPORTED_LOCATIONS
        do
            -- TODO: Initialize required params.
            -- l_request_supported_locations
                      
            -- l_response := api.supported_locations(l_request_supported_locations)
            assert ("not_implemented", False)
        end
    
    test_time_filter
            -- 
            -- 
            --  
        local
            l_response: RESPONSE_TIME_FILTER
            l_request_time_filter: REQUEST_TIME_FILTER
        do
            -- TODO: Initialize required params.
            -- l_request_time_filter
                      
            -- l_response := api.time_filter(l_request_time_filter)
            assert ("not_implemented", False)
        end
    
    test_time_filter_fast
            -- 
            -- 
            --  
        local
            l_response: RESPONSE_TIME_FILTER_FAST
            l_request_time_filter_fast: REQUEST_TIME_FILTER_FAST
        do
            -- TODO: Initialize required params.
            -- l_request_time_filter_fast
                      
            -- l_response := api.time_filter_fast(l_request_time_filter_fast)
            assert ("not_implemented", False)
        end
    
    test_time_filter_postcode_districts
            -- 
            -- 
            --  
        local
            l_response: RESPONSE_TIME_FILTER_POSTCODE_DISTRICTS
            l_request_time_filter_postcode_districts: REQUEST_TIME_FILTER_POSTCODE_DISTRICTS
        do
            -- TODO: Initialize required params.
            -- l_request_time_filter_postcode_districts
                      
            -- l_response := api.time_filter_postcode_districts(l_request_time_filter_postcode_districts)
            assert ("not_implemented", False)
        end
    
    test_time_filter_postcode_sectors
            -- 
            -- 
            --  
        local
            l_response: RESPONSE_TIME_FILTER_POSTCODE_SECTORS
            l_request_time_filter_postcode_sectors: REQUEST_TIME_FILTER_POSTCODE_SECTORS
        do
            -- TODO: Initialize required params.
            -- l_request_time_filter_postcode_sectors
                      
            -- l_response := api.time_filter_postcode_sectors(l_request_time_filter_postcode_sectors)
            assert ("not_implemented", False)
        end
    
    test_time_filter_postcodes
            -- 
            -- 
            --  
        local
            l_response: RESPONSE_TIME_FILTER_POSTCODES
            l_request_time_filter_postcodes: REQUEST_TIME_FILTER_POSTCODES
        do
            -- TODO: Initialize required params.
            -- l_request_time_filter_postcodes
                      
            -- l_response := api.time_filter_postcodes(l_request_time_filter_postcodes)
            assert ("not_implemented", False)
        end
    
    test_time_map
            -- 
            -- 
            --  
        local
            l_response: RESPONSE_TIME_MAP
            l_request_time_map: REQUEST_TIME_MAP
        do
            -- TODO: Initialize required params.
            -- l_request_time_map
                      
            -- l_response := api.time_map(l_request_time_map)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: DEFAULT_API
            -- Create an object instance of `DEFAULT_API'.
        once            
            create { DEFAULT_API } Result
        end

end
