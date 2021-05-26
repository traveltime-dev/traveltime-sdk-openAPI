import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'request_level_of_detail.jser.dart';

class RequestLevelOfDetail {
  
  @Alias('scale_type', isNullable: false,
          
  )
  final String scaleType;
  //enum scaleTypeEnum {  simple,  };
  @Alias('level', isNullable: false,
          
  )
  final String level;
  //enum levelEnum {  lowest,  low,  medium,  high,  highest,  };

  RequestLevelOfDetail(
      

{
    
     this.scaleType = null,  
     this.level = null 
    }
  );

  @override
  String toString() {
    return 'RequestLevelOfDetail[scaleType=$scaleType, level=$level, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestLevelOfDetailSerializer extends Serializer<RequestLevelOfDetail> with _$RequestLevelOfDetailSerializer {

}

