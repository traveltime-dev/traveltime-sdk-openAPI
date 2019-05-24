import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_map_info_features.dart';

part 'response_map_info_map.jser.dart';

class ResponseMapInfoMap {
  
  @Alias('name')
  final String name;
  
  @Alias('features')
  final ResponseMapInfoFeatures features;
  

  ResponseMapInfoMap(
      

{
    
     this.name = null,  
     this.features = null 
    }
  );

  @override
  String toString() {
    return 'ResponseMapInfoMap[name=$name, features=$features, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseMapInfoMapSerializer extends Serializer<ResponseMapInfoMap> with _$ResponseMapInfoMapSerializer {

}

