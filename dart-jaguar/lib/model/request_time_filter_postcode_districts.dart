import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/request_time_filter_postcode_districts_departure_search.dart';
import 'package:openapi/model/request_time_filter_postcode_districts_arrival_search.dart';
part 'request_time_filter_postcode_districts.jser.dart';

class RequestTimeFilterPostcodeDistricts {
  
  @Alias('departure_searches')
  final List<RequestTimeFilterPostcodeDistrictsDepartureSearch> departureSearches;
  
  @Alias('arrival_searches')
  final List<RequestTimeFilterPostcodeDistrictsArrivalSearch> arrivalSearches;
  

  RequestTimeFilterPostcodeDistricts(
    

{
     this.departureSearches = const [],  
     this.arrivalSearches = const [] 
    
    }
  );

  @override
  String toString() {
    return 'RequestTimeFilterPostcodeDistricts[departureSearches=$departureSearches, arrivalSearches=$arrivalSearches, ]';
  }
}

@GenSerializer()
class RequestTimeFilterPostcodeDistrictsSerializer extends Serializer<RequestTimeFilterPostcodeDistricts> with _$RequestTimeFilterPostcodeDistrictsSerializer {

}
