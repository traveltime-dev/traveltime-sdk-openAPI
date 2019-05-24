import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/request_range_no_max_results.dart';

import 'package:openapi/model/request_time_map_property.dart';

import 'package:openapi/model/request_transportation.dart';

import 'package:openapi/model/coords.dart';

part 'request_time_map_departure_search.jser.dart';

class RequestTimeMapDepartureSearch {
  
  @Alias('id')
  final String id;
  
  @Alias('coords')
  final Coords coords;
  
  @Alias('transportation')
  final RequestTransportation transportation;
  
  @Alias('travel_time')
  final int travelTime;
  
  @Alias('departure_time')
  final DateTime departureTime;
  
  @Alias('properties')
  final List<RequestTimeMapProperty> properties;
  
  @Alias('range')
  final RequestRangeNoMaxResults range;
  

  RequestTimeMapDepartureSearch(
      

{
    
     this.id = null,  
     this.coords = null,  
     this.transportation = null,  
     this.travelTime = null,  
     this.departureTime = null,   this.properties = const [],  
     this.range = null 
    
    }
  );

  @override
  String toString() {
    return 'RequestTimeMapDepartureSearch[id=$id, coords=$coords, transportation=$transportation, travelTime=$travelTime, departureTime=$departureTime, properties=$properties, range=$range, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestTimeMapDepartureSearchSerializer extends Serializer<RequestTimeMapDepartureSearch> with _$RequestTimeMapDepartureSearchSerializer {

}

