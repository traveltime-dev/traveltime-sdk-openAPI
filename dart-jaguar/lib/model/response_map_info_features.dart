import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_map_info_features_public_transport.dart';

part 'response_map_info_features.jser.dart';

class ResponseMapInfoFeatures {
  
  @Alias('public_transport')
  final ResponseMapInfoFeaturesPublicTransport publicTransport;
  
  @Alias('fares')
  final bool fares;
  
  @Alias('postcodes')
  final bool postcodes;
  

  ResponseMapInfoFeatures(
      

{
     this.publicTransport = null,  
    
     this.fares = null,  
     this.postcodes = null 
    }
  );

  @override
  String toString() {
    return 'ResponseMapInfoFeatures[publicTransport=$publicTransport, fares=$fares, postcodes=$postcodes, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseMapInfoFeaturesSerializer extends Serializer<ResponseMapInfoFeatures> with _$ResponseMapInfoFeaturesSerializer {

}

