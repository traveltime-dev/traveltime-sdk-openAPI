import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/response_route_part.dart';
part 'response_route.jser.dart';

class ResponseRoute {
  
  @Alias('departure_time')
  final DateTime departureTime;
  
  @Alias('arrival_time')
  final DateTime arrivalTime;
  
  @Alias('parts')
  final List<ResponseRoutePart> parts;
  

  ResponseRoute(
    

{
    
     this.departureTime = null,  
     this.arrivalTime = null,  
     this.parts = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseRoute[departureTime=$departureTime, arrivalTime=$arrivalTime, parts=$parts, ]';
  }
}

@GenSerializer()
class ResponseRouteSerializer extends Serializer<ResponseRoute> with _$ResponseRouteSerializer {

}
