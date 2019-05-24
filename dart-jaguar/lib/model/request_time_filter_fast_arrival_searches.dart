import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/request_time_filter_fast_arrival_one_to_many_search.dart';

import 'package:openapi/model/request_time_filter_fast_arrival_many_to_one_search.dart';

part 'request_time_filter_fast_arrival_searches.jser.dart';

class RequestTimeFilterFastArrivalSearches {
  
  @Alias('many_to_one')
  final List<RequestTimeFilterFastArrivalManyToOneSearch> manyToOne;
  
  @Alias('one_to_many')
  final List<RequestTimeFilterFastArrivalOneToManySearch> oneToMany;
  

  RequestTimeFilterFastArrivalSearches(
      

{
     this.manyToOne = const [],  
     this.oneToMany = const [] 
    
    }
  );

  @override
  String toString() {
    return 'RequestTimeFilterFastArrivalSearches[manyToOne=$manyToOne, oneToMany=$oneToMany, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestTimeFilterFastArrivalSearchesSerializer extends Serializer<RequestTimeFilterFastArrivalSearches> with _$RequestTimeFilterFastArrivalSearchesSerializer {

}

