import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/request_arrival_time_period.dart';

import 'package:openapi/model/request_time_filter_fast_property.dart';

import 'package:openapi/model/request_transportation_fast.dart';

part 'request_time_filter_fast_arrival_one_to_many_search.jser.dart';

class RequestTimeFilterFastArrivalOneToManySearch {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('departure_location_id', isNullable: false,  )
  final String departureLocationId;
  
  @Alias('arrival_location_ids', isNullable: false,  )
  final List<String> arrivalLocationIds;
  
  @Alias('transportation', isNullable: false,  )
  final RequestTransportationFast transportation;
  
  @Alias('travel_time', isNullable: false,  )
  final int travelTime;
  
  @Alias('arrival_time_period', isNullable: false,
          
             processor:  const RequestArrivalTimePeriodFieldProcessor(),
          
  )
  final RequestArrivalTimePeriod arrivalTimePeriod;
  //enum arrivalTimePeriodEnum {  weekday_morning,  };
  @Alias('properties', isNullable: false,  )
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

@GenSerializer(nullableFields: true)
class RequestTimeFilterFastArrivalOneToManySearchSerializer extends Serializer<RequestTimeFilterFastArrivalOneToManySearch> with _$RequestTimeFilterFastArrivalOneToManySearchSerializer {

}

