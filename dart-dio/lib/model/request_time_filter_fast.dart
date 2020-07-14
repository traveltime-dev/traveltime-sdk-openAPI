            import 'package:openapi/model/request_time_filter_fast_arrival_searches.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/request_location.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_fast.g.dart';

abstract class RequestTimeFilterFast implements Built<RequestTimeFilterFast, RequestTimeFilterFastBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'locations')
    BuiltList<RequestLocation> get locations;
    
        @nullable
    @BuiltValueField(wireName: r'arrival_searches')
    RequestTimeFilterFastArrivalSearches get arrivalSearches;

    // Boilerplate code needed to wire-up generated code
    RequestTimeFilterFast._();

    factory RequestTimeFilterFast([updates(RequestTimeFilterFastBuilder b)]) = _$RequestTimeFilterFast;
    static Serializer<RequestTimeFilterFast> get serializer => _$requestTimeFilterFastSerializer;
}

