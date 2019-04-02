-module(prop_traveltimeplatform).

-export([prop_test/0]).

prop_test() ->
  {ok, _} = application:ensure_all_started(traveltimeplatform),
  traveltimeplatform_statem:prop_main().
