import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/request_transportation.dart';

import 'package:openapi/model/request_range_full.dart';

import 'package:openapi/model/request_time_filter_postcodes_property.dart';

part 'request_time_filter_postcodes_departure_search.jser.dart';

class RequestTimeFilterPostcodesDepartureSearch {
  
  @Alias('id')
  final String id;
  
  @Alias('transportation')
  final RequestTransportation transportation;
  
  @Alias('travel_time')
  final int travelTime;
  
  @Alias('departure_time')
  final DateTime departureTime;
  
  @Alias('properties')
  final List<RequestTimeFilterPostcodesProperty> properties;
  
  @Alias('range')
  final RequestRangeFull range;
  

  RequestTimeFilterPostcodesDepartureSearch(
      

{
    
     this.id = null,  
     this.transportation = null,  
     this.travelTime = null,  
     this.departureTime = null,  
     this.properties = const [],   this.range = null 
    
    }
  );

  @override
  String toString() {
    return 'RequestTimeFilterPostcodesDepartureSearch[id=$id, transportation=$transportation, travelTime=$travelTime, departureTime=$departureTime, properties=$properties, range=$range, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestTimeFilterPostcodesDepartureSearchSerializer extends Serializer<RequestTimeFilterPostcodesDepartureSearch> with _$RequestTimeFilterPostcodesDepartureSearchSerializer {

}

