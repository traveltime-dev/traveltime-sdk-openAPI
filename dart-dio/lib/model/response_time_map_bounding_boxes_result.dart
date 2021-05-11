//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_time_map_properties.dart';
import 'package:openapi/model/response_bounding_box.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_map_bounding_boxes_result.g.dart';

abstract class ResponseTimeMapBoundingBoxesResult implements Built<ResponseTimeMapBoundingBoxesResult, ResponseTimeMapBoundingBoxesResultBuilder> {

    @BuiltValueField(wireName: r'search_id')
    String get searchId;

    @BuiltValueField(wireName: r'bounding_boxes')
    BuiltList<ResponseBoundingBox> get boundingBoxes;

    @BuiltValueField(wireName: r'properties')
    ResponseTimeMapProperties get properties;

    ResponseTimeMapBoundingBoxesResult._();

    static void _initializeBuilder(ResponseTimeMapBoundingBoxesResultBuilder b) => b;

    factory ResponseTimeMapBoundingBoxesResult([void updates(ResponseTimeMapBoundingBoxesResultBuilder b)]) = _$ResponseTimeMapBoundingBoxesResult;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeMapBoundingBoxesResult> get serializer => _$ResponseTimeMapBoundingBoxesResultSerializer();
}

class _$ResponseTimeMapBoundingBoxesResultSerializer implements StructuredSerializer<ResponseTimeMapBoundingBoxesResult> {

    @override
    final Iterable<Type> types = const [ResponseTimeMapBoundingBoxesResult, _$ResponseTimeMapBoundingBoxesResult];
    @override
    final String wireName = r'ResponseTimeMapBoundingBoxesResult';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeMapBoundingBoxesResult object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'search_id')
            ..add(serializers.serialize(object.searchId,
                specifiedType: const FullType(String)));
        result
            ..add(r'bounding_boxes')
            ..add(serializers.serialize(object.boundingBoxes,
                specifiedType: const FullType(BuiltList, [FullType(ResponseBoundingBox)])));
        result
            ..add(r'properties')
            ..add(serializers.serialize(object.properties,
                specifiedType: const FullType(ResponseTimeMapProperties)));
        return result;
    }

    @override
    ResponseTimeMapBoundingBoxesResult deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeMapBoundingBoxesResultBuilder();

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
                case r'bounding_boxes':
                    result.boundingBoxes.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseBoundingBox)])) as BuiltList<ResponseBoundingBox>);
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

