-module(traveltimeplatform_response_map_info_features_public_transport).

-export([encode/1]).

-export_type([traveltimeplatform_response_map_info_features_public_transport/0]).

-type traveltimeplatform_response_map_info_features_public_transport() ::
    #{ 'date_start' := traveltimeplatform_date_time:traveltimeplatform_date_time(),
       'date_end' := traveltimeplatform_date_time:traveltimeplatform_date_time()
     }.

encode(#{ 'date_start' := DateStart,
          'date_end' := DateEnd
        }) ->
    #{ 'date_start' => DateStart,
       'date_end' => DateEnd
     }.
