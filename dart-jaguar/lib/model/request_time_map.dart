import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/request_time_map_arrival_search.dart';

import 'package:openapi/model/request_time_map_departure_search.dart';

import 'package:openapi/model/request_union_on_intersection.dart';

part 'request_time_map.jser.dart';

class RequestTimeMap {
  
  @Alias('departure_searches')
  final List<RequestTimeMapDepartureSearch> departureSearches;
  
  @Alias('arrival_searches')
  final List<RequestTimeMapArrivalSearch> arrivalSearches;
  
  @Alias('unions')
  final List<RequestUnionOnIntersection> unions;
  
  @Alias('intersections')
  final List<RequestUnionOnIntersection> intersections;
  

  RequestTimeMap(
      

{
     this.departureSearches = const [],  
     this.arrivalSearches = const [],  
     this.unions = const [],  
     this.intersections = const [] 
    
    }
  );

  @override
  String toString() {
    return 'RequestTimeMap[departureSearches=$departureSearches, arrivalSearches=$arrivalSearches, unions=$unions, intersections=$intersections, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestTimeMapSerializer extends Serializer<RequestTimeMap> with _$RequestTimeMapSerializer {

}

