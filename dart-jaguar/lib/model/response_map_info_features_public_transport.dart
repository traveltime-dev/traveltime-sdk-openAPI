import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'response_map_info_features_public_transport.jser.dart';

class ResponseMapInfoFeaturesPublicTransport {
  
  @Alias('date_start', isNullable: false,  )
  final DateTime dateStart;
  
  @Alias('date_end', isNullable: false,  )
  final DateTime dateEnd;
  

  ResponseMapInfoFeaturesPublicTransport(
      

{
    
     this.dateStart = null,  
     this.dateEnd = null 
    }
  );

  @override
  String toString() {
    return 'ResponseMapInfoFeaturesPublicTransport[dateStart=$dateStart, dateEnd=$dateEnd, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseMapInfoFeaturesPublicTransportSerializer extends Serializer<ResponseMapInfoFeaturesPublicTransport> with _$ResponseMapInfoFeaturesPublicTransportSerializer {

}

