import 'package:jaguar_serializer/jaguar_serializer.dart';



class RequestTimeFilterPostcodeSectorsProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestTimeFilterPostcodeSectorsProperty._internal(this.value);

  static const RequestTimeFilterPostcodeSectorsProperty travelTimeReachable = const RequestTimeFilterPostcodeSectorsProperty._internal('travel_time_reachable');
  static const RequestTimeFilterPostcodeSectorsProperty travelTimeAll = const RequestTimeFilterPostcodeSectorsProperty._internal('travel_time_all');
  static const RequestTimeFilterPostcodeSectorsProperty coverage = const RequestTimeFilterPostcodeSectorsProperty._internal('coverage');
}

class RequestTimeFilterPostcodeSectorsPropertyFieldProcessor implements FieldProcessor<RequestTimeFilterPostcodeSectorsProperty, String> {
    const RequestTimeFilterPostcodeSectorsPropertyFieldProcessor();

    RequestTimeFilterPostcodeSectorsProperty deserialize(String data) {
        switch (data) {
            case 'travel_time_reachable': return RequestTimeFilterPostcodeSectorsProperty.travelTimeReachable;
            case 'travel_time_all': return RequestTimeFilterPostcodeSectorsProperty.travelTimeAll;
            case 'coverage': return RequestTimeFilterPostcodeSectorsProperty.coverage;
            default: throw('Unknown enum value to decode: $data');
        }
    }

    String serialize(RequestTimeFilterPostcodeSectorsProperty item) {
        return item.value;
    }
}

