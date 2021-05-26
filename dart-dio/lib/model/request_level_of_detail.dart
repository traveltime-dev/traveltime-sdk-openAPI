//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_level_of_detail.g.dart';

abstract class RequestLevelOfDetail implements Built<RequestLevelOfDetail, RequestLevelOfDetailBuilder> {

    @BuiltValueField(wireName: r'scale_type')
    RequestLevelOfDetailScaleTypeEnum get scaleType;
    // enum scaleTypeEnum {  simple,  };

    @BuiltValueField(wireName: r'level')
    RequestLevelOfDetailLevelEnum get level;
    // enum levelEnum {  lowest,  low,  medium,  high,  highest,  };

    RequestLevelOfDetail._();

    static void _initializeBuilder(RequestLevelOfDetailBuilder b) => b;

    factory RequestLevelOfDetail([void updates(RequestLevelOfDetailBuilder b)]) = _$RequestLevelOfDetail;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestLevelOfDetail> get serializer => _$RequestLevelOfDetailSerializer();
}

class _$RequestLevelOfDetailSerializer implements StructuredSerializer<RequestLevelOfDetail> {

    @override
    final Iterable<Type> types = const [RequestLevelOfDetail, _$RequestLevelOfDetail];
    @override
    final String wireName = r'RequestLevelOfDetail';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestLevelOfDetail object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'scale_type')
            ..add(serializers.serialize(object.scaleType,
                specifiedType: const FullType(RequestLevelOfDetailScaleTypeEnum)));
        result
            ..add(r'level')
            ..add(serializers.serialize(object.level,
                specifiedType: const FullType(RequestLevelOfDetailLevelEnum)));
        return result;
    }

    @override
    RequestLevelOfDetail deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestLevelOfDetailBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'scale_type':
                    result.scaleType = serializers.deserialize(value,
                        specifiedType: const FullType(RequestLevelOfDetailScaleTypeEnum)) as RequestLevelOfDetailScaleTypeEnum;
                    break;
                case r'level':
                    result.level = serializers.deserialize(value,
                        specifiedType: const FullType(RequestLevelOfDetailLevelEnum)) as RequestLevelOfDetailLevelEnum;
                    break;
            }
        }
        return result.build();
    }
}

class RequestLevelOfDetailScaleTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'simple')
  static const RequestLevelOfDetailScaleTypeEnum simple = _$requestLevelOfDetailScaleTypeEnum_simple;

  static Serializer<RequestLevelOfDetailScaleTypeEnum> get serializer => _$requestLevelOfDetailScaleTypeEnumSerializer;

  const RequestLevelOfDetailScaleTypeEnum._(String name): super(name);

  static BuiltSet<RequestLevelOfDetailScaleTypeEnum> get values => _$requestLevelOfDetailScaleTypeEnumValues;
  static RequestLevelOfDetailScaleTypeEnum valueOf(String name) => _$requestLevelOfDetailScaleTypeEnumValueOf(name);
}

class RequestLevelOfDetailLevelEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'lowest')
  static const RequestLevelOfDetailLevelEnum lowest = _$requestLevelOfDetailLevelEnum_lowest;
  @BuiltValueEnumConst(wireName: r'low')
  static const RequestLevelOfDetailLevelEnum low = _$requestLevelOfDetailLevelEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const RequestLevelOfDetailLevelEnum medium = _$requestLevelOfDetailLevelEnum_medium;
  @BuiltValueEnumConst(wireName: r'high')
  static const RequestLevelOfDetailLevelEnum high = _$requestLevelOfDetailLevelEnum_high;
  @BuiltValueEnumConst(wireName: r'highest')
  static const RequestLevelOfDetailLevelEnum highest = _$requestLevelOfDetailLevelEnum_highest;

  static Serializer<RequestLevelOfDetailLevelEnum> get serializer => _$requestLevelOfDetailLevelEnumSerializer;

  const RequestLevelOfDetailLevelEnum._(String name): super(name);

  static BuiltSet<RequestLevelOfDetailLevelEnum> get values => _$requestLevelOfDetailLevelEnumValues;
  static RequestLevelOfDetailLevelEnum valueOf(String name) => _$requestLevelOfDetailLevelEnumValueOf(name);
}

