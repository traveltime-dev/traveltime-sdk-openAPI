import 'package:jaguar_serializer/jaguar_serializer.dart';



class RequestTimeFilterFastProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestTimeFilterFastProperty._internal(this.value);

  static const RequestTimeFilterFastProperty travelTime_ = const RequestTimeFilterFastProperty._internal("travel_time");
  static const RequestTimeFilterFastProperty fares_ = const RequestTimeFilterFastProperty._internal("fares");
}

class RequestTimeFilterFastPropertyFieldProcessor implements FieldProcessor<RequestTimeFilterFastProperty, String> {
    const RequestTimeFilterFastPropertyFieldProcessor();

    RequestTimeFilterFastProperty deserialize(String data) {
        switch (data) {
            case "travel_time": return RequestTimeFilterFastProperty.travelTime_;
            case "fares": return RequestTimeFilterFastProperty.fares_;
            default: throw('Unknown enum value to decode: $data');
        }
    }

    String serialize(RequestTimeFilterFastProperty item) {
        return item.value;
    }
}

