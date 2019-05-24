import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/request_time_filter_postcode_sectors_departure_search.dart';

import 'package:openapi/model/request_time_filter_postcode_sectors_arrival_search.dart';

part 'request_time_filter_postcode_sectors.jser.dart';

class RequestTimeFilterPostcodeSectors {
  
  @Alias('departure_searches')
  final List<RequestTimeFilterPostcodeSectorsDepartureSearch> departureSearches;
  
  @Alias('arrival_searches')
  final List<RequestTimeFilterPostcodeSectorsArrivalSearch> arrivalSearches;
  

  RequestTimeFilterPostcodeSectors(
      

{
     this.departureSearches = const [],  
     this.arrivalSearches = const [] 
    
    }
  );

  @override
  String toString() {
    return 'RequestTimeFilterPostcodeSectors[departureSearches=$departureSearches, arrivalSearches=$arrivalSearches, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestTimeFilterPostcodeSectorsSerializer extends Serializer<RequestTimeFilterPostcodeSectors> with _$RequestTimeFilterPostcodeSectorsSerializer {

}

