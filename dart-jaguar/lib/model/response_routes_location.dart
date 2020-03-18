import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_routes_properties.dart';

part 'response_routes_location.jser.dart';

class ResponseRoutesLocation {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('properties', isNullable: false,  )
  final List<ResponseRoutesProperties> properties;
  

  ResponseRoutesLocation(
      

{
    
     this.id = null,  
     this.properties = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseRoutesLocation[id=$id, properties=$properties, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseRoutesLocationSerializer extends Serializer<ResponseRoutesLocation> with _$ResponseRoutesLocationSerializer {

}

