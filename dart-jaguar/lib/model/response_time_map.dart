import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_time_map_result.dart';

part 'response_time_map.jser.dart';

class ResponseTimeMap {
  
  @Alias('results')
  final List<ResponseTimeMapResult> results;
  

  ResponseTimeMap(
      

{
    
     this.results = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeMap[results=$results, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeMapSerializer extends Serializer<ResponseTimeMap> with _$ResponseTimeMapSerializer {

}

