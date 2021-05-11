//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_map_info_features.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_map_info_map.g.dart';

abstract class ResponseMapInfoMap implements Built<ResponseMapInfoMap, ResponseMapInfoMapBuilder> {

    @BuiltValueField(wireName: r'name')
    String get name;

    @BuiltValueField(wireName: r'features')
    ResponseMapInfoFeatures get features;

    ResponseMapInfoMap._();

    static void _initializeBuilder(ResponseMapInfoMapBuilder b) => b;

    factory ResponseMapInfoMap([void updates(ResponseMapInfoMapBuilder b)]) = _$ResponseMapInfoMap;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseMapInfoMap> get serializer => _$ResponseMapInfoMapSerializer();
}

class _$ResponseMapInfoMapSerializer implements StructuredSerializer<ResponseMapInfoMap> {

    @override
    final Iterable<Type> types = const [ResponseMapInfoMap, _$ResponseMapInfoMap];
    @override
    final String wireName = r'ResponseMapInfoMap';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseMapInfoMap object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        result
            ..add(r'features')
            ..add(serializers.serialize(object.features,
                specifiedType: const FullType(ResponseMapInfoFeatures)));
        return result;
    }

    @override
    ResponseMapInfoMap deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseMapInfoMapBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'features':
                    result.features.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ResponseMapInfoFeatures)) as ResponseMapInfoFeatures);
                    break;
            }
        }
        return result.build();
    }
}

