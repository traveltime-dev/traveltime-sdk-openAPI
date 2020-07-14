            import 'package:openapi/model/request_time_map_departure_search.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/request_time_map_arrival_search.dart';
            import 'package:openapi/model/request_union_on_intersection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_map.g.dart';

abstract class RequestTimeMap implements Built<RequestTimeMap, RequestTimeMapBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'departure_searches')
    BuiltList<RequestTimeMapDepartureSearch> get departureSearches;
    
        @nullable
    @BuiltValueField(wireName: r'arrival_searches')
    BuiltList<RequestTimeMapArrivalSearch> get arrivalSearches;
    
        @nullable
    @BuiltValueField(wireName: r'unions')
    BuiltList<RequestUnionOnIntersection> get unions;
    
        @nullable
    @BuiltValueField(wireName: r'intersections')
    BuiltList<RequestUnionOnIntersection> get intersections;

    // Boilerplate code needed to wire-up generated code
    RequestTimeMap._();

    factory RequestTimeMap([updates(RequestTimeMapBuilder b)]) = _$RequestTimeMap;
    static Serializer<RequestTimeMap> get serializer => _$requestTimeMapSerializer;
}

