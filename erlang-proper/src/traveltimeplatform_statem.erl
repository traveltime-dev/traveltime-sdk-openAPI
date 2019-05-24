-module(traveltimeplatform_statem).

-behaviour(proper_statem).

-include("traveltimeplatform.hrl").
-include_lib("proper/include/proper_common.hrl").
-include_lib("stdlib/include/assert.hrl").

-compile(export_all).
-compile(nowarn_export_all).

-include("traveltimeplatform_statem.hrl").

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

geocoding_reverse_search(FocusLat, FocusLng) ->
  traveltimeplatform_api:geocoding_reverse_search(FocusLat, FocusLng).

geocoding_reverse_search_args(_S) ->
  [float(), float()].

%%==============================================================================
%% geocoding_search
%%==============================================================================

geocoding_search(Query) ->
  traveltimeplatform_api:geocoding_search(Query).

geocoding_search_args(_S) ->
  [binary()].

%%==============================================================================
%% map_info
%%==============================================================================

map_info() ->
  traveltimeplatform_api:map_info().

map_info_args(_S) ->
  [].

%%==============================================================================
%% routes
%%==============================================================================

routes(TraveltimeplatformRequestRoutes) ->
  traveltimeplatform_api:routes(TraveltimeplatformRequestRoutes).

routes_args(_S) ->
  [traveltimeplatform_request_routes:traveltimeplatform_request_routes()].

%%==============================================================================
%% supported_locations
%%==============================================================================

supported_locations(TraveltimeplatformRequestSupportedLocations) ->
  traveltimeplatform_api:supported_locations(TraveltimeplatformRequestSupportedLocations).

supported_locations_args(_S) ->
  [traveltimeplatform_request_supported_locations:traveltimeplatform_request_supported_locations()].

%%==============================================================================
%% time_filter
%%==============================================================================

time_filter(TraveltimeplatformRequestTimeFilter) ->
  traveltimeplatform_api:time_filter(TraveltimeplatformRequestTimeFilter).

time_filter_args(_S) ->
  [traveltimeplatform_request_time_filter:traveltimeplatform_request_time_filter()].

%%==============================================================================
%% time_filter_fast
%%==============================================================================

time_filter_fast(TraveltimeplatformRequestTimeFilterFast) ->
  traveltimeplatform_api:time_filter_fast(TraveltimeplatformRequestTimeFilterFast).

time_filter_fast_args(_S) ->
  [traveltimeplatform_request_time_filter_fast:traveltimeplatform_request_time_filter_fast()].

%%==============================================================================
%% time_filter_postcode_districts
%%==============================================================================

time_filter_postcode_districts(TraveltimeplatformRequestTimeFilterPostcodeDistricts) ->
  traveltimeplatform_api:time_filter_postcode_districts(TraveltimeplatformRequestTimeFilterPostcodeDistricts).

time_filter_postcode_districts_args(_S) ->
  [traveltimeplatform_request_time_filter_postcode_districts:traveltimeplatform_request_time_filter_postcode_districts()].

%%==============================================================================
%% time_filter_postcode_sectors
%%==============================================================================

time_filter_postcode_sectors(TraveltimeplatformRequestTimeFilterPostcodeSectors) ->
  traveltimeplatform_api:time_filter_postcode_sectors(TraveltimeplatformRequestTimeFilterPostcodeSectors).

time_filter_postcode_sectors_args(_S) ->
  [traveltimeplatform_request_time_filter_postcode_sectors:traveltimeplatform_request_time_filter_postcode_sectors()].

%%==============================================================================
%% time_filter_postcodes
%%==============================================================================

time_filter_postcodes(TraveltimeplatformRequestTimeFilterPostcodes) ->
  traveltimeplatform_api:time_filter_postcodes(TraveltimeplatformRequestTimeFilterPostcodes).

time_filter_postcodes_args(_S) ->
  [traveltimeplatform_request_time_filter_postcodes:traveltimeplatform_request_time_filter_postcodes()].

%%==============================================================================
%% time_map
%%==============================================================================

time_map(TraveltimeplatformRequestTimeMap) ->
  traveltimeplatform_api:time_map(TraveltimeplatformRequestTimeMap).

time_map_args(_S) ->
  [traveltimeplatform_request_time_map:traveltimeplatform_request_time_map()].

