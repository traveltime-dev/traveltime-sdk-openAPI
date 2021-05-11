//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_time_filter_postcode_sector.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcode_sectors_result.g.dart';

abstract class ResponseTimeFilterPostcodeSectorsResult implements Built<ResponseTimeFilterPostcodeSectorsResult, ResponseTimeFilterPostcodeSectorsResultBuilder> {

    @BuiltValueField(wireName: r'search_id')
    String get searchId;

    @BuiltValueField(wireName: r'sectors')
    BuiltList<ResponseTimeFilterPostcodeSector> get sectors;

    ResponseTimeFilterPostcodeSectorsResult._();

    static void _initializeBuilder(ResponseTimeFilterPostcodeSectorsResultBuilder b) => b;

    factory ResponseTimeFilterPostcodeSectorsResult([void updates(ResponseTimeFilterPostcodeSectorsResultBuilder b)]) = _$ResponseTimeFilterPostcodeSectorsResult;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterPostcodeSectorsResult> get serializer => _$ResponseTimeFilterPostcodeSectorsResultSerializer();
}

class _$ResponseTimeFilterPostcodeSectorsResultSerializer implements StructuredSerializer<ResponseTimeFilterPostcodeSectorsResult> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterPostcodeSectorsResult, _$ResponseTimeFilterPostcodeSectorsResult];
    @override
    final String wireName = r'ResponseTimeFilterPostcodeSectorsResult';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterPostcodeSectorsResult object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'search_id')
            ..add(serializers.serialize(object.searchId,
                specifiedType: const FullType(String)));
        result
            ..add(r'sectors')
            ..add(serializers.serialize(object.sectors,
                specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterPostcodeSector)])));
        return result;
    }

    @override
    ResponseTimeFilterPostcodeSectorsResult deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterPostcodeSectorsResultBuilder();

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
                case r'sectors':
                    result.sectors.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterPostcodeSector)])) as BuiltList<ResponseTimeFilterPostcodeSector>);
                    break;
            }
        }
        return result.build();
    }
}

