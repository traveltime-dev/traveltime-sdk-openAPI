import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_fares.dart';

import 'package:openapi/model/response_distance_breakdown_item.dart';

import 'package:openapi/model/response_route.dart';

part 'response_time_filter_properties.jser.dart';

class ResponseTimeFilterProperties {
  
  @Alias('travel_time')
  final int travelTime;
  
  @Alias('distance')
  final int distance;
  
  @Alias('distance_breakdown')
  final List<ResponseDistanceBreakdownItem> distanceBreakdown;
  
  @Alias('fares')
  final ResponseFares fares;
  
  @Alias('route')
  final ResponseRoute route;
  

  ResponseTimeFilterProperties(
      

{
     this.travelTime = null,  
     this.distance = null,  
     this.distanceBreakdown = const [],  
     this.fares = null,  
     this.route = null 
    
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilterProperties[travelTime=$travelTime, distance=$distance, distanceBreakdown=$distanceBreakdown, fares=$fares, route=$route, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeFilterPropertiesSerializer extends Serializer<ResponseTimeFilterProperties> with _$ResponseTimeFilterPropertiesSerializer {

}

