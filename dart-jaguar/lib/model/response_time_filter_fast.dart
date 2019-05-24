import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_time_filter_fast_result.dart';

part 'response_time_filter_fast.jser.dart';

class ResponseTimeFilterFast {
  
  @Alias('results')
  final List<ResponseTimeFilterFastResult> results;
  

  ResponseTimeFilterFast(
      

{
    
     this.results = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilterFast[results=$results, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeFilterFastSerializer extends Serializer<ResponseTimeFilterFast> with _$ResponseTimeFilterFastSerializer {

}

