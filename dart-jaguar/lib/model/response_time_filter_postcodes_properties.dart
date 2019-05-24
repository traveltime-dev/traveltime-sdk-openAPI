import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'response_time_filter_postcodes_properties.jser.dart';

class ResponseTimeFilterPostcodesProperties {
  
  @Alias('travel_time')
  final int travelTime;
  
  @Alias('distance')
  final int distance;
  

  ResponseTimeFilterPostcodesProperties(
      

{
     this.travelTime = null,  
     this.distance = null 
    
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodesProperties[travelTime=$travelTime, distance=$distance, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeFilterPostcodesPropertiesSerializer extends Serializer<ResponseTimeFilterPostcodesProperties> with _$ResponseTimeFilterPostcodesPropertiesSerializer {

}

