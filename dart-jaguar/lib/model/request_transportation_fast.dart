import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'request_transportation_fast.jser.dart';

class RequestTransportationFast {
  
  @Alias('type', isNullable: false,
          
  )
  final String type;
  //enum typeEnum {  public_transport,  driving,  driving+public_transport,  };

  RequestTransportationFast(
      

{
    
     this.type = null 
    }
  );

  @override
  String toString() {
    return 'RequestTransportationFast[type=$type, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestTransportationFastSerializer extends Serializer<RequestTransportationFast> with _$RequestTransportationFastSerializer {

}

