import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/request_time_filter_arrival_search.dart';

import 'package:openapi/model/request_time_filter_departure_search.dart';

import 'package:openapi/model/request_location.dart';

part 'request_time_filter.jser.dart';

class RequestTimeFilter {
  
  @Alias('locations', isNullable: false,  )
  final List<RequestLocation> locations;
  
  @Alias('departure_searches', isNullable: false,  )
  final List<RequestTimeFilterDepartureSearch> departureSearches;
  
  @Alias('arrival_searches', isNullable: false,  )
  final List<RequestTimeFilterArrivalSearch> arrivalSearches;
  

  RequestTimeFilter(
      

{
    
     this.locations = const [],   this.departureSearches = const [],  
     this.arrivalSearches = const [] 
    
    }
  );

  @override
  String toString() {
    return 'RequestTimeFilter[locations=$locations, departureSearches=$departureSearches, arrivalSearches=$arrivalSearches, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestTimeFilterSerializer extends Serializer<RequestTimeFilter> with _$RequestTimeFilterSerializer {

}

