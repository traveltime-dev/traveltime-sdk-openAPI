import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/request_transportation.dart';

import 'package:openapi/model/request_range_full.dart';

import 'package:openapi/model/request_time_filter_postcodes_property.dart';

part 'request_time_filter_postcodes_arrival_search.jser.dart';

class RequestTimeFilterPostcodesArrivalSearch {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('transportation', isNullable: false,  )
  final RequestTransportation transportation;
  
  @Alias('travel_time', isNullable: false,  )
  final int travelTime;
  
  @Alias('arrival_time', isNullable: false,  )
  final DateTime arrivalTime;
  
  @Alias('properties', isNullable: false,  )
  final List<RequestTimeFilterPostcodesProperty> properties;
  
  @Alias('range', isNullable: false,  )
  final RequestRangeFull range;
  

  RequestTimeFilterPostcodesArrivalSearch(
      

{
    
     this.id = null,  
     this.transportation = null,  
     this.travelTime = null,  
     this.arrivalTime = null,  
     this.properties = const [],   this.range = null 
    
    }
  );

  @override
  String toString() {
    return 'RequestTimeFilterPostcodesArrivalSearch[id=$id, transportation=$transportation, travelTime=$travelTime, arrivalTime=$arrivalTime, properties=$properties, range=$range, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestTimeFilterPostcodesArrivalSearchSerializer extends Serializer<RequestTimeFilterPostcodesArrivalSearch> with _$RequestTimeFilterPostcodesArrivalSearchSerializer {

}

