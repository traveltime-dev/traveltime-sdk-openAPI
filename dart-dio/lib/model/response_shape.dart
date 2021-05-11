//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/coords.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_shape.g.dart';

abstract class ResponseShape implements Built<ResponseShape, ResponseShapeBuilder> {

    @BuiltValueField(wireName: r'shell')
    BuiltList<Coords> get shell;

    @BuiltValueField(wireName: r'holes')
    BuiltList<BuiltList<Coords>> get holes;

    ResponseShape._();

    static void _initializeBuilder(ResponseShapeBuilder b) => b;

    factory ResponseShape([void updates(ResponseShapeBuilder b)]) = _$ResponseShape;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseShape> get serializer => _$ResponseShapeSerializer();
}

class _$ResponseShapeSerializer implements StructuredSerializer<ResponseShape> {

    @override
    final Iterable<Type> types = const [ResponseShape, _$ResponseShape];
    @override
    final String wireName = r'ResponseShape';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseShape object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'shell')
            ..add(serializers.serialize(object.shell,
                specifiedType: const FullType(BuiltList, [FullType(Coords)])));
        result
            ..add(r'holes')
            ..add(serializers.serialize(object.holes,
                specifiedType: const FullType(BuiltList, [FullType(BuiltList, [FullType(Coords)])])));
        return result;
    }

    @override
    ResponseShape deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseShapeBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'shell':
                    result.shell.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Coords)])) as BuiltList<Coords>);
                    break;
                case r'holes':
                    result.holes.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(BuiltList, [FullType(Coords)])])) as BuiltList<BuiltList<Coords>>);
                    break;
            }
        }
        return result.build();
    }
}

