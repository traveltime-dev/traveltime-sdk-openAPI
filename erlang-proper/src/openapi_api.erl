-module(openapi_api).

-export([ geocoding_reverse_search/2
        , geocoding_search/1
        , map_info/0
        , routes/1
        , supported_locations/1
        , time_filter/1
        , time_filter_fast/1
        , time_filter_postcode_districts/1
        , time_filter_postcode_sectors/1
        , time_filter_postcodes/1
        , time_map/1
        ]).

-define(BASE_URL, "").

%% @doc 
%% 
-spec geocoding_reverse_search(float(), float()) ->
  openapi_utils:response().
geocoding_reverse_search(Lat, Lng) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v4/geocoding/reverse"],
  QueryString = [<<"lat=">>, Lat, <<"&">>, <<"lng=">>, Lng, <<"&">>, <<"within.country=">>, WithinCountry, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec geocoding_search(binary()) ->
  openapi_utils:response().
geocoding_search(Query) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v4/geocoding/search"],
  QueryString = [<<"query=">>, Query, <<"&">>, <<"focus.lat=">>, FocusLat, <<"&">>, <<"focus.lng=">>, FocusLng, <<"&">>, <<"within.country=">>, WithinCountry, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec map_info() ->
  openapi_utils:response().
map_info() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v4/map-info"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% 
-spec routes(openapi_request_routes:openapi_request_routes()) ->
  openapi_utils:response().
routes(OpenapiRequestRoutes) ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v4/routes"],
  Body        = OpenapiRequestRoutes,
  ContentType = hd(["application/json"]),

  openapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% 
-spec supported_locations(openapi_request_supported_locations:openapi_request_supported_locations()) ->
  openapi_utils:response().
supported_locations(OpenapiRequestSupportedLocations) ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v4/supported-locations"],
  Body        = OpenapiRequestSupportedLocations,
  ContentType = hd(["application/json"]),

  openapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% 
-spec time_filter(openapi_request_time_filter:openapi_request_time_filter()) ->
  openapi_utils:response().
time_filter(OpenapiRequestTimeFilter) ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v4/time-filter"],
  Body        = OpenapiRequestTimeFilter,
  ContentType = hd(["application/json"]),

  openapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% 
-spec time_filter_fast(openapi_request_time_filter_fast:openapi_request_time_filter_fast()) ->
  openapi_utils:response().
time_filter_fast(OpenapiRequestTimeFilterFast) ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v4/time-filter/fast"],
  Body        = OpenapiRequestTimeFilterFast,
  ContentType = hd(["application/json"]),

  openapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% 
-spec time_filter_postcode_districts(openapi_request_time_filter_postcode_districts:openapi_request_time_filter_postcode_districts()) ->
  openapi_utils:response().
time_filter_postcode_districts(OpenapiRequestTimeFilterPostcodeDistricts) ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v4/time-filter/postcode-districts"],
  Body        = OpenapiRequestTimeFilterPostcodeDistricts,
  ContentType = hd(["application/json"]),

  openapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% 
-spec time_filter_postcode_sectors(openapi_request_time_filter_postcode_sectors:openapi_request_time_filter_postcode_sectors()) ->
  openapi_utils:response().
time_filter_postcode_sectors(OpenapiRequestTimeFilterPostcodeSectors) ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v4/time-filter/postcode-sectors"],
  Body        = OpenapiRequestTimeFilterPostcodeSectors,
  ContentType = hd(["application/json"]),

  openapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% 
-spec time_filter_postcodes(openapi_request_time_filter_postcodes:openapi_request_time_filter_postcodes()) ->
  openapi_utils:response().
time_filter_postcodes(OpenapiRequestTimeFilterPostcodes) ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v4/time-filter/postcodes"],
  Body        = OpenapiRequestTimeFilterPostcodes,
  ContentType = hd(["application/json"]),

  openapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% 
-spec time_map(openapi_request_time_map:openapi_request_time_map()) ->
  openapi_utils:response().
time_map(OpenapiRequestTimeMap) ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v4/time-map"],
  Body        = OpenapiRequestTimeMap,
  ContentType = hd(["application/json"]),

  openapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

