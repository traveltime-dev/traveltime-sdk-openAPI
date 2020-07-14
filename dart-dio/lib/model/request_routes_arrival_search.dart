            import 'package:openapi/model/request_range_full.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/request_routes_property.dart';
            import 'package:openapi/model/request_transportation.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_routes_arrival_search.g.dart';

abstract class RequestRoutesArrivalSearch implements Built<RequestRoutesArrivalSearch, RequestRoutesArrivalSearchBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'departure_location_ids')
    BuiltList<String> get departureLocationIds;
    
        @nullable
    @BuiltValueField(wireName: r'arrival_location_id')
    String get arrivalLocationId;
    
        @nullable
    @BuiltValueField(wireName: r'transportation')
    RequestTransportation get transportation;
    
        @nullable
    @BuiltValueField(wireName: r'arrival_time')
    DateTime get arrivalTime;
    
        @nullable
    @BuiltValueField(wireName: r'properties')
    BuiltList<RequestRoutesProperty> get properties;
    
        @nullable
    @BuiltValueField(wireName: r'range')
    RequestRangeFull get range;

    // Boilerplate code needed to wire-up generated code
    RequestRoutesArrivalSearch._();

    factory RequestRoutesArrivalSearch([updates(RequestRoutesArrivalSearchBuilder b)]) = _$RequestRoutesArrivalSearch;
    static Serializer<RequestRoutesArrivalSearch> get serializer => _$requestRoutesArrivalSearchSerializer;
}

