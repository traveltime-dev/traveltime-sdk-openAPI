//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_time_filter_location.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_result.g.dart';

abstract class ResponseTimeFilterResult implements Built<ResponseTimeFilterResult, ResponseTimeFilterResultBuilder> {

    @BuiltValueField(wireName: r'search_id')
    String get searchId;

    @BuiltValueField(wireName: r'locations')
    BuiltList<ResponseTimeFilterLocation> get locations;

    @BuiltValueField(wireName: r'unreachable')
    BuiltList<String> get unreachable;

    ResponseTimeFilterResult._();

    static void _initializeBuilder(ResponseTimeFilterResultBuilder b) => b;

    factory ResponseTimeFilterResult([void updates(ResponseTimeFilterResultBuilder b)]) = _$ResponseTimeFilterResult;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterResult> get serializer => _$ResponseTimeFilterResultSerializer();
}

class _$ResponseTimeFilterResultSerializer implements StructuredSerializer<ResponseTimeFilterResult> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterResult, _$ResponseTimeFilterResult];
    @override
    final String wireName = r'ResponseTimeFilterResult';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterResult object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'search_id')
            ..add(serializers.serialize(object.searchId,
                specifiedType: const FullType(String)));
        result
            ..add(r'locations')
            ..add(serializers.serialize(object.locations,
                specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterLocation)])));
        result
            ..add(r'unreachable')
            ..add(serializers.serialize(object.unreachable,
                specifiedType: const FullType(BuiltList, [FullType(String)])));
        return result;
    }

    @override
    ResponseTimeFilterResult deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterResultBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'search_id':
                    result.searchId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'locations':
                    result.locations.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterLocation)])) as BuiltList<ResponseTimeFilterLocation>);
                    break;
                case r'unreachable':
                    result.unreachable.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>);
                    break;
            }
        }
        return result.build();
    }
}

