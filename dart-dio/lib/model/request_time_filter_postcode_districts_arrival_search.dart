            import 'package:openapi/model/request_range_full.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/request_time_filter_postcode_districts_property.dart';
            import 'package:openapi/model/request_transportation.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_postcode_districts_arrival_search.g.dart';

abstract class RequestTimeFilterPostcodeDistrictsArrivalSearch implements Built<RequestTimeFilterPostcodeDistrictsArrivalSearch, RequestTimeFilterPostcodeDistrictsArrivalSearchBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'transportation')
    RequestTransportation get transportation;
    
        @nullable
    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;
    
        @nullable
    @BuiltValueField(wireName: r'arrival_time')
    DateTime get arrivalTime;
    
        @nullable
    @BuiltValueField(wireName: r'reachable_postcodes_threshold')
    double get reachablePostcodesThreshold;
    
        @nullable
    @BuiltValueField(wireName: r'properties')
    BuiltList<RequestTimeFilterPostcodeDistrictsProperty> get properties;
    
        @nullable
    @BuiltValueField(wireName: r'range')
    RequestRangeFull get range;

    // Boilerplate code needed to wire-up generated code
    RequestTimeFilterPostcodeDistrictsArrivalSearch._();

    factory RequestTimeFilterPostcodeDistrictsArrivalSearch([updates(RequestTimeFilterPostcodeDistrictsArrivalSearchBuilder b)]) = _$RequestTimeFilterPostcodeDistrictsArrivalSearch;
    static Serializer<RequestTimeFilterPostcodeDistrictsArrivalSearch> get serializer => _$requestTimeFilterPostcodeDistrictsArrivalSearchSerializer;
}

