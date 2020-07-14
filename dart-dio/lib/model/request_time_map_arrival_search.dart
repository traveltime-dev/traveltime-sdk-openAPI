            import 'package:openapi/model/coords.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/request_range_no_max_results.dart';
            import 'package:openapi/model/request_time_map_property.dart';
            import 'package:openapi/model/request_transportation.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_map_arrival_search.g.dart';

abstract class RequestTimeMapArrivalSearch implements Built<RequestTimeMapArrivalSearch, RequestTimeMapArrivalSearchBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'coords')
    Coords get coords;
    
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
    @BuiltValueField(wireName: r'properties')
    BuiltList<RequestTimeMapProperty> get properties;
    
        @nullable
    @BuiltValueField(wireName: r'range')
    RequestRangeNoMaxResults get range;

    // Boilerplate code needed to wire-up generated code
    RequestTimeMapArrivalSearch._();

    factory RequestTimeMapArrivalSearch([updates(RequestTimeMapArrivalSearchBuilder b)]) = _$RequestTimeMapArrivalSearch;
    static Serializer<RequestTimeMapArrivalSearch> get serializer => _$requestTimeMapArrivalSearchSerializer;
}

