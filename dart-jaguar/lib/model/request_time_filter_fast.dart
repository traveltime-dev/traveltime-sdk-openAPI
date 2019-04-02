import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/request_time_filter_fast_arrival_searches.dart';
import 'package:openapi/model/request_location.dart';
part 'request_time_filter_fast.jser.dart';

class RequestTimeFilterFast {
  
  @Alias('locations')
  final List<RequestLocation> locations;
  
  @Alias('arrival_searches')
  final RequestTimeFilterFastArrivalSearches arrivalSearches;
  

  RequestTimeFilterFast(
    

{
    
     this.locations = const [],  
     this.arrivalSearches = null 
    }
  );

  @override
  String toString() {
    return 'RequestTimeFilterFast[locations=$locations, arrivalSearches=$arrivalSearches, ]';
  }
}

@GenSerializer()
class RequestTimeFilterFastSerializer extends Serializer<RequestTimeFilterFast> with _$RequestTimeFilterFastSerializer {

}
