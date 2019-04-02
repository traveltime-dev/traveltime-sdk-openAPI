-module(traveltimeplatform_default_api).

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
-spec geocoding_reverse_search(ctx:ctx(), float(), float()) -> {ok, traveltimeplatform_response_geocoding:traveltimeplatform_response_geocoding(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
geocoding_reverse_search(Ctx, FocusLat, FocusLng) ->
    geocoding_reverse_search(Ctx, FocusLat, FocusLng, #{}).

-spec geocoding_reverse_search(ctx:ctx(), float(), float(), maps:map()) -> {ok, traveltimeplatform_response_geocoding:traveltimeplatform_response_geocoding(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
geocoding_reverse_search(Ctx, FocusLat, FocusLng, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v4/geocoding/reverse"],
    QS = lists:flatten([{<<"focus.lat">>, FocusLat}, {<<"focus.lng">>, FocusLng}])++traveltimeplatform_utils:optional_params(['within.country'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = traveltimeplatform_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    traveltimeplatform_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec geocoding_search(ctx:ctx(), binary()) -> {ok, traveltimeplatform_response_geocoding:traveltimeplatform_response_geocoding(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
geocoding_search(Ctx, Query) ->
    geocoding_search(Ctx, Query, #{}).

-spec geocoding_search(ctx:ctx(), binary(), maps:map()) -> {ok, traveltimeplatform_response_geocoding:traveltimeplatform_response_geocoding(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
geocoding_search(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v4/geocoding/search"],
    QS = lists:flatten([{<<"query">>, Query}])++traveltimeplatform_utils:optional_params(['within.country', 'focus.lat', 'focus.lng'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = traveltimeplatform_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    traveltimeplatform_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec map_info(ctx:ctx()) -> {ok, traveltimeplatform_response_map_info:traveltimeplatform_response_map_info(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
map_info(Ctx) ->
    map_info(Ctx, #{}).

-spec map_info(ctx:ctx(), maps:map()) -> {ok, traveltimeplatform_response_map_info:traveltimeplatform_response_map_info(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
map_info(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v4/map-info"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = traveltimeplatform_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    traveltimeplatform_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec routes(ctx:ctx(), traveltimeplatform_request_routes:traveltimeplatform_request_routes()) -> {ok, traveltimeplatform_response_routes:traveltimeplatform_response_routes(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
routes(Ctx, TraveltimeplatformRequestRoutes) ->
    routes(Ctx, TraveltimeplatformRequestRoutes, #{}).

-spec routes(ctx:ctx(), traveltimeplatform_request_routes:traveltimeplatform_request_routes(), maps:map()) -> {ok, traveltimeplatform_response_routes:traveltimeplatform_response_routes(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
routes(Ctx, TraveltimeplatformRequestRoutes, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v4/routes"],
    QS = [],
    Headers = [],
    Body1 = TraveltimeplatformRequestRoutes,
    ContentTypeHeader = traveltimeplatform_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    traveltimeplatform_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec supported_locations(ctx:ctx(), traveltimeplatform_request_supported_locations:traveltimeplatform_request_supported_locations()) -> {ok, traveltimeplatform_response_supported_locations:traveltimeplatform_response_supported_locations(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
supported_locations(Ctx, TraveltimeplatformRequestSupportedLocations) ->
    supported_locations(Ctx, TraveltimeplatformRequestSupportedLocations, #{}).

-spec supported_locations(ctx:ctx(), traveltimeplatform_request_supported_locations:traveltimeplatform_request_supported_locations(), maps:map()) -> {ok, traveltimeplatform_response_supported_locations:traveltimeplatform_response_supported_locations(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
supported_locations(Ctx, TraveltimeplatformRequestSupportedLocations, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v4/supported-locations"],
    QS = [],
    Headers = [],
    Body1 = TraveltimeplatformRequestSupportedLocations,
    ContentTypeHeader = traveltimeplatform_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    traveltimeplatform_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec time_filter(ctx:ctx(), traveltimeplatform_request_time_filter:traveltimeplatform_request_time_filter()) -> {ok, traveltimeplatform_response_time_filter:traveltimeplatform_response_time_filter(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
time_filter(Ctx, TraveltimeplatformRequestTimeFilter) ->
    time_filter(Ctx, TraveltimeplatformRequestTimeFilter, #{}).

-spec time_filter(ctx:ctx(), traveltimeplatform_request_time_filter:traveltimeplatform_request_time_filter(), maps:map()) -> {ok, traveltimeplatform_response_time_filter:traveltimeplatform_response_time_filter(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
time_filter(Ctx, TraveltimeplatformRequestTimeFilter, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v4/time-filter"],
    QS = [],
    Headers = [],
    Body1 = TraveltimeplatformRequestTimeFilter,
    ContentTypeHeader = traveltimeplatform_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    traveltimeplatform_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec time_filter_fast(ctx:ctx(), traveltimeplatform_request_time_filter_fast:traveltimeplatform_request_time_filter_fast()) -> {ok, traveltimeplatform_response_time_filter_fast:traveltimeplatform_response_time_filter_fast(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
time_filter_fast(Ctx, TraveltimeplatformRequestTimeFilterFast) ->
    time_filter_fast(Ctx, TraveltimeplatformRequestTimeFilterFast, #{}).

-spec time_filter_fast(ctx:ctx(), traveltimeplatform_request_time_filter_fast:traveltimeplatform_request_time_filter_fast(), maps:map()) -> {ok, traveltimeplatform_response_time_filter_fast:traveltimeplatform_response_time_filter_fast(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
time_filter_fast(Ctx, TraveltimeplatformRequestTimeFilterFast, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v4/time-filter/fast"],
    QS = [],
    Headers = [],
    Body1 = TraveltimeplatformRequestTimeFilterFast,
    ContentTypeHeader = traveltimeplatform_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    traveltimeplatform_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec time_filter_postcode_districts(ctx:ctx(), traveltimeplatform_request_time_filter_postcode_districts:traveltimeplatform_request_time_filter_postcode_districts()) -> {ok, traveltimeplatform_response_time_filter_postcode_districts:traveltimeplatform_response_time_filter_postcode_districts(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
time_filter_postcode_districts(Ctx, TraveltimeplatformRequestTimeFilterPostcodeDistricts) ->
    time_filter_postcode_districts(Ctx, TraveltimeplatformRequestTimeFilterPostcodeDistricts, #{}).

-spec time_filter_postcode_districts(ctx:ctx(), traveltimeplatform_request_time_filter_postcode_districts:traveltimeplatform_request_time_filter_postcode_districts(), maps:map()) -> {ok, traveltimeplatform_response_time_filter_postcode_districts:traveltimeplatform_response_time_filter_postcode_districts(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
time_filter_postcode_districts(Ctx, TraveltimeplatformRequestTimeFilterPostcodeDistricts, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v4/time-filter/postcode-districts"],
    QS = [],
    Headers = [],
    Body1 = TraveltimeplatformRequestTimeFilterPostcodeDistricts,
    ContentTypeHeader = traveltimeplatform_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    traveltimeplatform_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec time_filter_postcode_sectors(ctx:ctx(), traveltimeplatform_request_time_filter_postcode_sectors:traveltimeplatform_request_time_filter_postcode_sectors()) -> {ok, traveltimeplatform_response_time_filter_postcode_sectors:traveltimeplatform_response_time_filter_postcode_sectors(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
time_filter_postcode_sectors(Ctx, TraveltimeplatformRequestTimeFilterPostcodeSectors) ->
    time_filter_postcode_sectors(Ctx, TraveltimeplatformRequestTimeFilterPostcodeSectors, #{}).

-spec time_filter_postcode_sectors(ctx:ctx(), traveltimeplatform_request_time_filter_postcode_sectors:traveltimeplatform_request_time_filter_postcode_sectors(), maps:map()) -> {ok, traveltimeplatform_response_time_filter_postcode_sectors:traveltimeplatform_response_time_filter_postcode_sectors(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
time_filter_postcode_sectors(Ctx, TraveltimeplatformRequestTimeFilterPostcodeSectors, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v4/time-filter/postcode-sectors"],
    QS = [],
    Headers = [],
    Body1 = TraveltimeplatformRequestTimeFilterPostcodeSectors,
    ContentTypeHeader = traveltimeplatform_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    traveltimeplatform_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec time_filter_postcodes(ctx:ctx(), traveltimeplatform_request_time_filter_postcodes:traveltimeplatform_request_time_filter_postcodes()) -> {ok, traveltimeplatform_response_time_filter_postcodes:traveltimeplatform_response_time_filter_postcodes(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
time_filter_postcodes(Ctx, TraveltimeplatformRequestTimeFilterPostcodes) ->
    time_filter_postcodes(Ctx, TraveltimeplatformRequestTimeFilterPostcodes, #{}).

-spec time_filter_postcodes(ctx:ctx(), traveltimeplatform_request_time_filter_postcodes:traveltimeplatform_request_time_filter_postcodes(), maps:map()) -> {ok, traveltimeplatform_response_time_filter_postcodes:traveltimeplatform_response_time_filter_postcodes(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
time_filter_postcodes(Ctx, TraveltimeplatformRequestTimeFilterPostcodes, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v4/time-filter/postcodes"],
    QS = [],
    Headers = [],
    Body1 = TraveltimeplatformRequestTimeFilterPostcodes,
    ContentTypeHeader = traveltimeplatform_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    traveltimeplatform_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec time_map(ctx:ctx(), traveltimeplatform_request_time_map:traveltimeplatform_request_time_map()) -> {ok, traveltimeplatform_response_time_map:traveltimeplatform_response_time_map(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
time_map(Ctx, TraveltimeplatformRequestTimeMap) ->
    time_map(Ctx, TraveltimeplatformRequestTimeMap, #{}).

-spec time_map(ctx:ctx(), traveltimeplatform_request_time_map:traveltimeplatform_request_time_map(), maps:map()) -> {ok, traveltimeplatform_response_time_map:traveltimeplatform_response_time_map(), traveltimeplatform_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), traveltimeplatform_utils:response_info()}.
time_map(Ctx, TraveltimeplatformRequestTimeMap, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v4/time-map"],
    QS = [],
    Headers = [],
    Body1 = TraveltimeplatformRequestTimeMap,
    ContentTypeHeader = traveltimeplatform_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    traveltimeplatform_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


