/// mime types for requests and responses

pub mod responses {
    use hyper::mime::*;

    // The macro is called per-operation to beat the recursion limit

    lazy_static! {
        /// Create Mime objects for the response content types for GeocodingReverseSearch
        pub static ref GEOCODING_REVERSE_SEARCH_MATCH_A_QUERY_STRING_TO_GEOGRAPHIC_COORDINATES: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for GeocodingReverseSearch
        pub static ref GEOCODING_REVERSE_SEARCH_THE_JSON_BODY_RETURNED_UPON_ERROR: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for GeocodingSearch
        pub static ref GEOCODING_SEARCH_MATCH_A_QUERY_STRING_TO_GEOGRAPHIC_COORDINATES: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for GeocodingSearch
        pub static ref GEOCODING_SEARCH_THE_JSON_BODY_RETURNED_UPON_ERROR: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for MapInfo
        pub static ref MAP_INFO_RETURNS_INFORMATION_ABOUT_CURRENTLY_SUPPORTED_COUNTRIES: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for MapInfo
        pub static ref MAP_INFO_THE_JSON_BODY_RETURNED_UPON_ERROR: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for Routes
        pub static ref ROUTES_RETURNS_ROUTING_INFORMATION_BETWEEN_SOURCE_AND_DESTINATIONS: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for Routes
        pub static ref ROUTES_THE_JSON_BODY_RETURNED_UPON_ERROR: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for SupportedLocations
        pub static ref SUPPORTED_LOCATIONS_FIND_OUT_WHAT_POINTS_ARE_SUPPORTED_BY_OUR_API: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for SupportedLocations
        pub static ref SUPPORTED_LOCATIONS_THE_JSON_BODY_RETURNED_UPON_ERROR: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for TimeFilter
        pub static ref TIME_FILTER_GIVEN_ORIGIN_AND_DESTINATION_POINTS_FILTER_OUT_POINTS_THAT_CANNOT_BE_REACHED_WITHIN_SPECIFIED_TIME_LIMIT: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for TimeFilter
        pub static ref TIME_FILTER_THE_JSON_BODY_RETURNED_UPON_ERROR: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for TimeFilterFast
        pub static ref TIME_FILTER_FAST_A_VERY_FAST_VERSION_OF_TIME_FILTER: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for TimeFilterFast
        pub static ref TIME_FILTER_FAST_THE_JSON_BODY_RETURNED_UPON_ERROR: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for TimeFilterPostcodeDistricts
        pub static ref TIME_FILTER_POSTCODE_DISTRICTS_FIND_DISTRICTS_THAT_HAVE_A_CERTAIN_COVERAGE_FROM_ORIGIN_AND_GET_STATISTICS_ABOUT_POSTCODES_WITHIN_SUCH_DISTRICTS: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for TimeFilterPostcodeDistricts
        pub static ref TIME_FILTER_POSTCODE_DISTRICTS_THE_JSON_BODY_RETURNED_UPON_ERROR: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for TimeFilterPostcodeSectors
        pub static ref TIME_FILTER_POSTCODE_SECTORS_FIND_SECTORS_THAT_HAVE_A_CERTAIN_COVERAGE_FROM_ORIGIN_AND_GET_STATISTICS_ABOUT_POSTCODES_WITHIN_SUCH_SECTORS: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for TimeFilterPostcodeSectors
        pub static ref TIME_FILTER_POSTCODE_SECTORS_THE_JSON_BODY_RETURNED_UPON_ERROR: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for TimeFilterPostcodes
        pub static ref TIME_FILTER_POSTCODES_FIND_REACHABLE_POSTCODES_FROM_ORIGIN_AND_GET_STATISTICS_ABOUT_SUCH_POSTCODES: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for TimeFilterPostcodes
        pub static ref TIME_FILTER_POSTCODES_THE_JSON_BODY_RETURNED_UPON_ERROR: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for TimeMap
        pub static ref TIME_MAP_GIVEN_ORIGIN_COORDINATES: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the response content types for TimeMap
        pub static ref TIME_MAP_THE_JSON_BODY_RETURNED_UPON_ERROR: Mime = "application/json".parse().unwrap();
    }

}

pub mod requests {
    use hyper::mime::*;

    lazy_static! {
        /// Create Mime objects for the request content types for Routes
        pub static ref ROUTES: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the request content types for SupportedLocations
        pub static ref SUPPORTED_LOCATIONS: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the request content types for TimeFilter
        pub static ref TIME_FILTER: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the request content types for TimeFilterFast
        pub static ref TIME_FILTER_FAST: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the request content types for TimeFilterPostcodeDistricts
        pub static ref TIME_FILTER_POSTCODE_DISTRICTS: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the request content types for TimeFilterPostcodeSectors
        pub static ref TIME_FILTER_POSTCODE_SECTORS: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the request content types for TimeFilterPostcodes
        pub static ref TIME_FILTER_POSTCODES: Mime = "application/json".parse().unwrap();
    }

    lazy_static! {
        /// Create Mime objects for the request content types for TimeMap
        pub static ref TIME_MAP: Mime = "application/json".parse().unwrap();
    }

}
