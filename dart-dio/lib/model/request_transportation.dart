        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_transportation.g.dart';

abstract class RequestTransportation implements Built<RequestTransportation, RequestTransportationBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'type')
    RequestTransportationType get type;
        //enum typeEnum {  cycling,  driving,  driving+train,  public_transport,  walking,  coach,  bus,  train,  ferry,  driving+ferry,  cycling+ferry,  };
    
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

    // Boilerplate code needed to wire-up generated code
    RequestTransportation._();

    factory RequestTransportation([updates(RequestTransportationBuilder b)]) = _$RequestTransportation;
    static Serializer<RequestTransportation> get serializer => _$requestTransportationSerializer;
}

class RequestTransportationType extends EnumClass {

  @BuiltValueEnumConst(wireName: "cycling")
  static const RequestTransportationType cycling = _$cycling;
  @BuiltValueEnumConst(wireName: "driving")
  static const RequestTransportationType driving = _$driving;
  @BuiltValueEnumConst(wireName: "driving+train")
  static const RequestTransportationType driving+train = _$driving+train;
  @BuiltValueEnumConst(wireName: "public_transport")
  static const RequestTransportationType publicTransport = _$publicTransport;
  @BuiltValueEnumConst(wireName: "walking")
  static const RequestTransportationType walking = _$walking;
  @BuiltValueEnumConst(wireName: "coach")
  static const RequestTransportationType coach = _$coach;
  @BuiltValueEnumConst(wireName: "bus")
  static const RequestTransportationType bus = _$bus;
  @BuiltValueEnumConst(wireName: "train")
  static const RequestTransportationType train = _$train;
  @BuiltValueEnumConst(wireName: "ferry")
  static const RequestTransportationType ferry = _$ferry;
  @BuiltValueEnumConst(wireName: "driving+ferry")
  static const RequestTransportationType driving+ferry = _$driving+ferry;
  @BuiltValueEnumConst(wireName: "cycling+ferry")
  static const RequestTransportationType cycling+ferry = _$cycling+ferry;

  static Serializer<RequestTransportationType> get serializer => _$requestTransportationTypeSerializer;

  const RequestTransportationType._(String name): super(name);

  static BuiltSet<RequestTransportationType> get values => _$requestTransportationTypeValues;
  static RequestTransportationType valueOf(String name) => _$requestTransportationTypeValueOf(name);
}


