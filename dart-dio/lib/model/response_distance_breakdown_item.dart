//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_transportation_mode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_distance_breakdown_item.g.dart';

abstract class ResponseDistanceBreakdownItem implements Built<ResponseDistanceBreakdownItem, ResponseDistanceBreakdownItemBuilder> {

    @BuiltValueField(wireName: r'mode')
    ResponseTransportationMode get mode;
    // enum modeEnum {  car,  parking,  boarding,  walk,  bike,  train,  rail_national,  rail_overground,  rail_underground,  rail_dlr,  bus,  cable_car,  plane,  ferry,  coach,  };

    @BuiltValueField(wireName: r'distance')
    int get distance;

    ResponseDistanceBreakdownItem._();

    static void _initializeBuilder(ResponseDistanceBreakdownItemBuilder b) => b;

    factory ResponseDistanceBreakdownItem([void updates(ResponseDistanceBreakdownItemBuilder b)]) = _$ResponseDistanceBreakdownItem;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseDistanceBreakdownItem> get serializer => _$ResponseDistanceBreakdownItemSerializer();
}

class _$ResponseDistanceBreakdownItemSerializer implements StructuredSerializer<ResponseDistanceBreakdownItem> {

    @override
    final Iterable<Type> types = const [ResponseDistanceBreakdownItem, _$ResponseDistanceBreakdownItem];
    @override
    final String wireName = r'ResponseDistanceBreakdownItem';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseDistanceBreakdownItem object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'mode')
            ..add(serializers.serialize(object.mode,
                specifiedType: const FullType(ResponseTransportationMode)));
        result
            ..add(r'distance')
            ..add(serializers.serialize(object.distance,
                specifiedType: const FullType(int)));
        return result;
    }

    @override
    ResponseDistanceBreakdownItem deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseDistanceBreakdownItemBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'mode':
                    result.mode = serializers.deserialize(value,
                        specifiedType: const FullType(ResponseTransportationMode)) as ResponseTransportationMode;
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

