//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_shape.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_time_map_properties.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_map_result.g.dart';

abstract class ResponseTimeMapResult implements Built<ResponseTimeMapResult, ResponseTimeMapResultBuilder> {

    @BuiltValueField(wireName: r'search_id')
    String get searchId;

    @BuiltValueField(wireName: r'shapes')
    BuiltList<ResponseShape> get shapes;

    @BuiltValueField(wireName: r'properties')
    ResponseTimeMapProperties get properties;

    ResponseTimeMapResult._();

    static void _initializeBuilder(ResponseTimeMapResultBuilder b) => b;

    factory ResponseTimeMapResult([void updates(ResponseTimeMapResultBuilder b)]) = _$ResponseTimeMapResult;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeMapResult> get serializer => _$ResponseTimeMapResultSerializer();
}

class _$ResponseTimeMapResultSerializer implements StructuredSerializer<ResponseTimeMapResult> {

    @override
    final Iterable<Type> types = const [ResponseTimeMapResult, _$ResponseTimeMapResult];
    @override
    final String wireName = r'ResponseTimeMapResult';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeMapResult object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'search_id')
            ..add(serializers.serialize(object.searchId,
                specifiedType: const FullType(String)));
        result
            ..add(r'shapes')
            ..add(serializers.serialize(object.shapes,
                specifiedType: const FullType(BuiltList, [FullType(ResponseShape)])));
        result
            ..add(r'properties')
            ..add(serializers.serialize(object.properties,
                specifiedType: const FullType(ResponseTimeMapProperties)));
        return result;
    }

    @override
    ResponseTimeMapResult deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeMapResultBuilder();

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
                case r'shapes':
                    result.shapes.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseShape)])) as BuiltList<ResponseShape>);
                    break;
                case r'properties':
                    result.properties.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ResponseTimeMapProperties)) as ResponseTimeMapProperties);
                    break;
            }
        }
        return result.build();
    }
}

