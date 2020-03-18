-module(openapi_default_api).

-export([geocoding_reverse_search/3, geocoding_reverse_search/4,
         geocoding_search/2, geocoding_search/3,
         map_info/1, map_info/2,
         routes/2, routes/3,
         supported_locations/2, supported_locations/3,
         time_filter/2, time_filter/3,
         time_filter_fast/2, time_filter_fast/3,
         time_filter_postcode_districts/2, time_filter_postcode_districts/3,
         time_filter_postcode_sectors/2, time_filter_postcode_sectors/3,
         time_filter_postcodes/2, time_filter_postcodes/3,
         time_map/2, time_map/3]).

-define(BASE_URL, "").

%% @doc 
%% 
-spec geocoding_reverse_search(ctx:ctx(), float(), float()) -> {ok, openapi_response_geocoding:openapi_response_geocoding(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
geocoding_reverse_search(Ctx, Lat, Lng) ->
    geocoding_reverse_search(Ctx, Lat, Lng, #{}).

-spec geocoding_reverse_search(ctx:ctx(), float(), float(), maps:map()) -> {ok, openapi_response_geocoding:openapi_response_geocoding(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
geocoding_reverse_search(Ctx, Lat, Lng, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v4/geocoding/reverse"],
    QS = lists:flatten([{<<"lat">>, Lat}, {<<"lng">>, Lng}])++openapi_utils:optional_params(['within.country'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec geocoding_search(ctx:ctx(), binary()) -> {ok, openapi_response_geocoding:openapi_response_geocoding(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
geocoding_search(Ctx, Query) ->
    geocoding_search(Ctx, Query, #{}).

-spec geocoding_search(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_response_geocoding:openapi_response_geocoding(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
geocoding_search(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v4/geocoding/search"],
    QS = lists:flatten([{<<"query">>, Query}])++openapi_utils:optional_params(['focus.lat', 'focus.lng', 'within.country'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec map_info(ctx:ctx()) -> {ok, openapi_response_map_info:openapi_response_map_info(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
map_info(Ctx) ->
    map_info(Ctx, #{}).

-spec map_info(ctx:ctx(), maps:map()) -> {ok, openapi_response_map_info:openapi_response_map_info(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
map_info(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v4/map-info"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec routes(ctx:ctx(), openapi_request_routes:openapi_request_routes()) -> {ok, openapi_response_routes:openapi_response_routes(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
routes(Ctx, OpenapiRequestRoutes) ->
    routes(Ctx, OpenapiRequestRoutes, #{}).

-spec routes(ctx:ctx(), openapi_request_routes:openapi_request_routes(), maps:map()) -> {ok, openapi_response_routes:openapi_response_routes(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
routes(Ctx, OpenapiRequestRoutes, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v4/routes"],
    QS = [],
    Headers = [],
    Body1 = OpenapiRequestRoutes,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec supported_locations(ctx:ctx(), openapi_request_supported_locations:openapi_request_supported_locations()) -> {ok, openapi_response_supported_locations:openapi_response_supported_locations(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
supported_locations(Ctx, OpenapiRequestSupportedLocations) ->
    supported_locations(Ctx, OpenapiRequestSupportedLocations, #{}).

-spec supported_locations(ctx:ctx(), openapi_request_supported_locations:openapi_request_supported_locations(), maps:map()) -> {ok, openapi_response_supported_locations:openapi_response_supported_locations(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
supported_locations(Ctx, OpenapiRequestSupportedLocations, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v4/supported-locations"],
    QS = [],
    Headers = [],
    Body1 = OpenapiRequestSupportedLocations,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec time_filter(ctx:ctx(), openapi_request_time_filter:openapi_request_time_filter()) -> {ok, openapi_response_time_filter:openapi_response_time_filter(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
time_filter(Ctx, OpenapiRequestTimeFilter) ->
    time_filter(Ctx, OpenapiRequestTimeFilter, #{}).

-spec time_filter(ctx:ctx(), openapi_request_time_filter:openapi_request_time_filter(), maps:map()) -> {ok, openapi_response_time_filter:openapi_response_time_filter(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
time_filter(Ctx, OpenapiRequestTimeFilter, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v4/time-filter"],
    QS = [],
    Headers = [],
    Body1 = OpenapiRequestTimeFilter,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec time_filter_fast(ctx:ctx(), openapi_request_time_filter_fast:openapi_request_time_filter_fast()) -> {ok, openapi_response_time_filter_fast:openapi_response_time_filter_fast(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
time_filter_fast(Ctx, OpenapiRequestTimeFilterFast) ->
    time_filter_fast(Ctx, OpenapiRequestTimeFilterFast, #{}).

-spec time_filter_fast(ctx:ctx(), openapi_request_time_filter_fast:openapi_request_time_filter_fast(), maps:map()) -> {ok, openapi_response_time_filter_fast:openapi_response_time_filter_fast(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
time_filter_fast(Ctx, OpenapiRequestTimeFilterFast, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v4/time-filter/fast"],
    QS = [],
    Headers = [],
    Body1 = OpenapiRequestTimeFilterFast,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec time_filter_postcode_districts(ctx:ctx(), openapi_request_time_filter_postcode_districts:openapi_request_time_filter_postcode_districts()) -> {ok, openapi_response_time_filter_postcode_districts:openapi_response_time_filter_postcode_districts(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
time_filter_postcode_districts(Ctx, OpenapiRequestTimeFilterPostcodeDistricts) ->
    time_filter_postcode_districts(Ctx, OpenapiRequestTimeFilterPostcodeDistricts, #{}).

-spec time_filter_postcode_districts(ctx:ctx(), openapi_request_time_filter_postcode_districts:openapi_request_time_filter_postcode_districts(), maps:map()) -> {ok, openapi_response_time_filter_postcode_districts:openapi_response_time_filter_postcode_districts(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
time_filter_postcode_districts(Ctx, OpenapiRequestTimeFilterPostcodeDistricts, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v4/time-filter/postcode-districts"],
    QS = [],
    Headers = [],
    Body1 = OpenapiRequestTimeFilterPostcodeDistricts,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec time_filter_postcode_sectors(ctx:ctx(), openapi_request_time_filter_postcode_sectors:openapi_request_time_filter_postcode_sectors()) -> {ok, openapi_response_time_filter_postcode_sectors:openapi_response_time_filter_postcode_sectors(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
time_filter_postcode_sectors(Ctx, OpenapiRequestTimeFilterPostcodeSectors) ->
    time_filter_postcode_sectors(Ctx, OpenapiRequestTimeFilterPostcodeSectors, #{}).

-spec time_filter_postcode_sectors(ctx:ctx(), openapi_request_time_filter_postcode_sectors:openapi_request_time_filter_postcode_sectors(), maps:map()) -> {ok, openapi_response_time_filter_postcode_sectors:openapi_response_time_filter_postcode_sectors(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
time_filter_postcode_sectors(Ctx, OpenapiRequestTimeFilterPostcodeSectors, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v4/time-filter/postcode-sectors"],
    QS = [],
    Headers = [],
    Body1 = OpenapiRequestTimeFilterPostcodeSectors,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec time_filter_postcodes(ctx:ctx(), openapi_request_time_filter_postcodes:openapi_request_time_filter_postcodes()) -> {ok, openapi_response_time_filter_postcodes:openapi_response_time_filter_postcodes(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
time_filter_postcodes(Ctx, OpenapiRequestTimeFilterPostcodes) ->
    time_filter_postcodes(Ctx, OpenapiRequestTimeFilterPostcodes, #{}).

-spec time_filter_postcodes(ctx:ctx(), openapi_request_time_filter_postcodes:openapi_request_time_filter_postcodes(), maps:map()) -> {ok, openapi_response_time_filter_postcodes:openapi_response_time_filter_postcodes(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
time_filter_postcodes(Ctx, OpenapiRequestTimeFilterPostcodes, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v4/time-filter/postcodes"],
    QS = [],
    Headers = [],
    Body1 = OpenapiRequestTimeFilterPostcodes,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec time_map(ctx:ctx(), openapi_request_time_map:openapi_request_time_map()) -> {ok, openapi_response_time_map:openapi_response_time_map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
time_map(Ctx, OpenapiRequestTimeMap) ->
    time_map(Ctx, OpenapiRequestTimeMap, #{}).

-spec time_map(ctx:ctx(), openapi_request_time_map:openapi_request_time_map(), maps:map()) -> {ok, openapi_response_time_map:openapi_response_time_map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
time_map(Ctx, OpenapiRequestTimeMap, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v4/time-map"],
    QS = [],
    Headers = [],
    Body1 = OpenapiRequestTimeMap,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


