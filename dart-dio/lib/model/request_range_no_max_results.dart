//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_range_no_max_results.g.dart';

abstract class RequestRangeNoMaxResults implements Built<RequestRangeNoMaxResults, RequestRangeNoMaxResultsBuilder> {

    @BuiltValueField(wireName: r'enabled')
    bool get enabled;

    @BuiltValueField(wireName: r'width')
    int get width;

    RequestRangeNoMaxResults._();

    static void _initializeBuilder(RequestRangeNoMaxResultsBuilder b) => b;

    factory RequestRangeNoMaxResults([void updates(RequestRangeNoMaxResultsBuilder b)]) = _$RequestRangeNoMaxResults;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestRangeNoMaxResults> get serializer => _$RequestRangeNoMaxResultsSerializer();
}

class _$RequestRangeNoMaxResultsSerializer implements StructuredSerializer<RequestRangeNoMaxResults> {

    @override
    final Iterable<Type> types = const [RequestRangeNoMaxResults, _$RequestRangeNoMaxResults];
    @override
    final String wireName = r'RequestRangeNoMaxResults';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestRangeNoMaxResults object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'enabled')
            ..add(serializers.serialize(object.enabled,
                specifiedType: const FullType(bool)));
        result
            ..add(r'width')
            ..add(serializers.serialize(object.width,
                specifiedType: const FullType(int)));
        return result;
    }

    @override
    RequestRangeNoMaxResults deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestRangeNoMaxResultsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'enabled':
                    result.enabled = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'width':
                    result.width = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

