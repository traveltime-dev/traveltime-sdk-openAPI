-module(traveltimeplatform_api).

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
  traveltimeplatform_utils:response().
geocoding_reverse_search(FocusLat, FocusLng) ->
  Method      = get,
  Host        = application:get_env(traveltimeplatform, host, "http://localhost:8080"),
  Path        = ["/v4/geocoding/reverse"],
  QueryString = [<<"focus.lat=">>, FocusLat, <<"&">>, <<"focus.lng=">>, FocusLng, <<"&">>, <<"within.country=">>, WithinCountry, <<"&">>],

  traveltimeplatform_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec geocoding_search(binary()) ->
  traveltimeplatform_utils:response().
geocoding_search(Query) ->
  Method      = get,
  Host        = application:get_env(traveltimeplatform, host, "http://localhost:8080"),
  Path        = ["/v4/geocoding/search"],
  QueryString = [<<"query=">>, Query, <<"&">>, <<"within.country=">>, WithinCountry, <<"&">>, <<"focus.lat=">>, FocusLat, <<"&">>, <<"focus.lng=">>, FocusLng, <<"&">>],

  traveltimeplatform_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec map_info() ->
  traveltimeplatform_utils:response().
map_info() ->
  Method      = get,
  Host        = application:get_env(traveltimeplatform, host, "http://localhost:8080"),
  Path        = ["/v4/map-info"],

  traveltimeplatform_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% 
-spec routes(traveltimeplatform_request_routes:traveltimeplatform_request_routes()) ->
  traveltimeplatform_utils:response().
routes(TraveltimeplatformRequestRoutes) ->
  Method      = post,
  Host        = application:get_env(traveltimeplatform, host, "http://localhost:8080"),
  Path        = ["/v4/routes"],
  Body        = TraveltimeplatformRequestRoutes,
  ContentType = hd(["application/json"]),

  traveltimeplatform_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% 
-spec supported_locations(traveltimeplatform_request_supported_locations:traveltimeplatform_request_supported_locations()) ->
  traveltimeplatform_utils:response().
supported_locations(TraveltimeplatformRequestSupportedLocations) ->
  Method      = post,
  Host        = application:get_env(traveltimeplatform, host, "http://localhost:8080"),
  Path        = ["/v4/supported-locations"],
  Body        = TraveltimeplatformRequestSupportedLocations,
  ContentType = hd(["application/json"]),

  traveltimeplatform_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% 
-spec time_filter(traveltimeplatform_request_time_filter:traveltimeplatform_request_time_filter()) ->
  traveltimeplatform_utils:response().
time_filter(TraveltimeplatformRequestTimeFilter) ->
  Method      = post,
  Host        = application:get_env(traveltimeplatform, host, "http://localhost:8080"),
  Path        = ["/v4/time-filter"],
  Body        = TraveltimeplatformRequestTimeFilter,
  ContentType = hd(["application/json"]),

  traveltimeplatform_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% 
-spec time_filter_fast(traveltimeplatform_request_time_filter_fast:traveltimeplatform_request_time_filter_fast()) ->
  traveltimeplatform_utils:response().
time_filter_fast(TraveltimeplatformRequestTimeFilterFast) ->
  Method      = post,
  Host        = application:get_env(traveltimeplatform, host, "http://localhost:8080"),
  Path        = ["/v4/time-filter/fast"],
  Body        = TraveltimeplatformRequestTimeFilterFast,
  ContentType = hd(["application/json"]),

  traveltimeplatform_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% 
-spec time_filter_postcode_districts(traveltimeplatform_request_time_filter_postcode_districts:traveltimeplatform_request_time_filter_postcode_districts()) ->
  traveltimeplatform_utils:response().
time_filter_postcode_districts(TraveltimeplatformRequestTimeFilterPostcodeDistricts) ->
  Method      = post,
  Host        = application:get_env(traveltimeplatform, host, "http://localhost:8080"),
  Path        = ["/v4/time-filter/postcode-districts"],
  Body        = TraveltimeplatformRequestTimeFilterPostcodeDistricts,
  ContentType = hd(["application/json"]),

  traveltimeplatform_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% 
-spec time_filter_postcode_sectors(traveltimeplatform_request_time_filter_postcode_sectors:traveltimeplatform_request_time_filter_postcode_sectors()) ->
  traveltimeplatform_utils:response().
time_filter_postcode_sectors(TraveltimeplatformRequestTimeFilterPostcodeSectors) ->
  Method      = post,
  Host        = application:get_env(traveltimeplatform, host, "http://localhost:8080"),
  Path        = ["/v4/time-filter/postcode-sectors"],
  Body        = TraveltimeplatformRequestTimeFilterPostcodeSectors,
  ContentType = hd(["application/json"]),

  traveltimeplatform_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% 
-spec time_filter_postcodes(traveltimeplatform_request_time_filter_postcodes:traveltimeplatform_request_time_filter_postcodes()) ->
  traveltimeplatform_utils:response().
time_filter_postcodes(TraveltimeplatformRequestTimeFilterPostcodes) ->
  Method      = post,
  Host        = application:get_env(traveltimeplatform, host, "http://localhost:8080"),
  Path        = ["/v4/time-filter/postcodes"],
  Body        = TraveltimeplatformRequestTimeFilterPostcodes,
  ContentType = hd(["application/json"]),

  traveltimeplatform_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% 
-spec time_map(traveltimeplatform_request_time_map:traveltimeplatform_request_time_map()) ->
  traveltimeplatform_utils:response().
time_map(TraveltimeplatformRequestTimeMap) ->
  Method      = post,
  Host        = application:get_env(traveltimeplatform, host, "http://localhost:8080"),
  Path        = ["/v4/time-map"],
  Body        = TraveltimeplatformRequestTimeMap,
  ContentType = hd(["application/json"]),

  traveltimeplatform_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

