import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'response_time_map_properties.jser.dart';

class ResponseTimeMapProperties {
  
  @Alias('is_only_walking')
  final bool isOnlyWalking;
  

  ResponseTimeMapProperties(
      

{
     this.isOnlyWalking = null 
    
    }
  );

  @override
  String toString() {
    return 'ResponseTimeMapProperties[isOnlyWalking=$isOnlyWalking, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeMapPropertiesSerializer extends Serializer<ResponseTimeMapProperties> with _$ResponseTimeMapPropertiesSerializer {

}

