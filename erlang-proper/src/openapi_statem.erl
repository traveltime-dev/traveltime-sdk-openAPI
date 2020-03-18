-module(openapi_statem).

-behaviour(proper_statem).

-include("openapi.hrl").
-include_lib("proper/include/proper_common.hrl").
-include_lib("stdlib/include/assert.hrl").

-compile(export_all).
-compile(nowarn_export_all).

-include("openapi_statem.hrl").

%%==============================================================================
%% The statem's property
%%==============================================================================

prop_main() ->
  setup(),
  ?FORALL( Cmds
         , proper_statem:commands(?MODULE)
         , begin
             cleanup(),
             { History
             , State
             , Result
             } = proper_statem:run_commands(?MODULE, Cmds),
             ?WHENFAIL(
                io:format("History: ~p\nState: ~p\nResult: ~p\nCmds: ~p\n",
                          [ History
                          , State
                          , Result
                          , proper_statem:command_names(Cmds)
                          ]),
                proper:aggregate( proper_statem:command_names(Cmds)
                                , Result =:= ok
                                )
               )
           end
         ).

%%==============================================================================
%% Setup
%%==============================================================================

setup() -> ok.

%%==============================================================================
%% Cleanup
%%==============================================================================

cleanup() -> ok.

%%==============================================================================
%% Initial State
%%==============================================================================

initial_state() -> #{}.

%%==============================================================================
%% geocoding_reverse_search
%%==============================================================================

geocoding_reverse_search(Lat, Lng) ->
  openapi_api:geocoding_reverse_search(Lat, Lng).

geocoding_reverse_search_args(_S) ->
  [float(), float()].

%%==============================================================================
%% geocoding_search
%%==============================================================================

geocoding_search(Query) ->
  openapi_api:geocoding_search(Query).

geocoding_search_args(_S) ->
  [binary()].

%%==============================================================================
%% map_info
%%==============================================================================

map_info() ->
  openapi_api:map_info().

map_info_args(_S) ->
  [].

%%==============================================================================
%% routes
%%==============================================================================

routes(OpenapiRequestRoutes) ->
  openapi_api:routes(OpenapiRequestRoutes).

routes_args(_S) ->
  [openapi_request_routes:openapi_request_routes()].

%%==============================================================================
%% supported_locations
%%==============================================================================

supported_locations(OpenapiRequestSupportedLocations) ->
  openapi_api:supported_locations(OpenapiRequestSupportedLocations).

supported_locations_args(_S) ->
  [openapi_request_supported_locations:openapi_request_supported_locations()].

%%==============================================================================
%% time_filter
%%==============================================================================

time_filter(OpenapiRequestTimeFilter) ->
  openapi_api:time_filter(OpenapiRequestTimeFilter).

time_filter_args(_S) ->
  [openapi_request_time_filter:openapi_request_time_filter()].

%%==============================================================================
%% time_filter_fast
%%==============================================================================

time_filter_fast(OpenapiRequestTimeFilterFast) ->
  openapi_api:time_filter_fast(OpenapiRequestTimeFilterFast).

time_filter_fast_args(_S) ->
  [openapi_request_time_filter_fast:openapi_request_time_filter_fast()].

%%==============================================================================
%% time_filter_postcode_districts
%%==============================================================================

time_filter_postcode_districts(OpenapiRequestTimeFilterPostcodeDistricts) ->
  openapi_api:time_filter_postcode_districts(OpenapiRequestTimeFilterPostcodeDistricts).

time_filter_postcode_districts_args(_S) ->
  [openapi_request_time_filter_postcode_districts:openapi_request_time_filter_postcode_districts()].

%%==============================================================================
%% time_filter_postcode_sectors
%%==============================================================================

time_filter_postcode_sectors(OpenapiRequestTimeFilterPostcodeSectors) ->
  openapi_api:time_filter_postcode_sectors(OpenapiRequestTimeFilterPostcodeSectors).

time_filter_postcode_sectors_args(_S) ->
  [openapi_request_time_filter_postcode_sectors:openapi_request_time_filter_postcode_sectors()].

%%==============================================================================
%% time_filter_postcodes
%%==============================================================================

time_filter_postcodes(OpenapiRequestTimeFilterPostcodes) ->
  openapi_api:time_filter_postcodes(OpenapiRequestTimeFilterPostcodes).

time_filter_postcodes_args(_S) ->
  [openapi_request_time_filter_postcodes:openapi_request_time_filter_postcodes()].

%%==============================================================================
%% time_map
%%==============================================================================

time_map(OpenapiRequestTimeMap) ->
  openapi_api:time_map(OpenapiRequestTimeMap).

time_map_args(_S) ->
  [openapi_request_time_map:openapi_request_time_map()].

