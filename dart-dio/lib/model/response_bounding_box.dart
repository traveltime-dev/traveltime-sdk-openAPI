//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_box.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_bounding_box.g.dart';

abstract class ResponseBoundingBox implements Built<ResponseBoundingBox, ResponseBoundingBoxBuilder> {

    @BuiltValueField(wireName: r'envelope')
    ResponseBox get envelope;

    @BuiltValueField(wireName: r'boxes')
    BuiltList<ResponseBox> get boxes;

    ResponseBoundingBox._();

    static void _initializeBuilder(ResponseBoundingBoxBuilder b) => b;

    factory ResponseBoundingBox([void updates(ResponseBoundingBoxBuilder b)]) = _$ResponseBoundingBox;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseBoundingBox> get serializer => _$ResponseBoundingBoxSerializer();
}

class _$ResponseBoundingBoxSerializer implements StructuredSerializer<ResponseBoundingBox> {

    @override
    final Iterable<Type> types = const [ResponseBoundingBox, _$ResponseBoundingBox];
    @override
    final String wireName = r'ResponseBoundingBox';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseBoundingBox object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'envelope')
            ..add(serializers.serialize(object.envelope,
                specifiedType: const FullType(ResponseBox)));
        result
            ..add(r'boxes')
            ..add(serializers.serialize(object.boxes,
                specifiedType: const FullType(BuiltList, [FullType(ResponseBox)])));
        return result;
    }

    @override
    ResponseBoundingBox deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseBoundingBoxBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'envelope':
                    result.envelope.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ResponseBox)) as ResponseBox);
                    break;
                case r'boxes':
                    result.boxes.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseBox)])) as BuiltList<ResponseBox>);
                    break;
            }
        }
        return result.build();
    }
}

