import 'package:jaguar_serializer/jaguar_serializer.dart';



class RequestTimeFilterPostcodeSectorsProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestTimeFilterPostcodeSectorsProperty._internal(this.value);

  static const RequestTimeFilterPostcodeSectorsProperty travelTimeReachable_ = const RequestTimeFilterPostcodeSectorsProperty._internal("travel_time_reachable");
  static const RequestTimeFilterPostcodeSectorsProperty travelTimeAll_ = const RequestTimeFilterPostcodeSectorsProperty._internal("travel_time_all");
  static const RequestTimeFilterPostcodeSectorsProperty coverage_ = const RequestTimeFilterPostcodeSectorsProperty._internal("coverage");
}

class RequestTimeFilterPostcodeSectorsPropertyFieldProcessor implements FieldProcessor<RequestTimeFilterPostcodeSectorsProperty, String> {
    const RequestTimeFilterPostcodeSectorsPropertyFieldProcessor();

    RequestTimeFilterPostcodeSectorsProperty deserialize(String data) {
        switch (data) {
            case "travel_time_reachable": return RequestTimeFilterPostcodeSectorsProperty.travelTimeReachable_;
            case "travel_time_all": return RequestTimeFilterPostcodeSectorsProperty.travelTimeAll_;
            case "coverage": return RequestTimeFilterPostcodeSectorsProperty.coverage_;
            default: throw('Unknown enum value to decode: $data');
        }
    }

    String serialize(RequestTimeFilterPostcodeSectorsProperty item) {
        return item.value;
    }
}

