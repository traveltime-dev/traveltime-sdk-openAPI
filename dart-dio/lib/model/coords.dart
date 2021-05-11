//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'coords.g.dart';

abstract class Coords implements Built<Coords, CoordsBuilder> {

    @BuiltValueField(wireName: r'lat')
    double get lat;

    @BuiltValueField(wireName: r'lng')
    double get lng;

    Coords._();

    static void _initializeBuilder(CoordsBuilder b) => b;

    factory Coords([void updates(CoordsBuilder b)]) = _$Coords;

    @BuiltValueSerializer(custom: true)
    static Serializer<Coords> get serializer => _$CoordsSerializer();
}

class _$CoordsSerializer implements StructuredSerializer<Coords> {

    @override
    final Iterable<Type> types = const [Coords, _$Coords];
    @override
    final String wireName = r'Coords';

    @override
    Iterable<Object> serialize(Serializers serializers, Coords object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'lat')
            ..add(serializers.serialize(object.lat,
                specifiedType: const FullType(double)));
        result
            ..add(r'lng')
            ..add(serializers.serialize(object.lng,
                specifiedType: const FullType(double)));
        return result;
    }

    @override
    Coords deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CoordsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'lat':
                    result.lat = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'lng':
                    result.lng = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
            }
        }
        return result.build();
    }
}

