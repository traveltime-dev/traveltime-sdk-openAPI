import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_transportation_mode.dart';

import 'package:openapi/model/coords.dart';

part 'response_route_part.jser.dart';

class ResponseRoutePart {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('type', isNullable: false,
          
  )
  final String type;
  //enum typeEnum {  basic,  start_end,  road,  public_transport,  };
  @Alias('mode', isNullable: false,
          
             processor:  const ResponseTransportationModeFieldProcessor(),
          
  )
  final ResponseTransportationMode mode;
  //enum modeEnum {  car,  parking,  boarding,  walk,  bike,  train,  rail_national,  rail_overground,  rail_underground,  rail_dlr,  bus,  cable_car,  plane,  ferry,  coach,  };
  @Alias('directions', isNullable: false,  )
  final String directions;
  
  @Alias('distance', isNullable: false,  )
  final int distance;
  
  @Alias('travel_time', isNullable: false,  )
  final int travelTime;
  
  @Alias('coords', isNullable: false,  )
  final List<Coords> coords;
  
  @Alias('direction', isNullable: false,  )
  final String direction;
  
  @Alias('road', isNullable: false,  )
  final String road;
  
  @Alias('turn', isNullable: false,  )
  final String turn;
  
  @Alias('line', isNullable: false,  )
  final String line;
  
  @Alias('departure_station', isNullable: false,  )
  final String departureStation;
  
  @Alias('arrival_station', isNullable: false,  )
  final String arrivalStation;
  
  @Alias('departs_at', isNullable: false,  )
  final String departsAt;
  
  @Alias('arrives_at', isNullable: false,  )
  final String arrivesAt;
  
  @Alias('num_stops', isNullable: false,  )
  final int numStops;
  

  ResponseRoutePart(
      

{
    
     this.id = null,  
     this.type = null,  
     this.mode = null,  
     this.directions = null,  
     this.distance = null,  
     this.travelTime = null,  
     this.coords = const [],   this.direction = null,  
     this.road = null,  
     this.turn = null,  
     this.line = null,  
     this.departureStation = null,  
     this.arrivalStation = null,  
     this.departsAt = null,  
     this.arrivesAt = null,  
     this.numStops = null 
    
    }
  );

  @override
  String toString() {
    return 'ResponseRoutePart[id=$id, type=$type, mode=$mode, directions=$directions, distance=$distance, travelTime=$travelTime, coords=$coords, direction=$direction, road=$road, turn=$turn, line=$line, departureStation=$departureStation, arrivalStation=$arrivalStation, departsAt=$departsAt, arrivesAt=$arrivesAt, numStops=$numStops, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseRoutePartSerializer extends Serializer<ResponseRoutePart> with _$ResponseRoutePartSerializer {

}

