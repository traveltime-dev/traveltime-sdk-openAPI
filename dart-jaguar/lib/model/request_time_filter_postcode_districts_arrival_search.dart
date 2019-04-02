import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/request_time_filter_postcode_districts_property.dart';
import 'package:openapi/model/request_transportation.dart';
import 'package:openapi/model/request_range_full.dart';
part 'request_time_filter_postcode_districts_arrival_search.jser.dart';

class RequestTimeFilterPostcodeDistrictsArrivalSearch {
  
  @Alias('id')
  final String id;
  
  @Alias('transportation')
  final RequestTransportation transportation;
  
  @Alias('travel_time')
  final int travelTime;
  
  @Alias('arrival_time')
  final DateTime arrivalTime;
  
  @Alias('reachable_postcodes_threshold')
  final double reachablePostcodesThreshold;
  
  @Alias('properties')
  final List<RequestTimeFilterPostcodeDistrictsProperty> properties;
  
  @Alias('range')
  final RequestRangeFull range;
  

  RequestTimeFilterPostcodeDistrictsArrivalSearch(
    

{
    
     this.id = null,  
     this.transportation = null,  
     this.travelTime = null,  
     this.arrivalTime = null,  
     this.reachablePostcodesThreshold = null,  
     this.properties = const [],   this.range = null 
    
    }
  );

  @override
  String toString() {
    return 'RequestTimeFilterPostcodeDistrictsArrivalSearch[id=$id, transportation=$transportation, travelTime=$travelTime, arrivalTime=$arrivalTime, reachablePostcodesThreshold=$reachablePostcodesThreshold, properties=$properties, range=$range, ]';
  }
}

@GenSerializer()
class RequestTimeFilterPostcodeDistrictsArrivalSearchSerializer extends Serializer<RequestTimeFilterPostcodeDistrictsArrivalSearch> with _$RequestTimeFilterPostcodeDistrictsArrivalSearchSerializer {

}