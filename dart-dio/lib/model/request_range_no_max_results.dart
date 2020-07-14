        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_range_no_max_results.g.dart';

abstract class RequestRangeNoMaxResults implements Built<RequestRangeNoMaxResults, RequestRangeNoMaxResultsBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'enabled')
    bool get enabled;
    
        @nullable
    @BuiltValueField(wireName: r'width')
    int get width;

    // Boilerplate code needed to wire-up generated code
    RequestRangeNoMaxResults._();

    factory RequestRangeNoMaxResults([updates(RequestRangeNoMaxResultsBuilder b)]) = _$RequestRangeNoMaxResults;
    static Serializer<RequestRangeNoMaxResults> get serializer => _$requestRangeNoMaxResultsSerializer;
}

