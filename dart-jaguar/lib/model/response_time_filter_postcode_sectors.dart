import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/response_time_filter_postcode_sectors_result.dart';
part 'response_time_filter_postcode_sectors.jser.dart';

class ResponseTimeFilterPostcodeSectors {
  
  @Alias('results')
  final List<ResponseTimeFilterPostcodeSectorsResult> results;
  

  ResponseTimeFilterPostcodeSectors(
    

{
    
     this.results = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeSectors[results=$results, ]';
  }
}

@GenSerializer()
class ResponseTimeFilterPostcodeSectorsSerializer extends Serializer<ResponseTimeFilterPostcodeSectors> with _$ResponseTimeFilterPostcodeSectorsSerializer {

}
