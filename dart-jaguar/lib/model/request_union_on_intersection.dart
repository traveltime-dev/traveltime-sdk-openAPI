import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'request_union_on_intersection.jser.dart';

class RequestUnionOnIntersection {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('search_ids', isNullable: false,  )
  final List<String> searchIds;
  

  RequestUnionOnIntersection(
      

{
    
     this.id = null,  
     this.searchIds = const [] 
    }
  );

  @override
  String toString() {
    return 'RequestUnionOnIntersection[id=$id, searchIds=$searchIds, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestUnionOnIntersectionSerializer extends Serializer<RequestUnionOnIntersection> with _$RequestUnionOnIntersectionSerializer {

}

