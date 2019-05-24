import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_geocoding_geo_json_feature.dart';

part 'response_geocoding.jser.dart';

class ResponseGeocoding {
  
  @Alias('type')
  final String type;
  
  @Alias('features')
  final List<ResponseGeocodingGeoJsonFeature> features;
  

  ResponseGeocoding(
      

{
    
     this.type = null,  
     this.features = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseGeocoding[type=$type, features=$features, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseGeocodingSerializer extends Serializer<ResponseGeocoding> with _$ResponseGeocodingSerializer {

}

