import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_time_filter_fast_properties.dart';

part 'response_time_filter_fast_location.jser.dart';

class ResponseTimeFilterFastLocation {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('properties', isNullable: false,  )
  final List<ResponseTimeFilterFastProperties> properties;
  

  ResponseTimeFilterFastLocation(
      

{
    
     this.id = null,  
     this.properties = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilterFastLocation[id=$id, properties=$properties, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeFilterFastLocationSerializer extends Serializer<ResponseTimeFilterFastLocation> with _$ResponseTimeFilterFastLocationSerializer {

}

