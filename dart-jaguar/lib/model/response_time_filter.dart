import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_time_filter_result.dart';

part 'response_time_filter.jser.dart';

class ResponseTimeFilter {
  
  @Alias('results', isNullable: false,  )
  final List<ResponseTimeFilterResult> results;
  

  ResponseTimeFilter(
      

{
    
     this.results = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilter[results=$results, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeFilterSerializer extends Serializer<ResponseTimeFilter> with _$ResponseTimeFilterSerializer {

}

