import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_route_part.dart';

part 'response_route.jser.dart';

class ResponseRoute {
  
  @Alias('departure_time', isNullable: false,  )
  final DateTime departureTime;
  
  @Alias('arrival_time', isNullable: false,  )
  final DateTime arrivalTime;
  
  @Alias('parts', isNullable: false,  )
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

@GenSerializer(nullableFields: true)
class ResponseRouteSerializer extends Serializer<ResponseRoute> with _$ResponseRouteSerializer {

}

