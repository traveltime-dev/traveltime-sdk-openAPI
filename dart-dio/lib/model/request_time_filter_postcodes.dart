            import 'package:openapi/model/request_time_filter_postcodes_arrival_search.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/request_time_filter_postcodes_departure_search.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_postcodes.g.dart';

abstract class RequestTimeFilterPostcodes implements Built<RequestTimeFilterPostcodes, RequestTimeFilterPostcodesBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'departure_searches')
    BuiltList<RequestTimeFilterPostcodesDepartureSearch> get departureSearches;
    
        @nullable
    @BuiltValueField(wireName: r'arrival_searches')
    BuiltList<RequestTimeFilterPostcodesArrivalSearch> get arrivalSearches;

    // Boilerplate code needed to wire-up generated code
    RequestTimeFilterPostcodes._();

    factory RequestTimeFilterPostcodes([updates(RequestTimeFilterPostcodesBuilder b)]) = _$RequestTimeFilterPostcodes;
    static Serializer<RequestTimeFilterPostcodes> get serializer => _$requestTimeFilterPostcodesSerializer;
}

