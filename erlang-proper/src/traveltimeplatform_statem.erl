-module(traveltimeplatform_statem).

-behaviour(proper_statem).

-include("traveltimeplatform.hrl").
-include_lib("proper/include/proper_common.hrl").
-include_lib("stdlib/include/assert.hrl").

-compile(export_all).
-compile(nowarn_export_all).

%%==============================================================================
%% PropEr callbacks
%%==============================================================================

command(State) ->
  Funs0 = [ {F, list_to_atom(atom_to_list(F) ++ "_args")}
            || {F, _} <- ?MODULE:module_info(exports)
          ],

  Funs1 = [ X || {_, FArgs} = X <- Funs0,
                 erlang:function_exported(?MODULE, FArgs, 1)
          ],
  proper_types:oneof([ {call, ?MODULE, F, ?MODULE:FArgs(State)}
                       || {F, FArgs} <- Funs1
                     ]).

precondition(S, {call, M, F, Args}) ->
  Pre = list_to_atom(atom_to_list(F) ++ "_pre"),
  case erlang:function_exported(M, Pre, 1) of
    true  -> M:Pre(S);
    false -> true
  end
  andalso
  case erlang:function_exported(M, Pre, 2) of
    true  -> M:Pre(S, Args);
    false -> true
  end.

next_state(S, Res, {call, M, F, Args}) ->
  Next = list_to_atom(atom_to_list(F) ++ "_next"),
  case erlang:function_exported(M, Next, 3) of
    true  -> M:Next(S, Res, Args);
    false -> S
  end.

postcondition(S, {call, M, F, Args}, Res) ->
  Post = list_to_atom(atom_to_list(F) ++ "_post"),
  case erlang:function_exported(M, Post, 3) of
    true  -> M:Post(S, Args, Res);
    false -> true
  end.

%%==============================================================================
%% geocoding_reverse_search
%%==============================================================================

geocoding_reverse_search(FocusLat, FocusLng) ->
  traveltimeplatform_api:geocoding_reverse_search(FocusLat, FocusLng).

geocoding_reverse_search_args(S) ->
  Args = [float(), float()],
  case erlang:function_exported(?MODULE, 'geocoding_reverse_search_args_custom', 2) of
    true -> ?MODULE:geocoding_reverse_search_args_custom(S, Args);
    false -> Args
  end.

%%==============================================================================
%% geocoding_search
%%==============================================================================

geocoding_search(Query) ->
  traveltimeplatform_api:geocoding_search(Query).

geocoding_search_args(S) ->
  Args = [binary()],
  case erlang:function_exported(?MODULE, 'geocoding_search_args_custom', 2) of
    true -> ?MODULE:geocoding_search_args_custom(S, Args);
    false -> Args
  end.

%%==============================================================================
%% map_info
%%==============================================================================

map_info() ->
  traveltimeplatform_api:map_info().

map_info_args(S) ->
  Args = [],
  case erlang:function_exported(?MODULE, 'map_info_args_custom', 2) of
    true -> ?MODULE:map_info_args_custom(S, Args);
    false -> Args
  end.

%%==============================================================================
%% routes
%%==============================================================================

routes(TraveltimeplatformRequestRoutes) ->
  traveltimeplatform_api:routes(TraveltimeplatformRequestRoutes).

routes_args(S) ->
  Args = [traveltimeplatform_request_routes:traveltimeplatform_request_routes()],
  case erlang:function_exported(?MODULE, 'routes_args_custom', 2) of
    true -> ?MODULE:routes_args_custom(S, Args);
    false -> Args
  end.

%%==============================================================================
%% supported_locations
%%==============================================================================

supported_locations(TraveltimeplatformRequestSupportedLocations) ->
  traveltimeplatform_api:supported_locations(TraveltimeplatformRequestSupportedLocations).

supported_locations_args(S) ->
  Args = [traveltimeplatform_request_supported_locations:traveltimeplatform_request_supported_locations()],
  case erlang:function_exported(?MODULE, 'supported_locations_args_custom', 2) of
    true -> ?MODULE:supported_locations_args_custom(S, Args);
    false -> Args
  end.

%%==============================================================================
%% time_filter
%%==============================================================================

time_filter(TraveltimeplatformRequestTimeFilter) ->
  traveltimeplatform_api:time_filter(TraveltimeplatformRequestTimeFilter).

time_filter_args(S) ->
  Args = [traveltimeplatform_request_time_filter:traveltimeplatform_request_time_filter()],
  case erlang:function_exported(?MODULE, 'time_filter_args_custom', 2) of
    true -> ?MODULE:time_filter_args_custom(S, Args);
    false -> Args
  end.

%%==============================================================================
%% time_filter_fast
%%==============================================================================

time_filter_fast(TraveltimeplatformRequestTimeFilterFast) ->
  traveltimeplatform_api:time_filter_fast(TraveltimeplatformRequestTimeFilterFast).

time_filter_fast_args(S) ->
  Args = [traveltimeplatform_request_time_filter_fast:traveltimeplatform_request_time_filter_fast()],
  case erlang:function_exported(?MODULE, 'time_filter_fast_args_custom', 2) of
    true -> ?MODULE:time_filter_fast_args_custom(S, Args);
    false -> Args
  end.

%%==============================================================================
%% time_filter_postcode_districts
%%==============================================================================

time_filter_postcode_districts(TraveltimeplatformRequestTimeFilterPostcodeDistricts) ->
  traveltimeplatform_api:time_filter_postcode_districts(TraveltimeplatformRequestTimeFilterPostcodeDistricts).

time_filter_postcode_districts_args(S) ->
  Args = [traveltimeplatform_request_time_filter_postcode_districts:traveltimeplatform_request_time_filter_postcode_districts()],
  case erlang:function_exported(?MODULE, 'time_filter_postcode_districts_args_custom', 2) of
    true -> ?MODULE:time_filter_postcode_districts_args_custom(S, Args);
    false -> Args
  end.

%%==============================================================================
%% time_filter_postcode_sectors
%%==============================================================================

time_filter_postcode_sectors(TraveltimeplatformRequestTimeFilterPostcodeSectors) ->
  traveltimeplatform_api:time_filter_postcode_sectors(TraveltimeplatformRequestTimeFilterPostcodeSectors).

time_filter_postcode_sectors_args(S) ->
  Args = [traveltimeplatform_request_time_filter_postcode_sectors:traveltimeplatform_request_time_filter_postcode_sectors()],
  case erlang:function_exported(?MODULE, 'time_filter_postcode_sectors_args_custom', 2) of
    true -> ?MODULE:time_filter_postcode_sectors_args_custom(S, Args);
    false -> Args
  end.

%%==============================================================================
%% time_filter_postcodes
%%==============================================================================

time_filter_postcodes(TraveltimeplatformRequestTimeFilterPostcodes) ->
  traveltimeplatform_api:time_filter_postcodes(TraveltimeplatformRequestTimeFilterPostcodes).

time_filter_postcodes_args(S) ->
  Args = [traveltimeplatform_request_time_filter_postcodes:traveltimeplatform_request_time_filter_postcodes()],
  case erlang:function_exported(?MODULE, 'time_filter_postcodes_args_custom', 2) of
    true -> ?MODULE:time_filter_postcodes_args_custom(S, Args);
    false -> Args
  end.

%%==============================================================================
%% time_map
%%==============================================================================

time_map(TraveltimeplatformRequestTimeMap) ->
  traveltimeplatform_api:time_map(TraveltimeplatformRequestTimeMap).

time_map_args(S) ->
  Args = [traveltimeplatform_request_time_map:traveltimeplatform_request_time_map()],
  case erlang:function_exported(?MODULE, 'time_map_args_custom', 2) of
    true -> ?MODULE:time_map_args_custom(S, Args);
    false -> Args
  end.


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
%% Include file with setup, cleanup, initial_state
%% and state transitions callbacks
%%==============================================================================
-include("traveltimeplatform_statem.hrl").
