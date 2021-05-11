import 'package:jaguar_serializer/jaguar_serializer.dart';



class RequestTimeFilterPostcodesProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestTimeFilterPostcodesProperty._internal(this.value);

  static const RequestTimeFilterPostcodesProperty travelTime = const RequestTimeFilterPostcodesProperty._internal('travel_time');
  static const RequestTimeFilterPostcodesProperty distance = const RequestTimeFilterPostcodesProperty._internal('distance');
}

class RequestTimeFilterPostcodesPropertyFieldProcessor implements FieldProcessor<RequestTimeFilterPostcodesProperty, String> {
    const RequestTimeFilterPostcodesPropertyFieldProcessor();

    RequestTimeFilterPostcodesProperty deserialize(String data) {
        switch (data) {
            case 'travel_time': return RequestTimeFilterPostcodesProperty.travelTime;
            case 'distance': return RequestTimeFilterPostcodesProperty.distance;
            default: throw('Unknown enum value to decode: $data');
        }
    }

    String serialize(RequestTimeFilterPostcodesProperty item) {
        return item.value;
    }
}

