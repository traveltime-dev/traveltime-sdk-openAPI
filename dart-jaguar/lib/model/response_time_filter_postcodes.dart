import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_time_filter_postcodes_result.dart';

part 'response_time_filter_postcodes.jser.dart';

class ResponseTimeFilterPostcodes {
  
  @Alias('results')
  final List<ResponseTimeFilterPostcodesResult> results;
  

  ResponseTimeFilterPostcodes(
      

{
    
     this.results = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodes[results=$results, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeFilterPostcodesSerializer extends Serializer<ResponseTimeFilterPostcodes> with _$ResponseTimeFilterPostcodesSerializer {

}

