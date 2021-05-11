import 'package:jaguar_serializer/jaguar_serializer.dart';



class RequestRoutesProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestRoutesProperty._internal(this.value);

  static const RequestRoutesProperty travelTime = const RequestRoutesProperty._internal('travel_time');
  static const RequestRoutesProperty distance = const RequestRoutesProperty._internal('distance');
  static const RequestRoutesProperty fares = const RequestRoutesProperty._internal('fares');
  static const RequestRoutesProperty route = const RequestRoutesProperty._internal('route');
}

class RequestRoutesPropertyFieldProcessor implements FieldProcessor<RequestRoutesProperty, String> {
    const RequestRoutesPropertyFieldProcessor();

    RequestRoutesProperty deserialize(String data) {
        switch (data) {
            case 'travel_time': return RequestRoutesProperty.travelTime;
            case 'distance': return RequestRoutesProperty.distance;
            case 'fares': return RequestRoutesProperty.fares;
            case 'route': return RequestRoutesProperty.route;
            default: throw('Unknown enum value to decode: $data');
        }
    }

    String serialize(RequestRoutesProperty item) {
        return item.value;
    }
}

