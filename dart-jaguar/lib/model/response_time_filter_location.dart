import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_time_filter_properties.dart';

part 'response_time_filter_location.jser.dart';

class ResponseTimeFilterLocation {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('properties', isNullable: false,  )
  final List<ResponseTimeFilterProperties> properties;
  

  ResponseTimeFilterLocation(
      

{
    
     this.id = null,  
     this.properties = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilterLocation[id=$id, properties=$properties, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeFilterLocationSerializer extends Serializer<ResponseTimeFilterLocation> with _$ResponseTimeFilterLocationSerializer {

}

