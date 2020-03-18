import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/coords.dart';

part 'request_location.jser.dart';

class RequestLocation {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('coords', isNullable: false,  )
  final Coords coords;
  

  RequestLocation(
      

{
    
     this.id = null,  
     this.coords = null 
    }
  );

  @override
  String toString() {
    return 'RequestLocation[id=$id, coords=$coords, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestLocationSerializer extends Serializer<RequestLocation> with _$RequestLocationSerializer {

}

