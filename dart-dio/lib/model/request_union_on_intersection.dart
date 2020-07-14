            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_union_on_intersection.g.dart';

abstract class RequestUnionOnIntersection implements Built<RequestUnionOnIntersection, RequestUnionOnIntersectionBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'search_ids')
    BuiltList<String> get searchIds;

    // Boilerplate code needed to wire-up generated code
    RequestUnionOnIntersection._();

    factory RequestUnionOnIntersection([updates(RequestUnionOnIntersectionBuilder b)]) = _$RequestUnionOnIntersection;
    static Serializer<RequestUnionOnIntersection> get serializer => _$requestUnionOnIntersectionSerializer;
}

