//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_union_on_intersection.g.dart';

abstract class RequestUnionOnIntersection implements Built<RequestUnionOnIntersection, RequestUnionOnIntersectionBuilder> {

    @BuiltValueField(wireName: r'id')
    String get id;

    @BuiltValueField(wireName: r'search_ids')
    BuiltList<String> get searchIds;

    RequestUnionOnIntersection._();

    static void _initializeBuilder(RequestUnionOnIntersectionBuilder b) => b;

    factory RequestUnionOnIntersection([void updates(RequestUnionOnIntersectionBuilder b)]) = _$RequestUnionOnIntersection;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestUnionOnIntersection> get serializer => _$RequestUnionOnIntersectionSerializer();
}

class _$RequestUnionOnIntersectionSerializer implements StructuredSerializer<RequestUnionOnIntersection> {

    @override
    final Iterable<Type> types = const [RequestUnionOnIntersection, _$RequestUnionOnIntersection];
    @override
    final String wireName = r'RequestUnionOnIntersection';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestUnionOnIntersection object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        result
            ..add(r'search_ids')
            ..add(serializers.serialize(object.searchIds,
                specifiedType: const FullType(BuiltList, [FullType(String)])));
        return result;
    }

    @override
    RequestUnionOnIntersection deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestUnionOnIntersectionBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'search_ids':
                    result.searchIds.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>);
                    break;
            }
        }
        return result.build();
    }
}

