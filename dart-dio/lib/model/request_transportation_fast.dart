        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_transportation_fast.g.dart';

abstract class RequestTransportationFast implements Built<RequestTransportationFast, RequestTransportationFastBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'type')
    RequestTransportationFastType get type;
        //enum typeEnum {  public_transport,  driving,  driving+public_transport,  };

    // Boilerplate code needed to wire-up generated code
    RequestTransportationFast._();

    factory RequestTransportationFast([updates(RequestTransportationFastBuilder b)]) = _$RequestTransportationFast;
    static Serializer<RequestTransportationFast> get serializer => _$requestTransportationFastSerializer;
}

class RequestTransportationFastType extends EnumClass {

  @BuiltValueEnumConst(wireName: "public_transport")
  static const RequestTransportationFastType publicTransport = _$publicTransport;
  @BuiltValueEnumConst(wireName: "driving")
  static const RequestTransportationFastType driving = _$driving;
  @BuiltValueEnumConst(wireName: "driving+public_transport")
  static const RequestTransportationFastType driving+publicTransport = _$driving+publicTransport;

  static Serializer<RequestTransportationFastType> get serializer => _$requestTransportationFastTypeSerializer;

  const RequestTransportationFastType._(String name): super(name);

  static BuiltSet<RequestTransportationFastType> get values => _$requestTransportationFastTypeValues;
  static RequestTransportationFastType valueOf(String name) => _$requestTransportationFastTypeValueOf(name);
}


