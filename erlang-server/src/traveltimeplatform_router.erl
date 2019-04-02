-module(traveltimeplatform_router).

-export([get_paths/1]).

-type operations() :: #{
    Method :: binary() => traveltimeplatform_api:operation_id()
}.

-type init_opts()  :: {
    Operations :: operations(),
    LogicHandler :: atom(),
    ValidatorState :: jesse_state:state()
}.

-export_type([init_opts/0]).

-spec get_paths(LogicHandler :: atom()) ->  [{'_',[{
    Path :: string(),
    Handler :: atom(),
    InitOpts :: init_opts()
}]}].

get_paths(LogicHandler) ->
    ValidatorState = prepare_validator(),
    PreparedPaths = maps:fold(
        fun(Path, #{operations := Operations, handler := Handler}, Acc) ->
            [{Path, Handler, Operations} | Acc]
        end,
        [],
        group_paths()
    ),
    [
        {'_',
            [{P, H, {O, LogicHandler, ValidatorState}} || {P, H, O} <- PreparedPaths]
        }
    ].

group_paths() ->
    maps:fold(
        fun(OperationID, #{path := Path, method := Method, handler := Handler}, Acc) ->
            case maps:find(Path, Acc) of
                {ok, PathInfo0 = #{operations := Operations0}} ->
                    Operations = Operations0#{Method => OperationID},
                    PathInfo = PathInfo0#{operations => Operations},
                    Acc#{Path => PathInfo};
                error ->
                    Operations = #{Method => OperationID},
                    PathInfo = #{handler => Handler, operations => Operations},
                    Acc#{Path => PathInfo}
            end
        end,
        #{},
        get_operations()
    ).

get_operations() ->
    #{ 
        'GeocodingReverseSearch' => #{
            path => "/v4/geocoding/reverse",
            method => <<"GET">>,
            handler => 'traveltimeplatform_default_handler'
        },
        'GeocodingSearch' => #{
            path => "/v4/geocoding/search",
            method => <<"GET">>,
            handler => 'traveltimeplatform_default_handler'
        },
        'MapInfo' => #{
            path => "/v4/map-info",
            method => <<"GET">>,
            handler => 'traveltimeplatform_default_handler'
        },
        'Routes' => #{
            path => "/v4/routes",
            method => <<"POST">>,
            handler => 'traveltimeplatform_default_handler'
        },
        'SupportedLocations' => #{
            path => "/v4/supported-locations",
            method => <<"POST">>,
            handler => 'traveltimeplatform_default_handler'
        },
        'TimeFilter' => #{
            path => "/v4/time-filter",
            method => <<"POST">>,
            handler => 'traveltimeplatform_default_handler'
        },
        'TimeFilterFast' => #{
            path => "/v4/time-filter/fast",
            method => <<"POST">>,
            handler => 'traveltimeplatform_default_handler'
        },
        'TimeFilterPostcodeDistricts' => #{
            path => "/v4/time-filter/postcode-districts",
            method => <<"POST">>,
            handler => 'traveltimeplatform_default_handler'
        },
        'TimeFilterPostcodeSectors' => #{
            path => "/v4/time-filter/postcode-sectors",
            method => <<"POST">>,
            handler => 'traveltimeplatform_default_handler'
        },
        'TimeFilterPostcodes' => #{
            path => "/v4/time-filter/postcodes",
            method => <<"POST">>,
            handler => 'traveltimeplatform_default_handler'
        },
        'TimeMap' => #{
            path => "/v4/time-map",
            method => <<"POST">>,
            handler => 'traveltimeplatform_default_handler'
        }
    }.

prepare_validator() ->
    R = jsx:decode(element(2, file:read_file(get_openapi_path()))),
    jesse_state:new(R, [{default_schema_ver, <<"http://json-schema.org/draft-04/schema#">>}]).


get_openapi_path() ->
    {ok, AppName} = application:get_application(?MODULE),
    filename:join(traveltimeplatform_utils:priv_dir(AppName), "openapi.json").


