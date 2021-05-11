//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_transportation.g.dart';

abstract class RequestTransportation implements Built<RequestTransportation, RequestTransportationBuilder> {

    @BuiltValueField(wireName: r'type')
    RequestTransportationTypeEnum get type;
    // enum typeEnum {  cycling,  driving,  driving+train,  public_transport,  walking,  coach,  bus,  train,  ferry,  driving+ferry,  cycling+ferry,  };

    @nullable
    @BuiltValueField(wireName: r'pt_change_delay')
    int get ptChangeDelay;

    @nullable
    @BuiltValueField(wireName: r'walking_time')
    int get walkingTime;

    @nullable
    @BuiltValueField(wireName: r'driving_time_to_station')
    int get drivingTimeToStation;

    @nullable
    @BuiltValueField(wireName: r'parking_time')
    int get parkingTime;

    @nullable
    @BuiltValueField(wireName: r'boarding_time')
    int get boardingTime;

    RequestTransportation._();

    static void _initializeBuilder(RequestTransportationBuilder b) => b;

    factory RequestTransportation([void updates(RequestTransportationBuilder b)]) = _$RequestTransportation;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestTransportation> get serializer => _$RequestTransportationSerializer();
}

class _$RequestTransportationSerializer implements StructuredSerializer<RequestTransportation> {

    @override
    final Iterable<Type> types = const [RequestTransportation, _$RequestTransportation];
    @override
    final String wireName = r'RequestTransportation';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestTransportation object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'type')
            ..add(serializers.serialize(object.type,
                specifiedType: const FullType(RequestTransportationTypeEnum)));
        if (object.ptChangeDelay != null) {
            result
                ..add(r'pt_change_delay')
                ..add(serializers.serialize(object.ptChangeDelay,
                    specifiedType: const FullType(int)));
        }
        if (object.walkingTime != null) {
            result
                ..add(r'walking_time')
                ..add(serializers.serialize(object.walkingTime,
                    specifiedType: const FullType(int)));
        }
        if (object.drivingTimeToStation != null) {
            result
                ..add(r'driving_time_to_station')
                ..add(serializers.serialize(object.drivingTimeToStation,
                    specifiedType: const FullType(int)));
        }
        if (object.parkingTime != null) {
            result
                ..add(r'parking_time')
                ..add(serializers.serialize(object.parkingTime,
                    specifiedType: const FullType(int)));
        }
        if (object.boardingTime != null) {
            result
                ..add(r'boarding_time')
                ..add(serializers.serialize(object.boardingTime,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    RequestTransportation deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestTransportationBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'type':
                    result.type = serializers.deserialize(value,
                        specifiedType: const FullType(RequestTransportationTypeEnum)) as RequestTransportationTypeEnum;
                    break;
                case r'pt_change_delay':
                    result.ptChangeDelay = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'walking_time':
                    result.walkingTime = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'driving_time_to_station':
                    result.drivingTimeToStation = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'parking_time':
                    result.parkingTime = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'boarding_time':
                    result.boardingTime = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

class RequestTransportationTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'cycling')
  static const RequestTransportationTypeEnum cycling = _$requestTransportationTypeEnum_cycling;
  @BuiltValueEnumConst(wireName: r'driving')
  static const RequestTransportationTypeEnum driving = _$requestTransportationTypeEnum_driving;
  @BuiltValueEnumConst(wireName: r'driving+train')
  static const RequestTransportationTypeEnum drivingPlusTrain = _$requestTransportationTypeEnum_drivingPlusTrain;
  @BuiltValueEnumConst(wireName: r'public_transport')
  static const RequestTransportationTypeEnum publicTransport = _$requestTransportationTypeEnum_publicTransport;
  @BuiltValueEnumConst(wireName: r'walking')
  static const RequestTransportationTypeEnum walking = _$requestTransportationTypeEnum_walking;
  @BuiltValueEnumConst(wireName: r'coach')
  static const RequestTransportationTypeEnum coach = _$requestTransportationTypeEnum_coach;
  @BuiltValueEnumConst(wireName: r'bus')
  static const RequestTransportationTypeEnum bus = _$requestTransportationTypeEnum_bus;
  @BuiltValueEnumConst(wireName: r'train')
  static const RequestTransportationTypeEnum train = _$requestTransportationTypeEnum_train;
  @BuiltValueEnumConst(wireName: r'ferry')
  static const RequestTransportationTypeEnum ferry = _$requestTransportationTypeEnum_ferry;
  @BuiltValueEnumConst(wireName: r'driving+ferry')
  static const RequestTransportationTypeEnum drivingPlusFerry = _$requestTransportationTypeEnum_drivingPlusFerry;
  @BuiltValueEnumConst(wireName: r'cycling+ferry')
  static const RequestTransportationTypeEnum cyclingPlusFerry = _$requestTransportationTypeEnum_cyclingPlusFerry;

  static Serializer<RequestTransportationTypeEnum> get serializer => _$requestTransportationTypeEnumSerializer;

  const RequestTransportationTypeEnum._(String name): super(name);

  static BuiltSet<RequestTransportationTypeEnum> get values => _$requestTransportationTypeEnumValues;
  static RequestTransportationTypeEnum valueOf(String name) => _$requestTransportationTypeEnumValueOf(name);
}

