=begin
#TravelTime Platform API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: 1.0.0
Contact: support@igeolise.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module OpenapiClient
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param focus_lat 
    # @param focus_lng 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :within_country 
    # @return [ResponseGeocoding]
    def geocoding_reverse_search(focus_lat, focus_lng, opts = {})
      data, _status_code, _headers = geocoding_reverse_search_with_http_info(focus_lat, focus_lng, opts)
      data
    end

    # @param focus_lat 
    # @param focus_lng 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :within_country 
    # @return [Array<(ResponseGeocoding, Fixnum, Hash)>] ResponseGeocoding data, response status code and response headers
    def geocoding_reverse_search_with_http_info(focus_lat, focus_lng, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.geocoding_reverse_search ...'
      end
      # verify the required parameter 'focus_lat' is set
      if @api_client.config.client_side_validation && focus_lat.nil?
        fail ArgumentError, "Missing the required parameter 'focus_lat' when calling DefaultApi.geocoding_reverse_search"
      end
      # verify the required parameter 'focus_lng' is set
      if @api_client.config.client_side_validation && focus_lng.nil?
        fail ArgumentError, "Missing the required parameter 'focus_lng' when calling DefaultApi.geocoding_reverse_search"
      end
      # resource path
      local_var_path = '/v4/geocoding/reverse'

      # query parameters
      query_params = {}
      query_params[:'focus.lat'] = focus_lat
      query_params[:'focus.lng'] = focus_lng
      query_params[:'within.country'] = opts[:'within_country'] if !opts[:'within_country'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKey', 'ApplicationId']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResponseGeocoding')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#geocoding_reverse_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param query 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :within_country 
    # @option opts [Float] :focus_lat 
    # @option opts [Float] :focus_lng 
    # @return [ResponseGeocoding]
    def geocoding_search(query, opts = {})
      data, _status_code, _headers = geocoding_search_with_http_info(query, opts)
      data
    end

    # @param query 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :within_country 
    # @option opts [Float] :focus_lat 
    # @option opts [Float] :focus_lng 
    # @return [Array<(ResponseGeocoding, Fixnum, Hash)>] ResponseGeocoding data, response status code and response headers
    def geocoding_search_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.geocoding_search ...'
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling DefaultApi.geocoding_search"
      end
      # resource path
      local_var_path = '/v4/geocoding/search'

      # query parameters
      query_params = {}
      query_params[:'query'] = query
      query_params[:'within.country'] = opts[:'within_country'] if !opts[:'within_country'].nil?
      query_params[:'focus.lat'] = opts[:'focus_lat'] if !opts[:'focus_lat'].nil?
      query_params[:'focus.lng'] = opts[:'focus_lng'] if !opts[:'focus_lng'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKey', 'ApplicationId']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResponseGeocoding')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#geocoding_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param [Hash] opts the optional parameters
    # @return [ResponseMapInfo]
    def map_info(opts = {})
      data, _status_code, _headers = map_info_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponseMapInfo, Fixnum, Hash)>] ResponseMapInfo data, response status code and response headers
    def map_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.map_info ...'
      end
      # resource path
      local_var_path = '/v4/map-info'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKey', 'ApplicationId']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResponseMapInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#map_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param request_routes 
    # @param [Hash] opts the optional parameters
    # @return [ResponseRoutes]
    def routes(request_routes, opts = {})
      data, _status_code, _headers = routes_with_http_info(request_routes, opts)
      data
    end

    # @param request_routes 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponseRoutes, Fixnum, Hash)>] ResponseRoutes data, response status code and response headers
    def routes_with_http_info(request_routes, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.routes ...'
      end
      # verify the required parameter 'request_routes' is set
      if @api_client.config.client_side_validation && request_routes.nil?
        fail ArgumentError, "Missing the required parameter 'request_routes' when calling DefaultApi.routes"
      end
      # resource path
      local_var_path = '/v4/routes'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request_routes)
      auth_names = ['ApiKey', 'ApplicationId']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResponseRoutes')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#routes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param request_supported_locations 
    # @param [Hash] opts the optional parameters
    # @return [ResponseSupportedLocations]
    def supported_locations(request_supported_locations, opts = {})
      data, _status_code, _headers = supported_locations_with_http_info(request_supported_locations, opts)
      data
    end

    # @param request_supported_locations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponseSupportedLocations, Fixnum, Hash)>] ResponseSupportedLocations data, response status code and response headers
    def supported_locations_with_http_info(request_supported_locations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.supported_locations ...'
      end
      # verify the required parameter 'request_supported_locations' is set
      if @api_client.config.client_side_validation && request_supported_locations.nil?
        fail ArgumentError, "Missing the required parameter 'request_supported_locations' when calling DefaultApi.supported_locations"
      end
      # resource path
      local_var_path = '/v4/supported-locations'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request_supported_locations)
      auth_names = ['ApiKey', 'ApplicationId']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResponseSupportedLocations')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#supported_locations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param request_time_filter 
    # @param [Hash] opts the optional parameters
    # @return [ResponseTimeFilter]
    def time_filter(request_time_filter, opts = {})
      data, _status_code, _headers = time_filter_with_http_info(request_time_filter, opts)
      data
    end

    # @param request_time_filter 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponseTimeFilter, Fixnum, Hash)>] ResponseTimeFilter data, response status code and response headers
    def time_filter_with_http_info(request_time_filter, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.time_filter ...'
      end
      # verify the required parameter 'request_time_filter' is set
      if @api_client.config.client_side_validation && request_time_filter.nil?
        fail ArgumentError, "Missing the required parameter 'request_time_filter' when calling DefaultApi.time_filter"
      end
      # resource path
      local_var_path = '/v4/time-filter'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request_time_filter)
      auth_names = ['ApiKey', 'ApplicationId']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResponseTimeFilter')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#time_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param request_time_filter_fast 
    # @param [Hash] opts the optional parameters
    # @return [ResponseTimeFilterFast]
    def time_filter_fast(request_time_filter_fast, opts = {})
      data, _status_code, _headers = time_filter_fast_with_http_info(request_time_filter_fast, opts)
      data
    end

    # @param request_time_filter_fast 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponseTimeFilterFast, Fixnum, Hash)>] ResponseTimeFilterFast data, response status code and response headers
    def time_filter_fast_with_http_info(request_time_filter_fast, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.time_filter_fast ...'
      end
      # verify the required parameter 'request_time_filter_fast' is set
      if @api_client.config.client_side_validation && request_time_filter_fast.nil?
        fail ArgumentError, "Missing the required parameter 'request_time_filter_fast' when calling DefaultApi.time_filter_fast"
      end
      # resource path
      local_var_path = '/v4/time-filter/fast'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request_time_filter_fast)
      auth_names = ['ApiKey', 'ApplicationId']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResponseTimeFilterFast')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#time_filter_fast\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param request_time_filter_postcode_districts 
    # @param [Hash] opts the optional parameters
    # @return [ResponseTimeFilterPostcodeDistricts]
    def time_filter_postcode_districts(request_time_filter_postcode_districts, opts = {})
      data, _status_code, _headers = time_filter_postcode_districts_with_http_info(request_time_filter_postcode_districts, opts)
      data
    end

    # @param request_time_filter_postcode_districts 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponseTimeFilterPostcodeDistricts, Fixnum, Hash)>] ResponseTimeFilterPostcodeDistricts data, response status code and response headers
    def time_filter_postcode_districts_with_http_info(request_time_filter_postcode_districts, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.time_filter_postcode_districts ...'
      end
      # verify the required parameter 'request_time_filter_postcode_districts' is set
      if @api_client.config.client_side_validation && request_time_filter_postcode_districts.nil?
        fail ArgumentError, "Missing the required parameter 'request_time_filter_postcode_districts' when calling DefaultApi.time_filter_postcode_districts"
      end
      # resource path
      local_var_path = '/v4/time-filter/postcode-districts'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request_time_filter_postcode_districts)
      auth_names = ['ApiKey', 'ApplicationId']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResponseTimeFilterPostcodeDistricts')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#time_filter_postcode_districts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param request_time_filter_postcode_sectors 
    # @param [Hash] opts the optional parameters
    # @return [ResponseTimeFilterPostcodeSectors]
    def time_filter_postcode_sectors(request_time_filter_postcode_sectors, opts = {})
      data, _status_code, _headers = time_filter_postcode_sectors_with_http_info(request_time_filter_postcode_sectors, opts)
      data
    end

    # @param request_time_filter_postcode_sectors 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponseTimeFilterPostcodeSectors, Fixnum, Hash)>] ResponseTimeFilterPostcodeSectors data, response status code and response headers
    def time_filter_postcode_sectors_with_http_info(request_time_filter_postcode_sectors, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.time_filter_postcode_sectors ...'
      end
      # verify the required parameter 'request_time_filter_postcode_sectors' is set
      if @api_client.config.client_side_validation && request_time_filter_postcode_sectors.nil?
        fail ArgumentError, "Missing the required parameter 'request_time_filter_postcode_sectors' when calling DefaultApi.time_filter_postcode_sectors"
      end
      # resource path
      local_var_path = '/v4/time-filter/postcode-sectors'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request_time_filter_postcode_sectors)
      auth_names = ['ApiKey', 'ApplicationId']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResponseTimeFilterPostcodeSectors')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#time_filter_postcode_sectors\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param request_time_filter_postcodes 
    # @param [Hash] opts the optional parameters
    # @return [ResponseTimeFilterPostcodes]
    def time_filter_postcodes(request_time_filter_postcodes, opts = {})
      data, _status_code, _headers = time_filter_postcodes_with_http_info(request_time_filter_postcodes, opts)
      data
    end

    # @param request_time_filter_postcodes 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponseTimeFilterPostcodes, Fixnum, Hash)>] ResponseTimeFilterPostcodes data, response status code and response headers
    def time_filter_postcodes_with_http_info(request_time_filter_postcodes, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.time_filter_postcodes ...'
      end
      # verify the required parameter 'request_time_filter_postcodes' is set
      if @api_client.config.client_side_validation && request_time_filter_postcodes.nil?
        fail ArgumentError, "Missing the required parameter 'request_time_filter_postcodes' when calling DefaultApi.time_filter_postcodes"
      end
      # resource path
      local_var_path = '/v4/time-filter/postcodes'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request_time_filter_postcodes)
      auth_names = ['ApiKey', 'ApplicationId']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResponseTimeFilterPostcodes')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#time_filter_postcodes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param request_time_map 
    # @param [Hash] opts the optional parameters
    # @return [ResponseTimeMap]
    def time_map(request_time_map, opts = {})
      data, _status_code, _headers = time_map_with_http_info(request_time_map, opts)
      data
    end

    # @param request_time_map 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponseTimeMap, Fixnum, Hash)>] ResponseTimeMap data, response status code and response headers
    def time_map_with_http_info(request_time_map, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.time_map ...'
      end
      # verify the required parameter 'request_time_map' is set
      if @api_client.config.client_side_validation && request_time_map.nil?
        fail ArgumentError, "Missing the required parameter 'request_time_map' when calling DefaultApi.time_map"
      end
      # resource path
      local_var_path = '/v4/time-map'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/vnd.wkt+json', 'application/vnd.wkt-no-holes+json', 'application/vnd.bounding-boxes+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request_time_map)
      auth_names = ['ApiKey', 'ApplicationId']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResponseTimeMap')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#time_map\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end