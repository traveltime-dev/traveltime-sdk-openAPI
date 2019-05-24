import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_time_filter_postcode_sector.dart';

part 'response_time_filter_postcode_sectors_result.jser.dart';

class ResponseTimeFilterPostcodeSectorsResult {
  
  @Alias('search_id')
  final String searchId;
  
  @Alias('sectors')
  final List<ResponseTimeFilterPostcodeSector> sectors;
  

  ResponseTimeFilterPostcodeSectorsResult(
      

{
    
     this.searchId = null,  
     this.sectors = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeSectorsResult[searchId=$searchId, sectors=$sectors, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeFilterPostcodeSectorsResultSerializer extends Serializer<ResponseTimeFilterPostcodeSectorsResult> with _$ResponseTimeFilterPostcodeSectorsResultSerializer {

}

