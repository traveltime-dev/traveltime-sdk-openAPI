import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/response_fares.dart';
import 'package:openapi/model/response_route.dart';
part 'response_routes_properties.jser.dart';

class ResponseRoutesProperties {
  
  @Alias('travel_time')
  final int travelTime;
  
  @Alias('distance')
  final int distance;
  
  @Alias('fares')
  final ResponseFares fares;
  
  @Alias('route')
  final ResponseRoute route;
  

  ResponseRoutesProperties(
    

{
     this.travelTime = null,  
     this.distance = null,  
     this.fares = null,  
     this.route = null 
    
    }
  );

  @override
  String toString() {
    return 'ResponseRoutesProperties[travelTime=$travelTime, distance=$distance, fares=$fares, route=$route, ]';
  }
}

@GenSerializer()
class ResponseRoutesPropertiesSerializer extends Serializer<ResponseRoutesProperties> with _$ResponseRoutesPropertiesSerializer {

}
