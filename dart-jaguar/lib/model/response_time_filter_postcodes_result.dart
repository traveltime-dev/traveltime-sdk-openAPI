import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_time_filter_postcode.dart';

part 'response_time_filter_postcodes_result.jser.dart';

class ResponseTimeFilterPostcodesResult {
  
  @Alias('search_id', isNullable: false,  )
  final String searchId;
  
  @Alias('postcodes', isNullable: false,  )
  final List<ResponseTimeFilterPostcode> postcodes;
  

  ResponseTimeFilterPostcodesResult(
      

{
    
     this.searchId = null,  
     this.postcodes = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodesResult[searchId=$searchId, postcodes=$postcodes, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeFilterPostcodesResultSerializer extends Serializer<ResponseTimeFilterPostcodesResult> with _$ResponseTimeFilterPostcodesResultSerializer {

}

