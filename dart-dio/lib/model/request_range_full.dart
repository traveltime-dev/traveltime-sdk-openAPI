//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_range_full.g.dart';

abstract class RequestRangeFull implements Built<RequestRangeFull, RequestRangeFullBuilder> {

    @BuiltValueField(wireName: r'enabled')
    bool get enabled;

    @BuiltValueField(wireName: r'max_results')
    int get maxResults;

    @BuiltValueField(wireName: r'width')
    int get width;

    RequestRangeFull._();

    static void _initializeBuilder(RequestRangeFullBuilder b) => b;

    factory RequestRangeFull([void updates(RequestRangeFullBuilder b)]) = _$RequestRangeFull;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestRangeFull> get serializer => _$RequestRangeFullSerializer();
}

class _$RequestRangeFullSerializer implements StructuredSerializer<RequestRangeFull> {

    @override
    final Iterable<Type> types = const [RequestRangeFull, _$RequestRangeFull];
    @override
    final String wireName = r'RequestRangeFull';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestRangeFull object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'enabled')
            ..add(serializers.serialize(object.enabled,
                specifiedType: const FullType(bool)));
        result
            ..add(r'max_results')
            ..add(serializers.serialize(object.maxResults,
                specifiedType: const FullType(int)));
        result
            ..add(r'width')
            ..add(serializers.serialize(object.width,
                specifiedType: const FullType(int)));
        return result;
    }

    @override
    RequestRangeFull deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestRangeFullBuilder();

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
                case r'max_results':
                    result.maxResults = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
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

