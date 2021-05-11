//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_map_info_map.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_map_info.g.dart';

abstract class ResponseMapInfo implements Built<ResponseMapInfo, ResponseMapInfoBuilder> {

    @BuiltValueField(wireName: r'maps')
    BuiltList<ResponseMapInfoMap> get maps;

    ResponseMapInfo._();

    static void _initializeBuilder(ResponseMapInfoBuilder b) => b;

    factory ResponseMapInfo([void updates(ResponseMapInfoBuilder b)]) = _$ResponseMapInfo;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseMapInfo> get serializer => _$ResponseMapInfoSerializer();
}

class _$ResponseMapInfoSerializer implements StructuredSerializer<ResponseMapInfo> {

    @override
    final Iterable<Type> types = const [ResponseMapInfo, _$ResponseMapInfo];
    @override
    final String wireName = r'ResponseMapInfo';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseMapInfo object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'maps')
            ..add(serializers.serialize(object.maps,
                specifiedType: const FullType(BuiltList, [FullType(ResponseMapInfoMap)])));
        return result;
    }

    @override
    ResponseMapInfo deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseMapInfoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'maps':
                    result.maps.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseMapInfoMap)])) as BuiltList<ResponseMapInfoMap>);
                    break;
            }
        }
        return result.build();
    }
}

