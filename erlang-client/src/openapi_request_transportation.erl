-module(openapi_request_transportation).

-export([encode/1]).

-export_type([openapi_request_transportation/0]).

-type openapi_request_transportation() ::
    #{ 'type' := binary(),
       'pt_change_delay' => integer(),
       'walking_time' => integer(),
       'driving_time_to_station' => integer(),
       'parking_time' => integer(),
       'boarding_time' => integer()
     }.

encode(#{ 'type' := Type,
          'pt_change_delay' := PtChangeDelay,
          'walking_time' := WalkingTime,
          'driving_time_to_station' := DrivingTimeToStation,
          'parking_time' := ParkingTime,
          'boarding_time' := BoardingTime
        }) ->
    #{ 'type' => Type,
       'pt_change_delay' => PtChangeDelay,
       'walking_time' => WalkingTime,
       'driving_time_to_station' => DrivingTimeToStation,
       'parking_time' => ParkingTime,
       'boarding_time' => BoardingTime
     }.
