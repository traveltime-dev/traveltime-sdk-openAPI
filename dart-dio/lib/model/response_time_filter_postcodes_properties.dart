//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcodes_properties.g.dart';

abstract class ResponseTimeFilterPostcodesProperties implements Built<ResponseTimeFilterPostcodesProperties, ResponseTimeFilterPostcodesPropertiesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;

    @nullable
    @BuiltValueField(wireName: r'distance')
    int get distance;

    ResponseTimeFilterPostcodesProperties._();

    static void _initializeBuilder(ResponseTimeFilterPostcodesPropertiesBuilder b) => b;

    factory ResponseTimeFilterPostcodesProperties([void updates(ResponseTimeFilterPostcodesPropertiesBuilder b)]) = _$ResponseTimeFilterPostcodesProperties;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterPostcodesProperties> get serializer => _$ResponseTimeFilterPostcodesPropertiesSerializer();
}

class _$ResponseTimeFilterPostcodesPropertiesSerializer implements StructuredSerializer<ResponseTimeFilterPostcodesProperties> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterPostcodesProperties, _$ResponseTimeFilterPostcodesProperties];
    @override
    final String wireName = r'ResponseTimeFilterPostcodesProperties';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterPostcodesProperties object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.travelTime != null) {
            result
                ..add(r'travel_time')
                ..add(serializers.serialize(object.travelTime,
                    specifiedType: const FullType(int)));
        }
        if (object.distance != null) {
            result
                ..add(r'distance')
                ..add(serializers.serialize(object.distance,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    ResponseTimeFilterPostcodesProperties deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterPostcodesPropertiesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'travel_time':
                    result.travelTime = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'distance':
                    result.distance = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

