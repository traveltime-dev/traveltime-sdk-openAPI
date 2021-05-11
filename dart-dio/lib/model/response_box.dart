//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_box.g.dart';

abstract class ResponseBox implements Built<ResponseBox, ResponseBoxBuilder> {

    @BuiltValueField(wireName: r'min_lat')
    double get minLat;

    @BuiltValueField(wireName: r'max_lat')
    double get maxLat;

    @BuiltValueField(wireName: r'min_lng')
    double get minLng;

    @BuiltValueField(wireName: r'max_lng')
    double get maxLng;

    ResponseBox._();

    static void _initializeBuilder(ResponseBoxBuilder b) => b;

    factory ResponseBox([void updates(ResponseBoxBuilder b)]) = _$ResponseBox;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseBox> get serializer => _$ResponseBoxSerializer();
}

class _$ResponseBoxSerializer implements StructuredSerializer<ResponseBox> {

    @override
    final Iterable<Type> types = const [ResponseBox, _$ResponseBox];
    @override
    final String wireName = r'ResponseBox';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseBox object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'min_lat')
            ..add(serializers.serialize(object.minLat,
                specifiedType: const FullType(double)));
        result
            ..add(r'max_lat')
            ..add(serializers.serialize(object.maxLat,
                specifiedType: const FullType(double)));
        result
            ..add(r'min_lng')
            ..add(serializers.serialize(object.minLng,
                specifiedType: const FullType(double)));
        result
            ..add(r'max_lng')
            ..add(serializers.serialize(object.maxLng,
                specifiedType: const FullType(double)));
        return result;
    }

    @override
    ResponseBox deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseBoxBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'min_lat':
                    result.minLat = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'max_lat':
                    result.maxLat = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'min_lng':
                    result.minLng = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'max_lng':
                    result.maxLng = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
            }
        }
        return result.build();
    }
}

