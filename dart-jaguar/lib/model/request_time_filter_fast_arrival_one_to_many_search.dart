import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/request_arrival_time_period.dart';
import 'package:openapi/model/request_time_filter_fast_property.dart';
import 'package:openapi/model/request_transportation_fast.dart';
part 'request_time_filter_fast_arrival_one_to_many_search.jser.dart';

class RequestTimeFilterFastArrivalOneToManySearch {
  
  @Alias('id')
  final String id;
  
  @Alias('departure_location_id')
  final String departureLocationId;
  
  @Alias('arrival_location_ids')
  final List<String> arrivalLocationIds;
  
  @Alias('transportation')
  final RequestTransportationFast transportation;
  
  @Alias('travel_time')
  final int travelTime;
  
  @Alias('arrival_time_period')
  final RequestArrivalTimePeriod arrivalTimePeriod;
  
  @Alias('properties')
  final List<RequestTimeFilterFastProperty> properties;
  

  RequestTimeFilterFastArrivalOneToManySearch(
    

{
    
     this.id = null,  
     this.departureLocationId = null,  
     this.arrivalLocationIds = const [],  
     this.transportation = null,  
     this.travelTime = null,  
     this.arrivalTimePeriod = null,  
     this.properties = const [] 
    }
  );

  @override
  String toString() {
    return 'RequestTimeFilterFastArrivalOneToManySearch[id=$id, departureLocationId=$departureLocationId, arrivalLocationIds=$arrivalLocationIds, transportation=$transportation, travelTime=$travelTime, arrivalTimePeriod=$arrivalTimePeriod, properties=$properties, ]';
  }
}

@GenSerializer()
class RequestTimeFilterFastArrivalOneToManySearchSerializer extends Serializer<RequestTimeFilterFastArrivalOneToManySearch> with _$RequestTimeFilterFastArrivalOneToManySearchSerializer {

}
