-module(openapi_request_transportation).

-export([encode/1]).

-export_type([openapi_request_transportation/0]).

-type openapi_request_transportation() ::
    #{ 'type' := binary(),
       'disable_border_crossing' => boolean(),
       'pt_change_delay' => integer(),
       'walking_time' => integer(),
       'driving_time_to_station' => integer(),
       'cycling_time_to_station' => integer(),
       'parking_time' => integer(),
       'boarding_time' => integer()
     }.

encode(#{ 'type' := Type,
          'disable_border_crossing' := DisableBorderCrossing,
          'pt_change_delay' := PtChangeDelay,
          'walking_time' := WalkingTime,
          'driving_time_to_station' := DrivingTimeToStation,
          'cycling_time_to_station' := CyclingTimeToStation,
          'parking_time' := ParkingTime,
          'boarding_time' := BoardingTime
        }) ->
    #{ 'type' => Type,
       'disable_border_crossing' => DisableBorderCrossing,
       'pt_change_delay' => PtChangeDelay,
       'walking_time' => WalkingTime,
       'driving_time_to_station' => DrivingTimeToStation,
       'cycling_time_to_station' => CyclingTimeToStation,
       'parking_time' => ParkingTime,
       'boarding_time' => BoardingTime
     }.
