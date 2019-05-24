import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_map_info_map.dart';

part 'response_map_info.jser.dart';

class ResponseMapInfo {
  
  @Alias('maps')
  final List<ResponseMapInfoMap> maps;
  

  ResponseMapInfo(
      

{
    
     this.maps = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseMapInfo[maps=$maps, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseMapInfoSerializer extends Serializer<ResponseMapInfo> with _$ResponseMapInfoSerializer {

}

