import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_fares.dart';

import 'package:openapi/model/response_distance_breakdown_item.dart';

import 'package:openapi/model/response_route.dart';

part 'response_time_filter_properties.jser.dart';

class ResponseTimeFilterProperties {
  
  @Alias('travel_time', isNullable: false,  )
  final int travelTime;
  
  @Alias('distance', isNullable: false,  )
  final int distance;
  
  @Alias('distance_breakdown', isNullable: false,  )
  final List<ResponseDistanceBreakdownItem> distanceBreakdown;
  
  @Alias('fares', isNullable: false,  )
  final ResponseFares fares;
  
  @Alias('route', isNullable: false,  )
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

