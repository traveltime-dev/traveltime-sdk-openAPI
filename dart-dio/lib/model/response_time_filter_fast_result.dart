//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_time_filter_fast_location.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_fast_result.g.dart';

abstract class ResponseTimeFilterFastResult implements Built<ResponseTimeFilterFastResult, ResponseTimeFilterFastResultBuilder> {

    @BuiltValueField(wireName: r'search_id')
    String get searchId;

    @BuiltValueField(wireName: r'locations')
    BuiltList<ResponseTimeFilterFastLocation> get locations;

    @BuiltValueField(wireName: r'unreachable')
    BuiltList<String> get unreachable;

    ResponseTimeFilterFastResult._();

    static void _initializeBuilder(ResponseTimeFilterFastResultBuilder b) => b;

    factory ResponseTimeFilterFastResult([void updates(ResponseTimeFilterFastResultBuilder b)]) = _$ResponseTimeFilterFastResult;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterFastResult> get serializer => _$ResponseTimeFilterFastResultSerializer();
}

class _$ResponseTimeFilterFastResultSerializer implements StructuredSerializer<ResponseTimeFilterFastResult> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterFastResult, _$ResponseTimeFilterFastResult];
    @override
    final String wireName = r'ResponseTimeFilterFastResult';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterFastResult object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'search_id')
            ..add(serializers.serialize(object.searchId,
                specifiedType: const FullType(String)));
        result
            ..add(r'locations')
            ..add(serializers.serialize(object.locations,
                specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterFastLocation)])));
        result
            ..add(r'unreachable')
            ..add(serializers.serialize(object.unreachable,
                specifiedType: const FullType(BuiltList, [FullType(String)])));
        return result;
    }

    @override
    ResponseTimeFilterFastResult deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterFastResultBuilder();

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
                        specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterFastLocation)])) as BuiltList<ResponseTimeFilterFastLocation>);
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

