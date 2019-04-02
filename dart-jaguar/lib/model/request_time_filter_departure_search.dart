import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/request_time_filter_property.dart';
import 'package:openapi/model/request_transportation.dart';
import 'package:openapi/model/request_range_full.dart';
part 'request_time_filter_departure_search.jser.dart';

class RequestTimeFilterDepartureSearch {
  
  @Alias('id')
  final String id;
  
  @Alias('departure_location_id')
  final String departureLocationId;
  
  @Alias('arrival_location_ids')
  final List<String> arrivalLocationIds;
  
  @Alias('transportation')
  final RequestTransportation transportation;
  
  @Alias('travel_time')
  final int travelTime;
  
  @Alias('departure_time')
  final DateTime departureTime;
  
  @Alias('properties')
  final List<RequestTimeFilterProperty> properties;
  
  @Alias('range')
  final RequestRangeFull range;
  

  RequestTimeFilterDepartureSearch(
    

{
    
     this.id = null,  
     this.departureLocationId = null,  
     this.arrivalLocationIds = const [],  
     this.transportation = null,  
     this.travelTime = null,  
     this.departureTime = null,  
     this.properties = const [],   this.range = null 
    
    }
  );

  @override
  String toString() {
    return 'RequestTimeFilterDepartureSearch[id=$id, departureLocationId=$departureLocationId, arrivalLocationIds=$arrivalLocationIds, transportation=$transportation, travelTime=$travelTime, departureTime=$departureTime, properties=$properties, range=$range, ]';
  }
}

@GenSerializer()
class RequestTimeFilterDepartureSearchSerializer extends Serializer<RequestTimeFilterDepartureSearch> with _$RequestTimeFilterDepartureSearchSerializer {

}
