import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_box.dart';

part 'response_bounding_box.jser.dart';

class ResponseBoundingBox {
  
  @Alias('envelope')
  final ResponseBox envelope;
  
  @Alias('boxes')
  final List<ResponseBox> boxes;
  

  ResponseBoundingBox(
      

{
    
     this.envelope = null,  
     this.boxes = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseBoundingBox[envelope=$envelope, boxes=$boxes, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseBoundingBoxSerializer extends Serializer<ResponseBoundingBox> with _$ResponseBoundingBoxSerializer {

}

