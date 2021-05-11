//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_time_map_bounding_boxes_result.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_map_bounding_boxes.g.dart';

abstract class ResponseTimeMapBoundingBoxes implements Built<ResponseTimeMapBoundingBoxes, ResponseTimeMapBoundingBoxesBuilder> {

    @BuiltValueField(wireName: r'results')
    BuiltList<ResponseTimeMapBoundingBoxesResult> get results;

    ResponseTimeMapBoundingBoxes._();

    static void _initializeBuilder(ResponseTimeMapBoundingBoxesBuilder b) => b;

    factory ResponseTimeMapBoundingBoxes([void updates(ResponseTimeMapBoundingBoxesBuilder b)]) = _$ResponseTimeMapBoundingBoxes;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeMapBoundingBoxes> get serializer => _$ResponseTimeMapBoundingBoxesSerializer();
}

class _$ResponseTimeMapBoundingBoxesSerializer implements StructuredSerializer<ResponseTimeMapBoundingBoxes> {

    @override
    final Iterable<Type> types = const [ResponseTimeMapBoundingBoxes, _$ResponseTimeMapBoundingBoxes];
    @override
    final String wireName = r'ResponseTimeMapBoundingBoxes';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeMapBoundingBoxes object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'results')
            ..add(serializers.serialize(object.results,
                specifiedType: const FullType(BuiltList, [FullType(ResponseTimeMapBoundingBoxesResult)])));
        return result;
    }

    @override
    ResponseTimeMapBoundingBoxes deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeMapBoundingBoxesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'results':
                    result.results.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseTimeMapBoundingBoxesResult)])) as BuiltList<ResponseTimeMapBoundingBoxesResult>);
                    break;
            }
        }
        return result.build();
    }
}

