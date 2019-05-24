import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/request_time_filter_postcodes_departure_search.dart';

import 'package:openapi/model/request_time_filter_postcodes_arrival_search.dart';

part 'request_time_filter_postcodes.jser.dart';

class RequestTimeFilterPostcodes {
  
  @Alias('departure_searches')
  final List<RequestTimeFilterPostcodesDepartureSearch> departureSearches;
  
  @Alias('arrival_searches')
  final List<RequestTimeFilterPostcodesArrivalSearch> arrivalSearches;
  

  RequestTimeFilterPostcodes(
      

{
     this.departureSearches = const [],  
     this.arrivalSearches = const [] 
    
    }
  );

  @override
  String toString() {
    return 'RequestTimeFilterPostcodes[departureSearches=$departureSearches, arrivalSearches=$arrivalSearches, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestTimeFilterPostcodesSerializer extends Serializer<RequestTimeFilterPostcodes> with _$RequestTimeFilterPostcodesSerializer {

}

