import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_time_map_wkt_result.dart';

part 'response_time_map_wkt.jser.dart';

class ResponseTimeMapWkt {
  
  @Alias('results', isNullable: false,  )
  final List<ResponseTimeMapWktResult> results;
  

  ResponseTimeMapWkt(
      

{
    
     this.results = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeMapWkt[results=$results, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeMapWktSerializer extends Serializer<ResponseTimeMapWkt> with _$ResponseTimeMapWktSerializer {

}

