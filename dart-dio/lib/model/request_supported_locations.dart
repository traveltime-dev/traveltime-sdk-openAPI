//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/request_location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_supported_locations.g.dart';

abstract class RequestSupportedLocations implements Built<RequestSupportedLocations, RequestSupportedLocationsBuilder> {

    @BuiltValueField(wireName: r'locations')
    BuiltList<RequestLocation> get locations;

    RequestSupportedLocations._();

    static void _initializeBuilder(RequestSupportedLocationsBuilder b) => b;

    factory RequestSupportedLocations([void updates(RequestSupportedLocationsBuilder b)]) = _$RequestSupportedLocations;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestSupportedLocations> get serializer => _$RequestSupportedLocationsSerializer();
}

class _$RequestSupportedLocationsSerializer implements StructuredSerializer<RequestSupportedLocations> {

    @override
    final Iterable<Type> types = const [RequestSupportedLocations, _$RequestSupportedLocations];
    @override
    final String wireName = r'RequestSupportedLocations';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestSupportedLocations object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'locations')
            ..add(serializers.serialize(object.locations,
                specifiedType: const FullType(BuiltList, [FullType(RequestLocation)])));
        return result;
    }

    @override
    RequestSupportedLocations deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestSupportedLocationsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'locations':
                    result.locations.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestLocation)])) as BuiltList<RequestLocation>);
                    break;
            }
        }
        return result.build();
    }
}

