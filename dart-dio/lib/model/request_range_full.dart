        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_range_full.g.dart';

abstract class RequestRangeFull implements Built<RequestRangeFull, RequestRangeFullBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'enabled')
    bool get enabled;
    
        @nullable
    @BuiltValueField(wireName: r'max_results')
    int get maxResults;
    
        @nullable
    @BuiltValueField(wireName: r'width')
    int get width;

    // Boilerplate code needed to wire-up generated code
    RequestRangeFull._();

    factory RequestRangeFull([updates(RequestRangeFullBuilder b)]) = _$RequestRangeFull;
    static Serializer<RequestRangeFull> get serializer => _$requestRangeFullSerializer;
}

