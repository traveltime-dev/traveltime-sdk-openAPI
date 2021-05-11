//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_time_map_properties.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_map_wkt_result.g.dart';

abstract class ResponseTimeMapWktResult implements Built<ResponseTimeMapWktResult, ResponseTimeMapWktResultBuilder> {

    @BuiltValueField(wireName: r'search_id')
    String get searchId;

    @BuiltValueField(wireName: r'shape')
    String get shape;

    @BuiltValueField(wireName: r'properties')
    ResponseTimeMapProperties get properties;

    ResponseTimeMapWktResult._();

    static void _initializeBuilder(ResponseTimeMapWktResultBuilder b) => b;

    factory ResponseTimeMapWktResult([void updates(ResponseTimeMapWktResultBuilder b)]) = _$ResponseTimeMapWktResult;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeMapWktResult> get serializer => _$ResponseTimeMapWktResultSerializer();
}

class _$ResponseTimeMapWktResultSerializer implements StructuredSerializer<ResponseTimeMapWktResult> {

    @override
    final Iterable<Type> types = const [ResponseTimeMapWktResult, _$ResponseTimeMapWktResult];
    @override
    final String wireName = r'ResponseTimeMapWktResult';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeMapWktResult object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'search_id')
            ..add(serializers.serialize(object.searchId,
                specifiedType: const FullType(String)));
        result
            ..add(r'shape')
            ..add(serializers.serialize(object.shape,
                specifiedType: const FullType(String)));
        result
            ..add(r'properties')
            ..add(serializers.serialize(object.properties,
                specifiedType: const FullType(ResponseTimeMapProperties)));
        return result;
    }

    @override
    ResponseTimeMapWktResult deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeMapWktResultBuilder();

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
                case r'shape':
                    result.shape = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
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

